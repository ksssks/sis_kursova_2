cmake_minimum_required(VERSION 3.10)
project(Calculator)

set(CMAKE_CXX_STANDARD 11)

# Створюємо бібліотеку
add_library(calculator STATIC calculator.cpp)

# Створюємо виконуваний файл
add_executable(calculator_exec main.cpp)

# Лінкуємо бібліотеку до виконуваного файлу
target_link_libraries(calculator_exec calculator)