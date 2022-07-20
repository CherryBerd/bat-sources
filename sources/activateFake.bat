@echo off

setlocal
call :setESC
echo %ESC%[0m
echo %ESC%[35mKonnichiwa, senpai, i will help with Windows activation in a matter of time!
echo %ESC%[37m
echo %ESC%[44mActivating Windows... Please wait[0m
>nul timeout /nobreak 5
"\include\videoplayback.mp4"
echo %ESC%[32mCongratulations! It just was a prank! I hope everything is in order with your computer, that's why I opened one video clip for safety.
echo Code was written by Cherry / Ruslan.
echo %ESC%[40m
echo %ESC%[30m
pause

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0