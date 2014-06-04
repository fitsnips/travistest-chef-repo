#!/usr/bin/env bats

@test "iptables binary is found in PATH" {
  run which iptables
  [ "$status" -eq 0 ]
}
