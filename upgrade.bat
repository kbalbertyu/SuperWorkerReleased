@echo off

title Upgrade Program

set ROOT_DIR=%cd%
echo Root directory: %ROOT_DIR%

git.exe --version
set GIT_PATH=git.exe
if errorlevel 0 (
    set GIT_PATH=%ROOT_DIR%\bin\PortableGit\bin\git.exe
)
echo %GIT_PATH%
%GIT_PATH% --version

echo Downloading upgrade files...
git pull origin master

echo Program files are downloaded successfully
timeout 7