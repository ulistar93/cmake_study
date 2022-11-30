#include <iostream>
#include <thread>
#include <unistd.h>

#include "shape.h"

Rectangle::Rectangle(int width, int height) : width_(width), height_(height) {}

int Rectangle::GetSize() const {
  std::thread t([this]() { std::cout << "Calulate .." << std::endl; sleep(300); });
  t.join();

  // 직사각형의 넓이를 리턴한다.
  return width_ * height_;
}
