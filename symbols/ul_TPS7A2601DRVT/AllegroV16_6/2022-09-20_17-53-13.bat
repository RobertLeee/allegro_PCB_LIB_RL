pushd %~dp0
allegro -s CustomShapes.scr
pad_designer -s 2022-09-20_17-53-13_pads.scr
CALL :checkfile "R10120180000000A.pad"
CALL :checkfile "R10390630000020A.pad"
CALL :checkfile "V10200200080000A.pad"
CALL :checkfile "ths18x28x45x10.fsm"
allegro -s 2022-09-20_17-53-13_brd.scr
CALL :checkfile "DRV0006A.psm"
CALL :checkfile "DRV0006A_NV.psm"

exit

:checkfile
@echo off
dir %1 1>nul 2>nul
if errorlevel 1 goto checkfile_err
goto end
:checkfile_err
echo Expected file %1 not found
pause > nul
exit
:end
@echo on
