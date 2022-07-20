@echo off

setlocal
call :setESC
echo %ESC%[35m Konnichiwa, senpai, i will help with Windows activation in a matter of time![0m
echo %ESC%[44m Activating Windows... Please wait[0m

slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cls
slmgr /skms kms.digiboy.ir
cls
slmgr /ato
cls

echo %ESC%[32m Windows activation completed. Press any key to exit.[0m
echo Code was written by Cherry / Ruslan.

pause

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0