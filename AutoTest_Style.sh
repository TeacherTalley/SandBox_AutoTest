#!/bin/bash
pip install cpplint
cd SandBox_AutoTest

srcfiles="main.cpp MessageBox.h"
echo "Source files:" $srcfiles

# for some reason, GitHub Classroom environment does not use cpplint.cfg
# explcitly ignore some style checks
filters=-legal/copyright,-build/header_guard,-whitespace/braces,-runtime/explicit,-whitespace/newline,-whitespace/end_of_line

cpplint --filter=$filters $srcfiles