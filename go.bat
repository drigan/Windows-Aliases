:: Quick script to search subdirectories and cd to the first on that matches a passed in variable.
@echo off
set foldertofind=%1
set folderpath=%CD%
for /d /r "." %%a in (*) do if /i "%%~nxa"=="%foldertofind%" if /i not "%folderpath%~nxa"=="%foldertofind%" set "folderpath=%%a"
cd /d %folderpath%
