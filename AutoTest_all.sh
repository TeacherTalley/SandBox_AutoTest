#!/bin/bash
repo="SandBox_AutoTest"

echo
echo "#################### START: AutoTest Results #####################"
cd $repo
echo
echo "--- Checking code format (cpplint) ---"
./AutoTest_Style.sh
echo
cd build
echo
echo "--- Checking main output (diff) ---"
./main > test_main_output.txt
diff ../AutoTest_main_output.txt test_main_output.txt
echo
echo "--- Unit testing (googletest - all tests at once) ---"
ctest
echo
echo "--- Unit testing (single test at a time) ---"
./AutoTest_gtests --gtest_filter=MessageBox.SendAndReceive
./AutoTest_gtests --gtest_filter=MessageBox.OutOfRange
./AutoTest_gtests --gtest_filter=MessageBox.FullAndEmpty
./AutoTest_gtests --gtest_filter=MessageBox.CountAndSize
./AutoTest_gtests --gtest_filter=MessageBox.Print
echo
cd ..
echo "#################### END: AutoTest Results   #####################"
echo
