$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$arm64 = $env:PROCESSOR_ARCHITECTURE -eq 'ARM64'
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = $(if ($arm64) { 'https://github.com/tealvpn/windows/releases/download/v0.1.30/TealVPN-Setup-arm64.exe' } else { 'https://github.com/tealvpn/windows/releases/download/v0.1.30/TealVPN-Setup-x64.exe' })
  checksum64     = $(if ($arm64) { '32314ec1a4845f77ade692f6bad6478d6bca309cfec6190363c3036c3159c732' } else { '3843221d2c706f09ccd49aa6570a94265c2f957b17d99b60ef39847f805a4a1e' })
  checksumType64 = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'Teal VPN'
}
Install-ChocolateyPackage @packageArgs
