#!/bin/python3
import sys
v1 = sys.argv[1]
v2 = sys.argv[2]
lines = sys.stdin.readlines()
for line in lines:
    prefix = v1 + "\t" + v2 + "\t"
    if line.startswith(prefix):
        if line.endswith("\n"):
            print(line[len(prefix):-1])
        else:
            print(line[len(prefix):])
        exit(0)
exit(1)
