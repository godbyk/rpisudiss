#!/bin/sh


. ./testutils.sh

should_build

pass_if_console_matches "ISU Thesis" "correct document class"

# Title page should contain 'Co-major Professor' twice
pass_if_command_matches "text_of_page 1 | grep Co-major.Professor | wc -l" "2" "Title page should contain 'Co-major Professor' twice"

