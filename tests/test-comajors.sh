#!/bin/sh


. ./testutils.sh

should_build

pass_if_console_matches "ISU Thesis" "correct document class"

# Title page should contain 'Co-majors:'
pass_if_command_matches "text_of_page 1 | grep Co-majors: | wc -l" "1" "Title page should contain 'Co-majors:'"

