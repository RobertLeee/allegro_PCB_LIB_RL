rem --- Component "TXS0104EPWR" ---
newgenasym.exe -i "%cd%\exported\txs0104epwr" -n "txs0104epwr"
van.exe -q -nolinks -sironly "%cd%\exported\txs0104epwr\entity\verilog.v" -lib "exported_lib" -view entity -cdslib "%cd%\exported_lib.lib"

Pause
