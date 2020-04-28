#!/bin/bash -eu

echo "=========================="
echo "=== WITHOUT BUILD TAGS ==="
echo "=========================="
gopls -rpc.trace -v imports -d ./main.go

echo
echo "======================="
echo "=== WITH BUILD TAGS ==="
echo "======================="
GOFLAGS="-tags=dummy" gopls -rpc.trace -v imports -d ./main.go
