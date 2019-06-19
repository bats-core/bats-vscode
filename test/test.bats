#!/usr/bin/env bats

load test_helper

##
# bats-support
#
@test 'batslib_err() <message...>: displays <message...>' {
  run batslib_err 'm1' 'm2'
  [ "$status" -eq 0 ]
  [ "$output" == 'm1 m2' ]
}

@test 'batslib_count_lines() <string>: displays the number of lines in <string>' {
  run batslib_count_lines $'a\nb\nc\n'
  [ "$status" -eq 0 ]
  [ "$output" == '3' ]
}

@test 'batslib_is_single_line() <string...>: returns 0 if all <string...> are single-line' {
  run batslib_is_single_line 'a' $'b\n' 'c'
  [ "$status" -eq 0 ]
}

@test 'batslib_get_max_single_line_key_width() <pair...>: displays the length of the longest key' {
  local -ar pairs=( 'k _1'  'v 1'
                    'k 2'   'v 2'
                    'k __3' 'v 3' )
  run batslib_get_max_single_line_key_width "${pairs[@]}"
  [ "$status" -eq 0 ]
  [ "$output" == '5' ]
}

@test 'batslib_print_kv_single() <width> <pair...>: displays <pair...> in two-column format with <width> wide key column' {
  local -ar pairs=( 'k _1'  'v 1'
                    'k 2 '  'v 2'
                    'k __3' 'v 3' )
  run batslib_print_kv_single 5 "${pairs[@]}"
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" == '3' ]
  [ "${lines[0]}" == 'k _1  : v 1' ]
  [ "${lines[1]}" == 'k 2   : v 2' ]
  [ "${lines[2]}" == 'k __3 : v 3' ]
}

@test 'batslib_print_kv_multi() <pair...>: displays <pair...> in multi-line format' {
  local -ar pairs=( 'k _1'  'v 1'
                    'k 2'   $'v 2-1\nv 2-2'
                    'k __3' 'v 3' )
  run batslib_print_kv_multi "${pairs[@]}"
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" == '7' ]
  [ "${lines[0]}" == 'k _1 (1 lines):' ]
  [ "${lines[1]}" == 'v 1' ]
  [ "${lines[2]}" == 'k 2 (2 lines):' ]
  [ "${lines[3]}" == 'v 2-1' ]
  [ "${lines[4]}" == 'v 2-2' ]
  [ "${lines[5]}" == 'k __3 (1 lines):' ]
  [ "${lines[6]}" == 'v 3' ]
}

@test 'batslib_print_kv_single_or_multi() <width> <pair...>: displays <pair...> in two-column format if all values are one line long' {
  local -ar pairs=( 'k _1'  'v 1'
                    'k 2 '  'v 2'
                    'k __3' 'v 3' )
  run batslib_print_kv_single_or_multi 5 "${pairs[@]}"
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" == '3' ]
  [ "${lines[0]}" == 'k _1  : v 1' ]
  [ "${lines[1]}" == 'k 2   : v 2' ]
  [ "${lines[2]}" == 'k __3 : v 3' ]
}

@test 'batslib_prefix() <prefix>: prefixes each line of the input with <prefix>' {
  run bash -c "source '${TEST_MAIN_DIR}/load.bash'
               printf 'a\nb\nc\n' | batslib_prefix '_'"
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 3 ]
  [ "${lines[0]}" == '_a' ]
  [ "${lines[1]}" == '_b' ]
  [ "${lines[2]}" == '_c' ]
}

@test 'batslib_mark() <mark> <index>: marks the <index>-th line of the input with <mark>' {
  run bash -c "source '${TEST_MAIN_DIR}/load.bash'
               printf ' a\n b\n c\n' | batslib_mark '>' 0"
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 3 ]
  [ "${lines[0]}" == '>a' ]
  [ "${lines[1]}" == ' b' ]
  [ "${lines[2]}" == ' c' ]
}

@test 'batslib_decorate() <title>: encloses the input in a footer line and a header line containing <title>' {
  run bash -c "source '${TEST_MAIN_DIR}/load.bash'
               echo 'body' | batslib_decorate 'title'"
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 3 ]
  [ "${lines[0]}" == '-- title --' ]
  [ "${lines[1]}" == 'body' ]
  [ "${lines[2]}" == '--' ]
}

@test 'fail() <message>: returns 1 and displays <message>' {
  run fail 'message'
  [ "$status" -eq 1 ]
  [ "$output" == 'message' ]
}

# Test functions
test_func_lvl_2() {
  test_func_lvl_1 "$@"
}
@test 'batslib_is_caller() <function>: returns 0 if the current function was called directly from <function>' {
  run test_func_lvl_1 test_func_lvl_1
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}

##
# bats-assert
#
@test 'assert() <expression>: returns 0 if <expression> evaluates to TRUE' {
  run assert true
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}

@test 'assert_equal() <actual> <expected>: returns 0 if <actual> equals <expected>' {
  run assert_equal 'a' 'a'
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}

@test "assert_success(): returns 1 and displays details if \`\$status' is not 0" {
  run bash -c 'echo "a"
               exit 1'
  run assert_success
  [ "$status" -eq 1 ]
  [ "${#lines[@]}" -eq 4 ]
  [ "${lines[0]}" == '-- command failed --' ]
  [ "${lines[1]}" == 'status : 1' ]
  [ "${lines[2]}" == 'output : a' ]
  [ "${lines[3]}" == '--' ]
}

@test "assert_failure() <status>: returns 0 if \`\$status' equals <status>" {
  run bash -c 'exit 1'
  run assert_failure 1
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}

@test "assert_output() <expected>: returns 0 if <expected> equals \`\$output'" {
  run echo 'a'
  run assert_output 'a'
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}

@test 'refute_output() <unexpected>: performs literal matching by default' {
  run echo 'a'
  run refute_output '*'
  [ "$status" -eq 0 ]
}

@test "assert_line() <expected>: returns 0 if <expected> is a line in \`\${lines[@]}'" {
  run printf 'a\nb\nc'
  run assert_line 'b'
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}

@test "refute_line() <unexpected>: returns 0 if <unexpected> is not a line in \`\${lines[@]}'" {
  run printf 'a\nb\nc'
  run refute_line 'd'
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}

@test 'refute() <expression>: returns 0 if <expression> evaluates to FALSE' {
  run refute false
  [ "$status" -eq 0 ]
  [ "${#lines[@]}" -eq 0 ]
}