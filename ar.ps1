# Pobierz najnowszą wersję programu Adobe Reader w języku polskim
$url = "https://get.adobe.com/pl/reader/direct/readerdc.exe"
$output = "C:\Temp\readerdc.exe"

Invoke-WebRequest -Uri $url -OutFile $output

# Uruchom instalator programu Adobe Reader
Start-Process -FilePath $output -ArgumentList "/sAll /rs /msi EULA_ACCEPT=YES"

# Usuń plik instalatora po zakończeniu instalacji
Remove-Item -Path $output