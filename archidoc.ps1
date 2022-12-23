SystemPropertiesComputerName "otwieram nazwe komputera"

ipconfig /all 		> ipconfig.txt
serialnumber.exe	> serialnumber.txt
reg add "HKU\.Default\Control Panel\International" /f /v sShortDate /t REG_SZ /d "yyyy-MM-dd" >nul
$sn = Get-WmiObject win32_bios | select -expand serialnumber
$nowa = “WPAD” + $sn
Rename-Computer -NewName $nowa -Force
pause