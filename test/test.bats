#!/usr/bin/env bats

setup_file() {
  :
}

teardown_file() {
  :
}

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

# bats-file
#
# assert_exist assert_not_exist
@test 'some test' {
  assert_exist ''
  assert_not_exist ''
  assert_file_exist
  assert_file_not_exist
  assert_dir_exist
  assert_dir_not_exist
  assert_link_exist
  assert_link_not_exist
  assert_block_exist
  assert_block_not_exist
  assert_character_exist
  assert_character_not_exist
  assert_socket_exist
  assert_socket_not_exist
  assert_fifo_exist
  assert_fifo_not_exist
  assert_file_executable
  assert_file_not_executable
  assert_file_owner
  assert_file_not_owner
  assert_file_permission
  assert_not_file_permission
  assert_file_not_permission
  assert_file_size_equals
  assert_size_zero
  assert_size_not_zero
  assert_file_group_id_set
  assert_file_not_group_id_set
  assert_file_user_id_set
  assert_file_not_user_id_set
  assert_sticky_bit
  assert_no_sticky_bit
  assert_not_sticky_bit
  assert_file_empty
  assert_file_not_empty
  assert_file_contains
  # assert_file_not_contains deprecated
  assert_symlink_to
  assert_not_symlink_to
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
