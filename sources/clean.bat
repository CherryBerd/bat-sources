@title Cyber Cleaner 3000 (Administrator only)

color 17
setlocal
call :setESC
>nul timeout /nobreak 5
@echo off
color 00
cls
>nul timeout /nobreak 10
color 17
echo %ESC%[104m Cyber Cleaner 3000 / code by R. Berdnikov / Cherry
>nul timeout /nobreak 5
DISM.exe /Online /Cleanup-image /Restorehealth

echo %ESC%[100m Now let's check if everything is fine with the computer, or it has suffered a fiasco
>nul timeout /nobreak 5
sfc /scannow

echo %ESC%[105m Let's get out of here...

>nul timeout /nobreak 60


:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0
