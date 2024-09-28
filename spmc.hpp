#pragma once
#include <cstdint>
#include <memory>
#include <cassert>
#include <iostream>

using u32 = uint32_t;

template <typename T>
class SPMC {
  std::unique_ptr<T[]> _buffer;
  u32 _size;
  static constexpr int cache_line_size = 128;  // 128 on M2, 64 on x86
  // static constexpr int cache_line_size = std::hardware_destructive_interference_size;  // not working on mac
  alignas(cache_line_size) std::atomic<u32> _head;
  alignas(cache_line_size) std::atomic<u32> _tail;
  alignas(cache_line_size) u32 _tail_local;

  inline u32 increment(u32 n) {
    return (n + 1 == _size) ? 0: n + 1;
  }

 public:
  SPMC(u32 size)
      : _size(size)  // one empty trailing element
  {
    _buffer = std::make_unique<T[]>(size+1);
    _head.store(0, std::memory_order_relaxed);
    _tail.store(0, std::memory_order_relaxed);
    _tail_local = 0;
  }

  bool tryPush(const T& value) {
    // u32 tail = _tail .load(std::memory_order_acquire);
    u32 tail = _tail_local;
    u32 new_tail = increment(tail);
    // we compare new_tail so that we keep one empty element at
    // the end
    if (new_tail == _head.load(std::memory_order_acquire)) {
      return false;
    }
    _buffer[tail] = value;
    _tail.store(new_tail, std::memory_order_release);
    _tail_local = new_tail;
    return true;
  }

  bool tryPop(T & result) {
    while (true) {
      u32 head = _head.load(std::memory_order_relaxed);
      if (head == _tail.load(std::memory_order_acquire)) {
        return false;
      }
      result = _buffer[head];
      if (_head.compare_exchange_weak(head, increment(head),
                                      std::memory_order_release,
                                      std::memory_order_acquire)) {
        return true;
      }
    }
  }
};
