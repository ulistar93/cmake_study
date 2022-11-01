cmake_minimum_required(VERSION 3.0)

project(
  ModooCode
  VERSION 0.1
  DESCRIPTION "test example"
  LANGUAGES CXX)

add_subdirectory(lib)

add_executable (program main.cc)

# program 에 shape 를 링크
#target_link_libraries(program PUBLIC shape)
target_link_libraries(program shape)

#add_executable (program main.cc foo.cc)

target_compile_options(program PUBLIC -Wall -Werror)
target_include_directories(program PUBLIC ${CMAKE_SOURCE_DIR}/includes)
