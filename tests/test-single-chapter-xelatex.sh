#!/bin/sh

. ./testutils.sh

should_build

pass_if_console_matches "ISU Thesis" "correct document class"

fail_if_console_matches "detected driver: pdftex" "this isn't pdftex"

fail_if_log_matches "Generating title page" "no title page for single chapter"

fail_if_console_matches "Package nag Warning" "Looking for complains by nag"
pass_if_console_matches "No complaints by nag." "Nag package prints 'no complaints' message"

