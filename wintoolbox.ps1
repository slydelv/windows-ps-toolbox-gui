function InstallHWiNFO { 
    Write-Host "Installing HWiNFO"
    $ResultText.text = "Installing HWiNFO... Please Wait" 
    winget install -e REALiX.HWiNFO | Out-Host
    if($?) { Write-Host "Installed HWiNFO" }
    $ResultText.text = "`r`n" + "Finished Installing HWiNFO" + "`r`n" + "Ready for Next Task"
}

function EnableBGApps { 
    Write-Host "Allowing Background Apps..."
	Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
		Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue
	}
	Write-Host "Done - Reverted to Stock Settings"
    $ResultText.text = "`r`n" + "Enabled Background Apps." + "`r`n" + "Ready for Next Task"
}

function DisableBGApps { 
    Write-Host "Disabling Background application access..."
    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
        Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
        Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
    }
    Write-Host "Disabled Background application access"
    $ResultText.text = "`r`n" + "Disabled Background application access." + "`r`n" + "Ready for Next Task"
}

function StartSearchOff { 
    Write-Host "Disabling search suggestions, searching Bing from the Start menu. Good riddance."
    if( -not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer)){
        New-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 1 -Type DWord
    
    if( -not (Test-Path -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer)){
        New-Item HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 1 -Type DWord
    Write-Host "Okay, it's disabled."
    $ResultText.text = "`r`n" + "Disabled searching Bing from Start. Restart to take effect." + "`r`n" + "Ready for Next Task"
}

function StartSearchOn { 
    Write-Host "Enabling search suggestions, searching Bing from the Start menu. You maniac."
    if( -not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer)){
        New-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 0 -Type DWord
    
    if( -not (Test-Path -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer)){
        New-Item HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 0 -Type DWord
    
    Write-Host "Okay, it's enabled."
    $ResultText.text = "`r`n" + "Enabled searching Bing from Start (WHY?). Restart to take effect." + "`r`n" + "Ready for Next Task"
}

function EnableCortana { 
    ShowConsole
    Write-Host "Enabling Cortana..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -ErrorAction SilentlyContinue
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 0
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -ErrorAction SilentlyContinue
	Write-Host "Restoring Windows Search..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value "1"
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "CortanaConsent" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -ErrorAction SilentlyContinue
	Write-Host "Restore and Starting Windows Search Service..."
    Set-Service "WSearch" -StartupType Automatic
    Start-Service "WSearch" -WarningAction SilentlyContinue
    Write-Host "Restore Windows Search Icon..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 1
	Write-Host "Done - Reverted to Stock Settings"
    $ResultText.text = "`r`n" + "Enabled Cortana and Restored Search" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function DisableCortana { 
    ShowConsole
    Write-Host "Disabling Cortana..."
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0
    Write-Host "Disabled Cortana"
    $ResultText.text = "`r`n" + "Disabled Cortana" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function BlockAds { 
    $adlist= Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/BlockAds.cfg' 
    $adfile = "$env:windir\System32\drivers\etc\hosts"
    $adlist | Add-Content -PassThru $adfile
    $ResultText.text = "`r`n" + "Blocked common ad servers" + "`r`n" + "Ready for Next Task"
}

function BlockEpicBloat { 
    $content= Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/EpicGamesBlocklist.cfg' 
    $file = "$env:windir\System32\drivers\etc\hosts"
    $content | Add-Content -PassThru $file
    $ResultText.text = "`r`n" + "Blocked Epic Bloatware servers" + "`r`n" + "Ready for Next Task"
}

function InstallVLC { 
    Write-Host "Installing VLC Media Player"
    $ResultText.text = "`r`n" + "Installing VLC Media Player... Please Wait" 
    winget install -e VideoLAN.VLC | Out-Host
    if($?) { Write-Host "Installed VLC Media Player" }
    $ResultText.text = "`r`n" + "Finished Installing VLC Media Player" + "`r`n" + "Ready for Next Task"
}

function InstallNotepad { 
    Write-Host "Installing Notepad++"
    $ResultText.text = "Installing Notepad++... Please Wait" 
    winget install -e Notepad++.Notepad++ | Out-Host
    if($?) { Write-Host "Installed Notepad++" }
    $ResultText.text = "`r`n" + "Finished Installing NotePad++" + "`r`n" + "Ready for Next Task"
}

function InstallAdobe { 
    Write-Host "Installing Adobe Reader DC"
    $ResultText.text = "Installing Adobe Reader DC... Please Wait" 
    winget install -e --id Adobe.Acrobat.Reader.64-bit | Out-Host
    if($?) { Write-Host "Installed Adobe Reader DC" }
    $ResultText.text = "`r`n" + "Finished Installing Adobe Reader DC" + "`r`n" + "Ready for Next Task"
}

function RunningServices { 
    Show-Console
    Write-Host "Listing Running Services..."
    $Svcs = Get-Service | Where-Object {$_.Status -EQ "Running"}| Out-GridView -Title "List of running services" -PassThru| Select -ExpandProperty Name
    $ResultText.text = "`r`n" +"`r`n" + "Listing Running Services" + "`r`n" + $Svcs
    Write-Host "Next step: Output to text file"
}

function RunUndoEssentialTweaks { 
    ShowConsole
    EssentialTweaks 
    HideConsole
}

function RunEssentialTweaks { 
    ShowConsole
    EssentialUndo 
    HideConsole
}

function InstallFirefox { 
    Write-Host "Installing Firefox"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Firefox... Please Wait" 
    winget install -e Mozilla.Firefox | Out-Host
    if($?) { Write-Host "Installed Firefox" }
    $ResultText.text = "`r`n" + "Finished Installing Firefox" + "`r`n" + "Ready for Next Task"
}

function InstallChrome { 
    Write-Host "Installing Google Chrome"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Google Chrome... Please Wait" 
    winget install -e Google.Chrome | Out-Host
    if($?) { Write-Host "Installed Google Chrome" }
    $ResultText.text = "`r`n" + "Finished Installing Google Chrome" + "`r`n" + "Ready for Next Task"
}

function InstallBrave { 
    Write-Host "Installing Brave Browser"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Brave... Please Wait" 
    winget install -e BraveSoftware.BraveBrowser | Out-Host
    if($?) { Write-Host "Installed Brave Browser" }
    $ResultText.text = "`r`n" + "Finished Installing Brave" + "`r`n" + "Ready for Next Task"
}

function OSInfo { 
    Write-Host '-------------------------------------------------------------------'
    Write-Host 'Getting OS Info...'
    ShowConsole
    $osinfo = (Get-ComputerInfo -Property BiosDescription, BiosFirmwareType, WindowsProductName, WindowsInstallDateFromRegistry, WindowsVersion, *SystemRoot, BiosName*, BiosReleaseDate, BiosStatus, BiosPrimaryBIOS, CsCaption, CsBootupState, CsDomainRole, CsDomain, CsInstallDate, CsEnableDaylightSavingsTime, CsManufacturer, CsModel, CsNetworkServerModeEnabled, CsProcessors, CsNumberOfLogicalProcessors, CsPartOfDomain, CsPowerManagementCapabilities, CsPowerState, CsPowerSupplyState, CsResetCapability, CsSystemType, CsThermalState, CsTotalPhysicallyInstalledMemory, CsUserName, CsWakeUpType, CsWorkgroup, OSName, OsVersion, OsBuildNumber, Os, HotFixes, OsBootDevice, OsSystemDevice, OsSystemDrive, OsWindowsDirectory, OsCountryCode, OsLocale, OsLocalDateTime, OsLastBootUpTime, OsUptime, OsLanguage, OsNumberOfProcesses, OsNumberOfUsers, OsArchitectire, OsPrimary, OsPortableOperatingSystem, OsStatus, TimeZone, PowerPlatformRole, HyperVisorPresent, HyperVRequirementVirtualizationFirmwareEnabled, HyperVRequirementVMMonitorModeExtensions | fl *) | Out-Host
    Write-Host 'Dev ToDo: Output to text file'
}

function HwDump { 
    Write-Host '-------------------------------------------------------------------'
    Write-Host 'Getting OS Info...'
    ShowConsole
    $cpu1 = (get-wmiobject win32_processor)
    $video = (Get-WmiObject win32_videocontroller |select -property '__GENUS', Caption, Description, VideoProcessor, DeviceID, PowerManagementCapabilities, PowerManagementSupported, ProtocolSupported, AcceleratorCapabilities, DriverDate, DriverVersion, MaxRefreshRate, CurrentRefreshRate, Monochrome, VideoModeDescription, CurrentBitsPerPixel, Status, ConfigManagerUserConfig, ConfigManagerErrorCode, InstalledDisplayDrivers | fl *)
    $memory = (Get-WmiObject Win32_PhysicalMemory | select -PROPERTY * -ExcludeProperty '__CLASS', '__SERVER', '__SUPERCLASS', '__DYNASTY', '__RELPATH', '__PROPERTY_COUNT', '__DERIVATION', '__NAMESPACE', '__PATH', CreationClassName, Description, Name, TypeDetail, Scope, Path, Options, ClassPath, Qualifiers, Site, Container, Properties  | fl *)
    $networking = (Get-WmiObject -Class Win32_NetworkAdapter | select -property Name, ServiceName, AdapterType, Speed | ft * ) 
    $drives = ([System.IO.DriveInfo]::GetDrives() | select -Property name, rootdirectory, volumelabel, driveformat, totalsize, availablefreespace,  drivetype, isready  |Where-Object Drivetype -EQ Fixed | ft *)
    
    Write-Host $cpu1 + $video + $memory + $networking + $drives
    Write-Host 'Dev ToDo: Output to text file'
}

function DisableFastStartup { 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d "0" /f
    powercfg -h off
    $ResultText.text = "Fast Startup Disabled" + "`r`n" + "Ready for Next Task"
}

function EnableFastStartup { 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d "1" /f
    powercfg -h on
    $ResultText.text = "Fast Startup Enabled" + "`r`n" + "Ready for Next Task"
}

function Derp { 
    ShowConsole
    $ResultText.text = "`r`n" + "Starting to derp, please wait"
    cmd /c "dir /s c:\windows\system32\" | Out-Host
    $ResultText.text = "`r`n" + "Finished derping" + "`r`n" + "Ready for Next Task"
}

function GetAppList { 
    ShowConsole
    
    Write-Host 'Getting installed applications...'
    Write-Host ''
    
    $applist1 += Get-ItemProperty -Name * -Path @(
        'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKCU:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
    ) -ErrorAction SilentlyContinue | Where-Object {$_.DisplayName.Length -ge 1 } | Select-Object -Property DisplayName

    if ($ChkSaveTxt.Checked) {
        Write-Output $applist1 > $env:USERPROFILE\Desktop\Applist.txt
        Write-Host ''
        Write-Host '------------------'
        Write-Host 'I have saved this applist on your desktop. I will open the file in Notepad for you too.'
        Start notepad $env:USERPROFILE\Desktop\Applist.txt
        Write-Host 'Finished'
        Write-Host '------------------'
        
    } else {
        Write-Output $applist1
        Write-Host '------------------'
        Write-Host 'Finished'
        Write-Host '------------------'
    }

}

function InstEverything { 
    ShowConsole
    Write-Host "Installing Voidtools Everything Search"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Voidtools Everything Search... Please Wait" 
    winget install -e voidtools.Everything --source winget | Out-Host
    if($?) { Write-Host "Installed Everything Search" }
    $ResultText.text = "`r`n" + "Finished Installing Voidtools Everything Search" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function Inst7Zip { 
    ShowConsole
    Write-Host "Installing 7-Zip Compression Tool"
    $ResultText.text = "`r`n" +"`r`n" + "Installing 7-Zip Compression Tool... Please Wait" 
    winget install -e 7zip.7zip | Out-Host
    if($?) { Write-Host "Installed 7-Zip Compression Tool" }
    $ResultText.text = "`r`n" + "Finished Installing 7-Zip Compression Tool" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function InstWinTerminal { 
    ShowConsole
    $ErrorActionPreference = 'SilentlyContinue'
    $wshell = New-Object -ComObject Wscript.Shell
    $Button = [System.Windows.MessageBoxButton]::YesNoCancel
    $ErrorIco = [System.Windows.MessageBoxImage]::Error
    If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    	Exit
    }
    HideConsole
}

function ChkDskC { 
    ShowConsole
    cmd /c "echo y|chkdsk C: /F /X" | Out-Host
    $ResultText.text = "`r`n" + "Chkdsk run. Check the console." + "`r`n" + "Ready for Next Task"
    #This needs work, like the DISM / SFC. Maybe even the powershell Repair-Volume, but it doesn't have as many options as Chkdsk
}

function ChkDskCR {
    ShowConsole
    cmd /c "echo y|chkdsk C: /F /X /R" | Out-Host
    $ResultText.text = "`r`n" + "Chkdsk run. Check the console." + "`r`n" + "Ready for Next Task"
    #This needs work, like the DISM / SFC. Maybe even the powershell Repair-Volume, but it doesn't have as many options as Chkdsk
}

function ChkDskChoice {
    ShowConsole
    $chkdskPrompt = Read-Host "Would you like to scan with chkdsk? This will temporarily disable the actively scanned disk(s). The main disk can be scheduled for scanning next startup, and the other disks will start to get scanned now. Do you wish to run this scan? (Y/N)"
    if ($chkdskPrompt -ne 'y') {
    	break
    }
    
    Write-Host ""
    $chkdskComprehensiveHddScanPrompt = Read-Host "Would you like to use the chkdsk '/R' parameter to scan HDDs for bad sectors?`r`nThis is a more comprehensive scan option for HDDs, which takes longer time to run. It can take multiple hours on a slow HDD, while the regular scan (without the '/R' parameter) is fast and only takes a few minutes.`r`nThe SSD scans will ignore this parameter as it can cause the SSD to shrink in data size.`r`nDo you wish to use the '/R' parameter for the HDD scans? (Y/N)"
    
    Get-PhysicalDisk | Where-Object MediaType | ForEach-Object {
    	$physicalDisk = $_
    	$driveLetter = $physicalDisk | Get-Disk | Get-Partition | Where-Object DriveLetter | Select -ExpandProperty DriveLetter
    	if ($driveLetter) {
    		if ($chkdskComprehensiveHddScanPrompt -eq 'y' -and $physicalDisk.MediaType -eq "HDD") {
    			$message = "`r`n`r`n" + 'Starting "chkdsk ' + $driveLetter + ': /F /R /X" scan' + "`r`n"
    			Write-Host $message
    			
    			chkdsk ${driveLetter}: /F /R /X | Out-Host
    		}
    		elseif ($physicalDisk.MediaType -eq "HDD" -or $physicalDisk.MediaType -eq "SSD") {
    			$message = "`r`n`r`n" + 'Starting "chkdsk ' + $driveLetter + ': /F /X" scan' + "`r`n"
    			Write-Host $message
    			
    			chkdsk ${driveLetter}: /F /X | Out-Host
    		}
    	}
    }
    $ResultText.text = "`r`n" + "Chkdsk run. Check the console." + "`r`n" + "Ready for Next Task"
    Write-Host `n
    #This needs work, like the DISM / SFC. Maybe even the powershell Repair-Volume, but it doesn't have as many options as Chkdsk
}

function ChkDskScanOnly {
    ShowConsole
    cmd /c "echo y|chkdsk C: /scan" | Out-Host
    $ResultText.text = "`r`n" + "Chkdsk run. Check the console." + "`r`n" + "Ready for Next Task"
    #This needs work, like the DISM / SFC. Maybe even the powershell Repair-Volume, but it doesn't have as many options as Chkdsk
}

function SFCScan {
    ShowConsole
    Write-Host("Checking SFC Now")
    $ResultText.text = "Checking for system file corruption. Watch the Console Window." + "`r`n" + "`r`n" + "Please wait..."
    $sfcverify = ($(sfc /verifyonly) -split '' | ? {$_ -and [byte][char]$_ -ne 0}) -join '' | Out-Host
    if($sfcverify -like "*found integrity violations*"){
        Write-Host("SFC found corrupt files. Fixing.")
        $ResultText.text = "SFC has found corrupt files and will attempt to fix them now" + "`r`n" + "`r`n" + "Fixing corrupt files..."
        $sfcfix = ($(sfc /scannow) -split '' | ? {$_ -and [byte][char]$_ -ne 0}) -join '' | Out-Host
        if($sfcfix -like "*unable to fix*"){
            Write-Host("SFC was unable to fix the issues.")
            $ResultText.text = "Error - SFC tried but was UNABLE to fix the issues. Recommend a DISM Health Check." + "`r`n" + "Ready for Next Task"
        } else {
            Write-Host("SFC repair successful.")
            $ResultText.text = "SFC Fixes were successful" + "`r`n" + "Ready for Next Task"
        }
    } else {
        Write-Host("SFC is all good")
        $ResultText.text = "SFC is okay" + "`r`n" + "Ready for Next Task"
    }
}

function DISMSpace {
    ShowConsole
    $ResultText.text = "Checking the DISM component store. Watch the Console Window." + "`r`n" + "`r`n" + "Please wait..."
    $dismspacecheck = DISM /online /Cleanup-Image /AnalyzeComponentStore | Out-Host
    if($dismspacecheck -like "*Component Store Cleanup Recommended : Yes*")
    {
        $dismmatch = [string]$dismspacecheck -match "Reclaimable Packages : (\d*)"
        if($dismmatch){
            if($Matches.2 -gt 4){
                Write-Host("Cleanup needed. Doing it. ")
                $ResultText.text = "DISM Cleanup is needed" + "`r`n" + "`r`n" + "Starting cleanup now"
                DISM /online /Cleanup-Image /StartComponentCleanup | Out-Host
                $ResultText.text = "DISM Cleanup has finished" + "`r`n" + "Ready for Next Task"
            } else {
                Write-Host("Cleanup recommended but not needed.")
                $ResultText.text = "DISM Cleanup recommended but not needed" + "`r`n" + "Ready for Next Task"
            }
        }
    } else {
        Write-Host("Cleanup not needed.")
        $ResultText.text = "DISM Cleanup is not needed" + "`r`n" + "Ready for Next Task"
    }
}

function DISMHealth {
    ShowConsole
    $ResultText.text = "Checking the DISM system health. Watch the Console Window." + "`r`n" + "`r`n" + "Please wait..."
    $dismhealth = DISM /Online /Cleanup-Image /ScanHealth | Out-Host
    if($dismhealth -like "*The component store is repairable.*"){
    $dismhealthfix = DISM /Online /Cleanup-Image /RestoreHealth | Out-Host
    if($dismhealthfix -like "*The restore operation completed successfully.*"){
        Write-Host("DISM Fixes Performed.")
        $ResultText.text = "DISM Fixes have been performed" + "`r`n" + "Ready for Next Task"
    }
    
    } elseif ($dismhealth -like "*No component store corruption detected.*") {
        Write-Host("DISM Health is good.")
        $ResultText.text = "DISM Health is good" + "`r`n" + "Ready for Next Task"
    }
}

function ClearTempFiles {
    ShowConsole
    $DaysToDelete = 30
    $TempFolders = @()
    $TempFolders += "C:\Windows\Temp"
    $TempFolders += "C:\users\*\AppData\Local\Temp"
    $TempFolders += "C:\Windows\SoftwareDistribution\Download"
    
    foreach($TempFolder in $TempFolders)
    {
        Get-ChildItem $TempFolder -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { ($_.CreationTime -lt $(Get-Date).AddDays(-$DaysToDelete)) } | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
    }
    $ResultText.text = "Cleared temp files" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function ShowConsole {
    [Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 1)
}

function HideConsole {
    [Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
}

function MoveConsole {
    [Console.Window]::MoveWindow([Console.Window]::GetConsoleWindow(),900,0,800,500);
}

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}