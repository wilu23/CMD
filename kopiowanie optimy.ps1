# Nazwa pliku z listą komputerów
$computersFile = "D:\Spis kompow\Ksiegowe\computers.txt"

# Ścieżka do pliku lub katalogu, który ma zostać skopiowany
$sourcePath = "C:\Users\kamil.wileczek\Downloads"

# Ścieżka do katalogu, w którym mają zostać skopiowane pliki
$destinationPath = "c$"

# Wczytaj listę komputerów z pliku tekstowego
$computers = Get-Content $computersFile

# Dla każdego komputera z listy
foreach ($computer in $computers) {
  # Skopiuj plik lub katalog do komputera
  Copy-Item -Path $sourcePath -Destination "\\$computer\$destinationPath" -Recurse
}

