$apps = @(
	"Chrome*",
	"7-Zip*", 
	"Foxit*", 
	"Zoom*", 
	"LibreOffice*", 
	"KeePass*", 
	"Malwarebytes*"
    
)

foreach ($app in $apps) {
    $installedApps = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like "*$app*" }
    
    if ($installedApps) {
        foreach ($installedApp in $installedApps) {
            Write-Host "Uninstalling $($installedApp.Name)..."
            $installedApp.Uninstall() | Out-Null
            Write-Host "$($installedApp.Name) has been uninstalled."
        }
    } else {
        Write-Host "No matching installation found for $app."
    }
}
