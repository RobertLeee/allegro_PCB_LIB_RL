pushd %~dp0
allegro -s CustomShapes.scr
pad_designer -s 2022-09-14_17-08-58_pads.scr
CALL :checkfile "RX58Y22D0T.pad"
CALL :checkfile "RX30p5Y18D0T.pad"
CALL :checkfile "RX46p5Y20D0T.pad"
allegro -s 2022-09-14_17-08-58_brd.scr
CALL :checkfile "DBV5.psm"
CALL :checkfile "DBV5-L.psm"
CALL :checkfile "DBV5-M.psm"

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
