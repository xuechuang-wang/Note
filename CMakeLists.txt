cmake_minimum_required(VERSION 3.0.0)
project(c++practice VERSION 0.1.0)

include(CTest)
enable_testing()

add_library(library adk.cpp)

add_executable(c++practice practice1.cpp)
target_link_libraries(c++practice library)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
