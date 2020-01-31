cmake_minimum_required(VERSION 3.16)

project(TestGCC
    VERSION 1.0
    LANGUAGES C CXX)

enable_testing()

add_executable(test_c src/test_c.c)
add_test(test_c test_c)

add_executable(test_cpp src/test_cpp.cpp)
add_test(test_cpp test_cpp)
