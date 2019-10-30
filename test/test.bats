#!/usr/bin/env bats

##
# Simple test file for syntax coloration check on VSCode.
#

##
# bats-core
#
# load run skip
# output status lines

load test_helper
@test 'some test' {
  run foo
  skip echo "${var}"
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "${some_var}" ]
  [ "${lines[@]}" = 1 ]
  [ "$output" == 'some value' ]
}

##
# bats-support
#
# batslib_err batslib_count_lines batslib_is_single_line
# batslib_get_max_single_line_key_width batslib_print_kv_single
# batslib_print_kv_multi batslib_print_kv_single_or_multi
# batslib_prefix batslib_mark batslib_decorate
# fail

@test 'some test' {
  run batslib_err 'test'
}
@test 'some test' {
  run batslib_count_lines $'a\nb\nc\n'
}
@test 'some test' {
  run batslib_is_single_line 'a' $'b\n' 'c'
}
@test 'some test' {
  run batslib_get_max_single_line_key_width "${pairs[@]}"
}
@test 'some test' {
  run batslib_print_kv_single 5 "${pairs[@]}"
}
@test 'some test' {
  run batslib_print_kv_multi "${pairs[@]}"
}
@test 'some test' {
  run batslib_print_kv_single_or_multi 5 "${pairs[@]}"
}
@test 'some test' {
  batslib_prefix '_'
  run bash -c "printf 'a' | batslib_prefix '_'"
}
@test 'some test' {
  batslib_mark '>'
  run bash -c "' a\n b\n c\n' | batslib_mark '>' 0"
}
@test 'some test' {
  batslib_decorate 'title'
  run bash -c "echo 'body' | batslib_decorate 'title'"
}
@test 'some test' {
  run fail 'message'
}

##
# bats-assert
#
# assert assert_equal assert_success assert_failure assert_output
# refute_output assert_line refute_line refute

@test 'some test' {
  run assert true
}
@test 'some test' {
  run assert_equal 'a' 'a'
}
@test 'some test' {
  run assert_success
}
@test 'some test' {
  run assert_failure 1
}
@test 'some test' {
  run assert_output 'a'
}
@test 'some test' {
  run refute_output '*'
}
@test 'some test' {
  run assert_line 'b'
}
@test 'some test' {
  run refute_line 'd'
}
@test 'some test' {
  run refute false
}

##
# bats-mock
#
# stub unstub

load helpers/mocks/stub
setup() {
  stub function_to_stub "stubbed!"
}
teardown() {
  unstub function_to_stub
}
