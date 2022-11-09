cmake_minimum_required (VERSION 3.21)
project (PROJECT)
enable_testing()

add_executable(fm src/fm.c)
add_test(fm fm)

