# Download Microsoft SQL Tools Service Layer
$url = "https://github.com/microsoft/sqltoolsservice/releases/download/5.0.20250606.1/microsoft.sqltools.servicelayer-win-x64-net8.0.zip"
$output = "microsoft.sqltools.servicelayer-win-x64-net8.0.zip"

Write-Host "Downloading Microsoft SQL Tools Service Layer..."
Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing

if (Test-Path $output) {
    Write-Host "Download completed successfully: $output"
    Write-Host "File size: $((Get-Item $output).Length / 1MB) MB"
} else {
    Write-Error "Download failed"
    exit 1
}