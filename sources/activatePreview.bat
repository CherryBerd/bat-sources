@echo off
color 0
setlocal
call :setESC

echo %ESC%[35mKonnichiwa, senpai, i will help with Windows activation in a matter of time![0m
>nul timeout /nobreak 10
echo %ESC%[44mActivating Windows... Please wait[0m
color 0
echo [Preview]
>nul timeout /nobreak 10
cls
echo [Preview]
>nul timeout /nobreak 10
cls
echo [Preview]
>nul timeout /nobreak 10
cls

echo %ESC%[32mWindows activation completed. Press any key to exit.[0m
echo Code was written by Cherry / Ruslan.

pause

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0