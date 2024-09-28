all : benchmark

FLAGS = -O3 -Wall -Wextra -Werror -std=c++2a
# FLAGS = -O0 -g -Wall -Wextra -Werror -std=c++2a -fsanitize=address
COMPILER = clang++

benchmark : main.cpp spmc.hpp Makefile
	$(COMPILER) $(FLAGS)  main.cpp -I smpc.hpp -o benchmark
