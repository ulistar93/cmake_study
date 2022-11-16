#!/bin/bash

echo $PWD
cd ./build
echo "  @@ rm -r ./* @@ "
rm -r ./*
cmake ..

echo ""
echo "  @@ lib/CMakeFiles/shape.dir/link.txt @@"
cat lib/CMakeFiles/shape.dir/link.txt

echo ""
echo "  @@ CMakeFiles/program.dir/link.txt @@"
cat CMakeFiles/program.dir/link.txt

echo ""
echo "  @@ make @@"
make

echo ""
if [[ -f lib/libshape.so ]]
then
  echo "  @@ ldd libshape.so @@"
  ldd lib/libshape.so
else
  echo "  @@ ldd libshape.a @@"
  ldd lib/libshape.a
fi

echo ""
echo "  @@ ldd main @@"
ldd program

echo ""
echo "  @@ runs @@"
./program
