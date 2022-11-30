cmake_minimum_required(VERSION 3.0)

#set(CMAKE_CXX_FLAGS "-std=c++0x -static")
set(CMAKE_CXX_FLAGS "-std=c++0x")

project( static_bin_test )

add_subdirectory(lib)

add_executable (program main.cc)

# program 에 shape 를 링크
#target_link_libraries(program PUBLIC shape)
target_link_libraries(program shape)
#target_link_libraries(program gcc_s)
#target_link_libraries(program lib/libshape.a)

#add_executable (program main.cc foo.cc)
#target_link_options(program PRIVATE -Wl,-Bstatic -lpthread -Wl,-Bdynamic)
target_link_options(program PRIVATE -static-libgcc -Wl,--verbose)
target_link_options(program PRIVATE -Wl,-Bstatic -Wl,--whole-archive -lpthread)
target_link_options(program PRIVATE -Wl,--no-whole-archive)
#target_link_options(program PRIVATE -static-libgcc -Wl,-Bstatic -Wl,--verbose)

target_compile_options(program PUBLIC -Wall -Werror)
target_include_directories(program PUBLIC ${CMAKE_SOURCE_DIR}/includes)
