all : benchmark

FLAGS = -O3 -Wall -Wextra -Werror -std=c++2a # -D_FORTIFY_SOURCE=2
COMPILER = clang++

benchmark : main.cpp spmc.hpp Makefile
	$(COMPILER) $(FLAGS)  main.cpp -I smpc.hpp -o benchmark
