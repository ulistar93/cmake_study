# /lib/CMakeLists.txt

# 정적 라이브러리 shape 를 만든다.
#add_library(shape STATIC shape.cc)
add_library(shape SHARED shape.cc)
#set(CMAKE_POSITION_INDEPENDENT_CODE OFF)

# .cc가 여럿일때 재귀적 탐색 & 추가
#file(GLOB_RECURSE SRC_FILES CONFIGURE_DEPENDS
#  ${CMAKE_CURRENT_SOURCE_DIR}/*.cc
#)
#add_library(shape STATIC ${SRC_FILES})
# 재귀가 싫으면 GLOB_RECURSE -> GLOB
# CONFIGURE_DEPENDS = GLOB 으로 불러오는 파일 목록이 이전과 다를 경우, CMake 를 다시 실행해서 빌드 파일을 재생성


# 해당 라이브러리 컴파일 시 사용할 헤더파일 경로
target_include_directories(shape PUBLIC ${CMAKE_SOURCE_DIR}/includes)

# 해당 라이브러리를 컴파일 할 옵션
target_compile_options(shape PRIVATE -Wall -Werror)
#target_compile_options(shape PRIVATE -Wall -Werror -static) # x

#target_link_options(shape PUBLIC -Wl,--whole-archive)
#target_link_options(shape PUBLIC -Wl,--whole-archive -Wl,-Bstatic)
#target_link_options(shape PUBLIC -Wl,--whole-archive -Wl,-Bstatic)
#target_link_options(shape PUBLIC -Wl,--whole-archive -Wl,-Bstatic)
#target_link_options(shape PUBLIC -Wl,--whole-archive -Wl,--as-needed)
#target_link_options(shape PUBLIC -Wl,--as-needed -Wl,-Bstatic)
#target_link_options(shape PRIVATE -Wl,--as-needed -Wl,-Bstatic)
#target_link_options(shape PRIVATE -Wl,-Bstatic -lpthread -Wl,-Bdynamic)
#target_link_options(shape PRIVATE -static)
#target_link_options(shape PUBLIC -static)
#target_link_options(shape PRIVATE -Wl,-Bstatic)
#target_link_options(shape PUBLIC -Wl,-Bstatic)
#target_link_directories(shape PUBLIC /home/ycm/linaro/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/arm-linux-gnueabi/libc/lib)
target_link_options(shape PRIVATE -Wl,-rpath,/home/ycm/linaro/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/arm-linux-gnueabi/libc/lib)
target_link_options(shape PRIVATE -L/home/ycm/linaro/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/arm-linux-gnueabi/libc/lib)
#target_link_options(shape PUBLIC -Wl,-rpath,/home/ycm/linaro/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/arm-linux-gnueabi/libc/lib)
#target_link_options(shape PUBLIC -L/home/ycm/linaro/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/arm-linux-gnueabi/libc/lib)

# pthread 라이브러리를 링크
#target_link_libraries(shape PRIVATE rt pthread)
target_link_libraries(shape PRIVATE pthread)
#target_link_libraries(shape PUBLIC pthread)
#target_link_libraries(shape INTERFACE pthread)
#target_link_libraries(shape INTERFACE /usr/lib/x86_64-linux-gnu/libpthread.a)
#target_link_libraries(shape PUBLIC /usr/lib/x86_64-linux-gnu/libpthread.a)
#target_link_libraries(shape PUBLIC gcc_s)
#target_link_libraries(shape PRIVATE /home/ycm/linaro/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/arm-linux-gnueabi/libc/lib/libpthread-2.25.so)
#target_link_libraries(shape PRIVATE pthread)
#target_link_libraries(shape PRIVATE pthread-2.25)
#target_link_libraries(shape PRIVATE libpthread-2.25.so)
