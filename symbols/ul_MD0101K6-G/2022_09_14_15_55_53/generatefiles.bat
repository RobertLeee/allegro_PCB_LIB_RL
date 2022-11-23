rem --- Component "MD0101K6-G" ---
newgenasym.exe -i "%cd%\exported\md0101k6_g" -n "md0101k6_g"
van.exe -q -nolinks -sironly "%cd%\exported\md0101k6_g\entity\verilog.v" -lib "exported_lib" -view entity -cdslib "%cd%\exported_lib.lib"

Pause
