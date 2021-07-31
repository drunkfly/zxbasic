@echo off
setlocal

set PATH=%~dp0tools\z88dk\bin;%PATH%
set ZCCCFG=%~dp0tools\z88dk\lib\config

cd %~dp0
if errorlevel 1 exit /B 1

rem tools\sjasmplus\sjasmplus --sld=basic.sld --syntax=af --lst=basic.lst --dirbol --fullpath basic.asm
rem if errorlevel 1 exit /B 1

zcc +zx -vn -clib=sdcc_iy -startup=5 --list --opt-code-size -Cz"--sna" ^
	-o basic -create-app editor\basic.c editor\source.c editor\input.c
if errorlevel 1 exit /B 1
