rem --- Component "TLV76750DRVR" ---
newgenasym.exe -i "%cd%\exported\tlv76750drvr" -n "tlv76750drvr"
van.exe -q -nolinks -sironly "%cd%\exported\tlv76750drvr\entity\verilog.v" -lib "exported_lib" -view entity -cdslib "%cd%\exported_lib.lib"

Pause
