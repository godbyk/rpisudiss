#!/bin/sh


. ./testutils.sh

should_build

pass_if_console_matches "ISU Thesis" "correct document class"

# Title page should contain 'Major Professor' only once
pass_if_command_matches "text_of_page 1 | grep Major.Professor | wc -l" "1" "Title page should contain 'Major Professor' only once"

