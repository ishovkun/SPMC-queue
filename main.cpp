#include "spmc.hpp"
#include <iostream>
#include <chrono>
#include <thread>

auto main(int argc, char *argv[]) -> int {

  int capacity = 100;
  if (argc > 1) {
    capacity = std::stoi(argv[1]);
  }
  SPMC<int> spmc(capacity);

  srand(0);
  auto producer = std::thread([&](){
    double sum_stamps = 0;
    size_t stamp_count = 0;

    size_t count = 0;
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
          std::cout << "Bandwidth = " << count / (double)duration << " [writes/s] (avg = " << avg << ")" << std::endl;
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
