pushd %~dp0
allegro -s CustomShapes.scr
pad_designer -s 2022-09-14_15-55-50_pads.scr
CALL :checkfile "RX32Y10D0T.pad"
CALL :checkfile "RX148Y175D0T.pad"
CALL :checkfile "RX28Y10D0T.pad"
CALL :checkfile "RX36Y10D0T.pad"
allegro -s 2022-09-14_15-55-50_brd.scr
CALL :checkfile "DFN18_5X5_MCH.psm"
CALL :checkfile "DFN18_5X5_MCH-L.psm"
CALL :checkfile "DFN18_5X5_MCH-M.psm"

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
