@echo off
cd %~dp0
set message=%~1
if "%message%" == "" set message=Update Post

git add -A
git commit -m "%date:~0,10% %message%"
git push
