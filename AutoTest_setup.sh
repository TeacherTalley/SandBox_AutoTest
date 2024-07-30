#!/bin/bash
echo
echo "#################### START: AutoTest Setup #####################"
echo
echo "--- Copy student source from parent directory ---"
cp ../*.cpp .
cp ../*.h .
echo "--- Building program ---"
cmake -S . -B build
cmake --build build
echo "##################### END: AutoTest Setup  #####################"
echo
