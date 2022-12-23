# Ustawienie nazwy programu, który chcemy zainstalować.
$programName = "D:\Instrukcje\BAT\AcroRdrDC1900820071_pl_PL.exe"

# Uruchomienie polecenia Start-Process z opcją -Force, aby zainstalować program.
Install-Package -Name $programName -Force

# Potwierdzenie zakończenia instalacji programu.
Write-Host "Zainstalowano program $programName."