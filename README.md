<p align="center">
  <img src="https://raw.githubusercontent.com/tealvpn/.github/main/profile/banner.png" alt="Teal VPN" width="100%">
</p>

<h1 align="center">Teal VPN for Windows</h1>
<p align="center">Windows 10 (version 1809 or newer) and Windows 11.</p>

<p align="center">
  <a href="https://github.com/tealvpn/windows/releases/latest/download/TealVPN-Setup-x64.exe"><img src="https://raw.githubusercontent.com/tealvpn/.github/main/profile/btn-windows.png" alt="Download for Windows" height="56"></a>
  <a href="https://github.com/tealvpn/windows/releases/latest/download/TealVPN-Setup-arm64.exe"><img src="https://raw.githubusercontent.com/tealvpn/.github/main/profile/btn-windows-arm.png" alt="Windows on ARM" height="56"></a>
</p>
<p align="center"><sub>Intel / AMD PCs: the first button. Snapdragon and other ARM PCs: Windows on ARM.</sub></p>

<p align="center">
  <img src="screenshots/connect.webp" alt="Connected" width="420">
  <img src="screenshots/locations.webp" alt="Locations" width="420">
  <img src="screenshots/protection.webp" alt="Protection" width="420">
</p>

## Install

1. Open the downloaded installer.
2. If Windows says "Windows protected your PC", click **More info**, check that the publisher is the one named on [tealvpn.com/windows](https://tealvpn.com/windows), then **Run anyway**.
3. Allow the one Windows prompt (the VPN service needs administrator rights to install).
4. Sign in and click **Connect**.

## Check the file

Each release lists the SHA-256 of each installer and carries a `.sha256` file for it.

- Windows: `certutil -hashfile TealVPN-Setup-x64.exe SHA256`
- Linux / Mac: `sha256sum -c TealVPN-Setup-x64.exe.sha256`

## Updates

The app updates itself and checks the signature before installing an update.

## Official links

[tealvpn.com](https://tealvpn.com/windows) · [Your account](https://account.tealvpn.com) · [All Teal VPN downloads](https://github.com/tealvpn) · support@tealvpn.com

Download Teal VPN only from tealvpn.com, Google Play or this GitHub organization. This repository holds no source code, only the releases.
