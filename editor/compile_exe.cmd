@echo off
setlocal
set PATH=C:\Work\mingw810_32\bin;%PATH%
gcc -Wall -Wextra -g -o basic.exe basic.c source.c input.c
rem gdb basic.exe
