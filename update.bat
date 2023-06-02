@echo off
:start
cls
echo ------------------------
echo   AUTO UPDATE by RUSSY
echo ------------------------
echo.
echo 1. SHOW UPDATES
echo 2. UPDATE ALL
echo.
SET /p var= ^> Select an option [1-2]:

if "%var%"=="1" goto supdate
if "%var%"=="2" goto uall
goto err

:supdate
winget update
echo.
pause
cls
goto start

:uall
winget update --all
pause
exit

:err
cls
echo.
echo Select a valid option
echo.
pause
goto start