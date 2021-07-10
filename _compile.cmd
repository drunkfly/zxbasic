@echo off

cd %~dp0
if errorlevel 1 exit /B 1

tools\sjasmplus\sjasmplus --sld=basic.sld --syntax=af --lst=basic.lst --dirbol --fullpath basic.asm
if errorlevel 1 exit /B 1
