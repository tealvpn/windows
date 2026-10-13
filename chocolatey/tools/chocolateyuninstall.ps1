$ErrorActionPreference = 'Stop'
$key = Get-UninstallRegistryKey -SoftwareName 'Teal VPN'
if ($key.Count -eq 1) {
  $key | ForEach-Object {
    $packageArgs = @{
      packageName    = $env:ChocolateyPackageName
      fileType       = 'exe'
      file           = "$($_.UninstallString -replace '"','' -replace ' /uninstall.*$','')"
      silentArgs     = '/uninstall /quiet'
      validExitCodes = @(0)
    }
    Uninstall-ChocolateyPackage @packageArgs
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "Teal VPN is not installed."
} else {
  Write-Warning "$($key.Count) matches found; not uninstalling automatically."
}
