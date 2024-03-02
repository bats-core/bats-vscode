#!/usr/bin/env bash

Echo "START"
var="Test var"
echo $var
echo "$var"
echo "${var}"
echo `${var}`
echo "lorem $var ipsum"
echo "lorem ${var} ipsum"
echo "${lines[0]}"
echo "${#lines[@]}"
Echo "END"