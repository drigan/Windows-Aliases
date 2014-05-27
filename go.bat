@echo off
for /d /r "." %%a in (*) do if /i "%%~nxa"=="css" set "folderpath=%%a"
cd /d %folderpath%
