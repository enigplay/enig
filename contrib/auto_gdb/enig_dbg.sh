#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.enigcore/enigd.pid file instead
enig_pid=$(<~/.enigcore/testnet3/enigd.pid)
sudo gdb -batch -ex "source debug.gdb" enigd ${enig_pid}
