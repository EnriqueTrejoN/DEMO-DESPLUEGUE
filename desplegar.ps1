$archivoOrigen = Join-Path $PSScriptRoot '.\origen\index.php'
$archivoDestino = Join-Path $PSScriptRoot '.\pruebas\index.php'

& 'C:\xampp\php\php.exe' -l $archivoOrigen

if ($LASTEXITCODE -ne 0) {
    Write-Host "hay un error en la sintaxis. No publico el cambio"
    exit 1
}
Copy-Item $archivoOrigen $archivoDestino -Force -ErrorAction stop
Write-Host "version publicada en el ambiente de pruebas."
