@echo off
setlocal

set PATH=%~dp0..\tools\z88dk\bin;%PATH%
set ZCCCFG=%~dp0..\tools\z88dk\lib\config

cd %~dp0
if errorlevel 1 exit /B 1

zcc +zx -vn -clib=sdcc_iy -startup=5 --opt-code-size ^
	-S -create-app basic.c source.c input.c
if errorlevel 1 exit /B 1
