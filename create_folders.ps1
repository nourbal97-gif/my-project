$basePath = "C:\Users\nora.balbisi\OneDrive - ACCUMED\Documents\my work\Trackers\18 March"

$folders = @(
    "AQH", "AQWCH", "EHS", "IBHO", "MAD", "MAHA",
    "MDH", "MFH", "MKD", "MKF", "MKH", "MKU",
    "MMH", "MOW", "MSH", "MSQ", "MUH", "PHCCs"
)

foreach ($folder in $folders) {
    $fullPath = Join-Path $basePath $folder
    New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
    Write-Host "Created: $folder"
}

Write-Host "Done. All folders created."
