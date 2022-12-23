#ping 192.168.0.33  -t

# Lista komputerów do sprawdzenia
$computers = @("WNADB4WPL32", "WPAD8N30P02", "WNADBQT12W2", "WPAD71D5LY1", "WNADJNYM042", "WPAD95SHQK2")

# Dla każdego komputera z listy
foreach ($computer in $computers) {
  # Wyślij polecenie ping i sprawdź odpowiedź
  if (Test-Connection -ComputerName $computer -Count 1 -Quiet) {
    Write-Host "$computer jest dostępny"
  }
  else {
    Write-Host "$computer jest niedostępny"
  }
}
