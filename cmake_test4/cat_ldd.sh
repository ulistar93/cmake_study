#!/bin/bash

cd ./build
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

