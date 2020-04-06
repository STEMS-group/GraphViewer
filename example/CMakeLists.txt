cmake_minimum_required(VERSION 3.15)
project(example)

set(CMAKE_CXX_STANDARD 14)

include_directories(lib)
include_directories(resources)
add_executable(example main.cpp lib/connection.cpp lib/graphviewer.cpp)