#!/bin/bash
echo Testing: $1
./SandBox_AutoTest/build/AutoTest_gtests --gtest_filter=$1
