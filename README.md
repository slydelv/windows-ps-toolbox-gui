# Windows Powershell Toolbox with GUI - WORK IN PROGRESS
This script is designed for a technicians convenience and/or remote assistance. 

If you are not a technician then please follow the instructions given to you carefully, and don't randomly click buttons.

This toolbox was made for and in collaboration with the PC Help Hub Discord
Official Discord Server ID: 571342175678234640

## How to Run (in Powershell)
Copy and Paste this command into Powershell (admin):
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/wintoolbox.ps1'))
```
Or, shorter:
```
iwr -useb https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/wintoolbox.ps1 | iex
```

## How to Run (in CMD / Batch)
Copy and Paste this command into CMD / Command Prompt:
```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/wintoolbox.ps1'))"
```
 - Note, this method might trigger an anti-malware alert and get blocked. It is not malware, but this method of launching scripts is used by malware.