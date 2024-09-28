#include "spmc.hpp"
#include <iostream>
#include <chrono>
#include <thread>

bool test() {
  int capacity = 100;
  SPMC<int> spmc(capacity);

  std::vector<int> out(capacity);
  std::atomic<int> last{0};

  std::array<std::thread, 5> consumers;
  for (auto &consumer : consumers) {
    consumer = std::thread([&](){
      while (true) {
        int value;
        bool success = spmc.tryPop(value);
        if (last == capacity) {
          // std::cout << "thread exited" << std::endl;
          break;
        }
        if (success) {
          auto pos = last.fetch_add(1);
          out[pos] = value;
        }
      }
    });
  }

  // std::cout << "producer started" << std::endl;
  for (int i = 0; i < capacity; i++) {
    auto success = spmc.tryPush(i);
    if (!success) {
      std::cout << "Failed to push " << i << std::endl;
      return false;
    }
  }

  for (auto &consumer : consumers) {
    consumer.join();
  }
  std::sort(out.begin(), out.end());
  for (int i = 0; i < capacity; i++) {
    if (out[i] != i) {
      std::cout << "Expected " << i << " but got " << out[i] << std::endl;
      return false;
    }
  }
  return true;
}

auto main(int argc, char *argv[]) -> int {

  auto pass = test();
  if (!pass) {
    std::cout << "Test failed" << std::endl;
    return 1;
  }
  std::cout << "pass" << std::endl;

  int capacity = 100;
  if (argc > 1) {
    capacity = std::stoi(argv[1]);
  }
  SPMC<int> spmc(capacity);

  srand(0);
  auto producer = std::thread([&](){

    // count of writes
    size_t count = 0;
    // I am taking the average of measurements to get a more reliable result
    double sum_stamps = 0;
    size_t stamp_count = 0;

    auto start = std::chrono::high_resolution_clock::now();
    while (true) {
      auto value = rand();
      bool success = spmc.tryPush(value);
      if (success) {
        count++;
        // bool isDivisible = count > 0 && count % (1 << 20) == 0;
        bool isDivisible = ((count & ((1 << 20) - 1)) == 0);
        if (isDivisible) {
          auto end = std::chrono::high_resolution_clock::now();
          auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
          stamp_count++;
          auto bandwidth = count / (double)duration;
          sum_stamps += bandwidth;
          auto avg = sum_stamps / stamp_count;
          std::cout << "Bandwidth = " << count / (double)duration << " [writes/ms] (avg = " << avg << ")" << std::endl;
          // restart the count/timer
          count = 0;
          start = std::chrono::high_resolution_clock::now();
        }
      }
    }
  });

  std::array<std::thread, 10> consumers;
  for (auto &consumer : consumers) {
    consumer = std::thread([&](){
      // size_t count = 0;
      while (true) {
        int value;
        bool success = spmc.tryPop(value);
        if (success) {
          // std::cout << value << std::endl;
          // count++;
        }

      }
    });
  }

  producer.join();
  for (auto &consumer : consumers) {
    consumer.join();
  }


  return 0;
}
