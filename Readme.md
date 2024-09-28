# Concurrency Library: Lock-Free Multi-Producer Single-Consumer Queue (Ring Buffer)


## Introduction


Recently, I've been exploring concurrency and developed a lock-free implementation of a multi-producer single-consumer queue (ring buffer) in C++.


## Features


- Lock-free design for high-performance concurrency
- Multi-producer single-consumer queue (ring buffer) architecture
- Implemented in C++ 
- std::destructive_interference_size is not defined in AppleClang, so I set the chache_line_size to 128 (Mac M2's cache line size). You can set it to 64 for x86, build it should probably work as it is now.


## Getting Started


1. Clone the repository.
2. Run make to compile the library and examples.


## Examples


- Test: main.cpp includes a test case to verify the queue's functionality.
- Benchmark: main.cpp also includes a benchmark to measure the queue's performance.


## Implementation Details


- The queue uses a ring buffer data structure.
- Multiple producers can concurrently enqueue elements.
- A single consumer can dequeue elements.
