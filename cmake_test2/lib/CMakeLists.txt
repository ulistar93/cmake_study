# /lib/CMakeLists.txt

# 정적 라이브러리 shape 를 만든다.
add_library(shape STATIC shape.cc)

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

# pthread 라이브러리를 링크
target_link_libraries(shape PRIVATE pthread)
