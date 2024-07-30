#!/bin/bash
echo Testing: $1
./MessageBox_AutoTest/build/AutoTest_gtests --gtest_filter=$1
