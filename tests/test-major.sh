#!/bin/sh


. ./testutils.sh

should_build

pass_if_console_matches "ISU Thesis" "correct document class"

# Title page should contain 'Major:'
pass_if_command_matches "text_of_page 1 | grep Major: | wc -l" "1" "Title page should contain 'Major:'"

