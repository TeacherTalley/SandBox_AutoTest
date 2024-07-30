# MessageBox_AutoTest
MessageBox Auto Testing Suite

This repository contains the auto test suite for the Message Box example program
using the GitHub Classroom autograding capabilities.

The strategy is to install this repository into the student's submitted repository for testing.
To prevent overrides of the code by students, the **MessageBox** repository should have a
**.gitignore** file that includes the pattern "*AutoTest*", but the **.gitignore** file for
this repository (**MessageBod_AutoTest**) should **not** contain that pattern.

To configure the autograding, take the following steps in the **MessageBox* repository
(**NOT** the **MessageBox_AutoTest** repository).

Under the autograding setup:

Test 1: 
- Name: AutoTest Setup - Install test code, copy student source, build student and test code
- Setup: git clone https://github.com/TeacherTalley/MessageBox_AutoTest.git
- Run: cd MessageBox_AutoTest && ./AutoTest_setup.sh
- Points: 0

Test 2:
- Name: Main Output Test - Run student main and compare output to test output
- Setup: 
- Run: ./MessageBox_AutoTest/AutoTest_OutputTest.sh
- Points: 10

Test 3:
- Name: Coding Style Test - Run cpplint on student code
- Setup: 
- Run: ./MessageBox_AutoTest/AutoTest_Style.sh
- Points: 10

Test 4:
- Name: SendAndReceive Test
- Setup: 
- Run: ./MessageBox_AutoTest/AutoTest_gtest.sh MessageBoxTest.SendAndReceive
- Points: 20

Test 5:
- Name: FullAndEmpty Test
- Setup: 
- Run: ./MessageBox_AutoTest/AutoTest_gtest.sh MessageBoxTest.FullAndEmpty
- Points: 20

Test 6:
- Name: CountAndSize Test
- Setup: 
- Run: ./MessageBox_AutoTest/AutoTest_gtest.sh MessageBoxTest.CountAndSize
- Points: 20

Test 7:
- Name: Print Test
- Setup: 
- Run: ./MessageBox_AutoTest/AutoTest_gtest.sh MessageBoxTest.Print
- Points: 20