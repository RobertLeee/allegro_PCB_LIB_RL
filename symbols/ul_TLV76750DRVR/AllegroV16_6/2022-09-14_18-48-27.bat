pushd %~dp0
allegro -s CustomShapes.scr
pad_designer -s 2022-09-14_18-48-27_pads.scr
CALL :checkfile "R10300120000000A.pad"
CALL :checkfile "R10430670000021A.pad"
CALL :checkfile "R10260120000000A.pad"
CALL :checkfile "R10220120000000A.pad"
CALL :checkfile "R10180120000000A.pad"
CALL :checkfile "R10390630000019A.pad"
CALL :checkfile "V10200200080000A.pad"
CALL :checkfile "ths18x28x45x10.fsm"
allegro -s 2022-09-14_18-48-27_brd.scr
CALL :checkfile "DRV0006A-IPC_A.psm"
CALL :checkfile "DRV0006A-IPC_B.psm"
CALL :checkfile "DRV0006A-IPC_C.psm"
CALL :checkfile "DRV0006A-MFG.psm"

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
