@echo off
setlocal

set PATH=%~dp0tools\z88dk\bin;%PATH%
set ZCCCFG=%~dp0tools\z88dk\lib\config

cd %~dp0
if errorlevel 1 exit /B 1

tools\sjasmplus\sjasmplus --sld=basic.sld --syntax=af --lst=basic.lst --dirbol --fullpath basic.asm
if errorlevel 1 exit /B 1

rem zcc +zx -vn -clib=sdcc_iy -startup=5 --list --opt-code-size -Cz"--sna" ^
rem	-o basic -create-app editor\basic.c editor\source.c editor\input.c
rem if errorlevel 1 exit /B 1
