
function Show-Feedback {
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true, Position=0)]
        [string]$Feedback,

        [Parameter(Mandatory=$false, Position=1)]
        [string]$Ready,

        [Parameter(Mandatory=$false, Position=2)]
        [string]$Wait
    )

    #$linebreak = "`r`n"
    $linebreakDouble = "`r`n" + "`r`n"
    
    Write-Host $Feedback
    
    if ($Wait -eq $true) {
        Write-Host "Please Wait..."
        Write-Host "---------------------------------------------------------"
    }
    
    if ($Ready -eq $true) {
        Write-Host "---------------------------------------------------------"
        Write-Host "Ready for next task." 
        Write-Host "---------------------------------------------------------"
    }
    
    if ($Wait -eq $true) {
        $ResultText.text = $Feedback + $linebreakDouble + "Please Wait..."
    } elseif ($Ready -eq $true) {
        $ResultText.text = $Feedback + $linebreakDouble + "Ready for next task."
    } else {
        $ResultText.text = $Feedback
    }
}

function SpawnPSCommand($pscommand) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$pscommand`"" -Verb RunAs
    #Show-Feedback "Spawned PowerShell Command: $pscommand"
}
function SpawnBGPSCommand($pscommand) {
    Start-Job -ScriptBlock { powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$pscommand`"" -Verb RunAs }
    #Show-Feedback "Spawned PowerShell Command: $pscommand"
}


function EssentialTweaks {
    Write-Host "Creating Restore Point incase something bad happens"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Essential Tools... Please Wait" 
    Enable-ComputerRestore -Drive "C:\"
    Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"
    
    Write-Host "Running O&O Shutup with Recommended Settings"
    $ResultText.text += "`r`n" +"Running O&O Shutup with Recommended Settings"
    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/ooshutup10.cfg" -Destination ooshutup10.cfg
    Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
    ./OOSU10.exe ooshutup10.cfg /quiet
    
    Write-Host "Disabling Telemetry..."
    $ResultText.text += "`r`n" +"Disabling Telemetry..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Write-Host "Disabling Wi-Fi Sense..."
    If (!(Test-Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
        New-Item -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 0
    Write-Host "Disabling Application suggestions..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
    Write-Host "Disabling Activity History..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
    # Keep Location Tracking commented out if you want the ability to locate your device
    Write-Host "Disabling Location Tracking..."
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
    Write-Host "Disabling automatic Maps updates..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
    Write-Host "Disabling Feedback..."
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
    Write-Host "Disabling Tailored Experiences..."
    If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
        New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
    Write-Host "Disabling Advertising ID..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
    Write-Host "Disabling Error reporting..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
    Write-Host "Restricting Windows Update P2P only to local network..."
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
    Write-Host "Stopping and disabling Diagnostics Tracking Service..."
    Stop-Service "DiagTrack" -WarningAction SilentlyContinue
    Set-Service "DiagTrack" -StartupType Disabled
    Write-Host "Stopping and disabling WAP Push Service..."
    Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
    Set-Service "dmwappushservice" -StartupType Disabled
    Write-Host "Enabling F8 boot menu options..."
    bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
    Write-Host "Stopping and disabling Home Groups services..."
    Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
    Set-Service "HomeGroupListener" -StartupType Disabled
    Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
    Set-Service "HomeGroupProvider" -StartupType Disabled
    Write-Host "Disabling Remote Assistance..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
    Write-Host "Disabling Storage Sense..."
    Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Stopping and disabling Superfetch service..."
    Stop-Service "SysMain" -WarningAction SilentlyContinue
    Set-Service "SysMain" -StartupType Disabled
    Write-Host "Disabling Hibernation..."
    Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 0
    If ((get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name CurrentBuild).CurrentBuild -lt 22557) {
    	Write-Host "Showing task manager details..."
    	$taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
    	Do {
      		Start-Sleep -Milliseconds 100
        	$preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
    	} Until ($preferences)
    	Stop-Process $taskmgr
    	$preferences.Preferences[28] = 0
    	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
    } else {Write-Host "Task Manager patch not run in builds 22557+ due to bug"}
    Write-Host "Showing file operations details..."
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
    Write-Host "Hiding Task View button..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
    Write-Host "Hiding People icon..."
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
    Write-Host "Hide tray icons..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -Type DWord -Value 1
    Write-Host "Enabling NumLock after startup..."
    If (!(Test-Path "HKU:")) {
        New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
    }
    Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
    Add-Type -AssemblyName System.Windows.Forms
    If (!([System.Windows.Forms.Control]::IsKeyLocked('NumLock'))) {
        $wsh = New-Object -ComObject WScript.Shell
        $wsh.SendKeys('{NUMLOCK}')
    }
    
    Write-Host "Changing default Explorer view to This PC..."
    $ResultText.text += "`r`n" +"Quality of Life Tweaks"
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
    
    Write-Host "Hiding 3D Objects icon from This PC..."
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue
    
    # reuducing ram via regedit
    Write-Host "Using regedit to improve RAM performace"
    
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_DXGIHonorFSEWindowsCompatible" -Type Hex -Value 00000000
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Type Hex -Value 00000000
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_EFSEFeatureFlags" -Type Hex -Value 00000000
    Set-ItemProperty -Path "HKLM:\System\GameConfigStore" -Name "GameDVR_Enabled" -Type DWord -Value 00000000
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" -Name "PowerThrottlingOff" -Type DWord -Value 00000001
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Type DWord -Value 0000000
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" -Name "SearchOrderConfig" -Type DWord -Value 00000000
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name "SystemResponsiveness" -Type DWord -Value 0000000a
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name "NetworkThrottlingIndex" -Type DWord -Value 0000000a
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "WaitToKillServiceTimeout" -Type DWord -Value 2000
    Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "MenuShowDelay" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "WaitToKillAppTimeout" -Type DWord -Value 5000
    Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "HungAppTimeout" -Type DWord -Value 4000
    Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "AutoEndTasks" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "LowLevelHooksTimeout" -Type DWord -Value 00001000
    Set-ItemProperty -Path "HKLM:\Control Panel\Desktop" -Name "WaitToKillServiceTimeout" -Type DWord -Value 00002000
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "ClearPageFileAtShutdown" -Type DWord -Value 00000001
    Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\Ndu" -Name "Start" -Type DWord -Value 00000004
    Set-ItemProperty -Path "HKLM:\Control Panel\Mouse" -Name "MouseHoverTime" -Type DWord -Value 00000010
    
    
    # Network Tweaks
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "IRPStackSize" -Type DWord -Value 20
    
    # Group svchost.exe processes
    $ram = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1kb
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control" -Name "SvcHostSplitThresholdInKB" -Type DWord -Value $ram -Force
    
    #Write-Host "Installing Windows Media Player..."
    #Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null
    
    Write-Host "Disable News and Interests"
    $ResultText.text += "`r`n" +"Disabling Extra Junk"
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -Type DWord -Value 0
    # Remove "News and Interest" from taskbar
    Set-ItemProperty -Path  "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Type DWord -Value 2
    
    # remove "Meet Now" button from taskbar
    
    If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
        New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force | Out-Null
    }
    
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -Type DWord -Value 1
    
    Write-Host "Removing AutoLogger file and restricting directory..."
    $autoLoggerDir = "$env:PROGRAMDATA\Microsoft\Diagnosis\ETLLogs\AutoLogger"
    If (Test-Path "$autoLoggerDir\AutoLogger-Diagtrack-Listener.etl") {
        Remove-Item "$autoLoggerDir\AutoLogger-Diagtrack-Listener.etl"
    }
    icacls $autoLoggerDir /deny SYSTEM:`(OI`)`(CI`)F | Out-Null
    
    Write-Host "Stopping and disabling Diagnostics Tracking Service..."
    Stop-Service "DiagTrack"
    Set-Service "DiagTrack" -StartupType Disabled
    
    Write-Host "Showing known file extensions..."
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0
    
    # Service tweaks to Manual 
    
    $services = @(
    "diagnosticshub.standardcollector.service"     # Microsoft (R) Diagnostics Hub Standard Collector Service
    "DiagTrack"                                    # Diagnostics Tracking Service
    "DPS"
    "dmwappushservice"                             # WAP Push Message Routing Service (see known issues)
    "lfsvc"                                        # Geolocation Service
    "MapsBroker"                                   # Downloaded Maps Manager
    "NetTcpPortSharing"                            # Net.Tcp Port Sharing Service
    "RemoteAccess"                                 # Routing and Remote Access
    "RemoteRegistry"                               # Remote Registry
    "SharedAccess"                                 # Internet Connection Sharing (ICS)
    "TrkWks"                                       # Distributed Link Tracking Client
    #"WbioSrvc"                                     # Windows Biometric Service (required for Fingerprint reader / facial detection)
    #"WlanSvc"                                      # WLAN AutoConfig
    "WMPNetworkSvc"                                # Windows Media Player Network Sharing Service
    #"wscsvc"                                       # Windows Security Center Service
    "WSearch"                                      # Windows Search
    "XblAuthManager"                               # Xbox Live Auth Manager
    "XblGameSave"                                  # Xbox Live Game Save Service
    "XboxNetApiSvc"                                # Xbox Live Networking Service
    "XboxGipSvc"                                   #Disables Xbox Accessory Management Service
    "ndu"                                          # Windows Network Data Usage Monitor
    "WerSvc"                                       #disables windows error reporting
    #"Spooler"                                      #Disables your printer
    "Fax"                                          #Disables fax
    "fhsvc"                                        #Disables fax histroy
    "gupdate"                                      #Disables google update
    "gupdatem"                                     #Disable another google update
    "stisvc"                                       #Disables Windows Image Acquisition (WIA)
    "AJRouter"                                     #Disables (needed for AllJoyn Router Service)
    "MSDTC"                                        # Disables Distributed Transaction Coordinator
    "WpcMonSvc"                                    #Disables Parental Controls
    "PhoneSvc"                                     #Disables Phone Service(Manages the telephony state on the device)
    "PrintNotify"                                  #Disables Windows printer notifications and extentions
    "PcaSvc"                                       #Disables Program Compatibility Assistant Service
    "WPDBusEnum"                                   #Disables Portable Device Enumerator Service
    #"LicenseManager"                               #Disable LicenseManager(Windows store may not work properly)
    "seclogon"                                     #Disables  Secondary Logon(disables other credentials only password will work)
    "SysMain"                                      #Disables sysmain
    "lmhosts"                                      #Disables TCP/IP NetBIOS Helper
    "wisvc"                                        #Disables Windows Insider program(Windows Insider will not work)
    "FontCache"                                    #Disables Windows font cache
    "RetailDemo"                                   #Disables RetailDemo whic is often used when showing your device
    "ALG"                                          # Disables Application Layer Gateway Service(Provides support for 3rd party protocol plug-ins for Internet Connection Sharing)
    #"BFE"                                         #Disables Base Filtering Engine (BFE) (is a service that manages firewall and Internet Protocol security)
    #"BrokerInfrastructure"                         #Disables Windows infrastructure service that controls which background tasks can run on the system.
    "SCardSvr"                                      #Disables Windows smart card
    "EntAppSvc"                                     #Disables enterprise application management.
    "BthAvctpSvc"                                   #Disables AVCTP service (if you use  Bluetooth Audio Device or Wireless Headphones. then don't disable this)
    #"FrameServer"                                   #Disables Windows Camera Frame Server(this allows multiple clients to access video frames from camera devices.)
    "Browser"                                       #Disables computer browser
    "BthAvctpSvc"                                   #AVCTP service (This is Audio Video Control Transport Protocol service.)
    #"BDESVC"                                        #Disables bitlocker
    "iphlpsvc"                                      #Disables ipv6 but most websites don't use ipv6 they use ipv4     
    "edgeupdate"                                    # Disables one of edge update service  
    "MicrosoftEdgeElevationService"                 # Disables one of edge  service 
    "edgeupdatem"                                   # disbales another one of update service (disables edgeupdatem)                          
    "SEMgrSvc"                                      #Disables Payments and NFC/SE Manager (Manages payments and Near Field Communication (NFC) based secure elements)
    #"PNRPsvc"                                      # Disables peer Name Resolution Protocol ( some peer-to-peer and collaborative applications, such as Remote Assistance, may not function, Discord will still work)
    #"p2psvc"                                       # Disbales Peer Name Resolution Protocol(nables multi-party communication using Peer-to-Peer Grouping.  If disabled, some applications, such as HomeGroup, may not function. Discord will still work)
    #"p2pimsvc"                                     # Disables Peer Networking Identity Manager (Peer-to-Peer Grouping services may not function, and some applications, such as HomeGroup and Remote Assistance, may not function correctly.Discord will still work)
    "PerfHost"                                      #Disables  remote users and 64-bit processes to query performance .
    "BcastDVRUserService_48486de"                   #Disables GameDVR and Broadcast   is used for Game Recordings and Live Broadcasts
    "CaptureService_48486de"                        #Disables ptional screen capture functionality for applications that call the Windows.Graphics.Capture API.  
    "cbdhsvc_48486de"                               #Disables   cbdhsvc_48486de (clipboard service it disables)
    #"BluetoothUserService_48486de"                  #disbales BluetoothUserService_48486de (The Bluetooth user service supports proper functionality of Bluetooth features relevant to each user session.)
    "WpnService"                                    #Disables WpnService (Push Notifications may not work )
    #"StorSvc"                                       #Disables StorSvc (usb external hard drive will not be reconised by windows)
    "RtkBtManServ"                                  #Disables Realtek Bluetooth Device Manager Service
    "QWAVE"                                         #Disables Quality Windows Audio Video Experience (audio and video might sound worse)
     #Hp services
    "HPAppHelperCap"
    "HPDiagsCap"
    "HPNetworkCap"
    "HPSysInfoCap"
    "HpTouchpointAnalyticsService"
    #hyper-v services
     "HvHost"                          
    "vmickvpexchange"
    "vmicguestinterface"
    "vmicshutdown"
    "vmicheartbeat"
    "vmicvmsession"
    "vmicrdv"
    "vmictimesync" 
    # Services which cannot be disabled
    #"WdNisSvc"
    )
    
    foreach ($service in $services) {
    # -ErrorAction SilentlyContinue is so it doesn't write an error to stdout if a service doesn't exist
    
    Write-Host "Setting $service StartupType to Manual"
    Get-Service -Name $service -ErrorAction SilentlyContinue | Set-Service -StartupType Manual
    }
    
    Write-Host "Essential Tweaks Completed - Please Reboot"
    $ResultText.text = "`r`n" + "Essential Tweaks Done" + "`r`n" + "`r`n" + "Ready for Next Task"

}

function EssentialUndo {
    Write-Host "Creating Restore Point incase something bad happens"
    $ResultText.text = "`r`n" +"`r`n" + "Creating Restore Point and Reverting Settings... Please Wait"
    Enable-ComputerRestore -Drive "C:\"
    Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"

    Write-Host "Enabling Telemetry..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 1
    Write-Host "Enabling Wi-Fi Sense"
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 1
    Write-Host "Enabling Application suggestions..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 1
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
        Remove-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Recurse -ErrorAction SilentlyContinue
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 0
    Write-Host "Enabling Activity History..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 1
    Write-Host "Enable Location Tracking..."
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
        Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Recurse -ErrorAction SilentlyContinue
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Allow"
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 1
    Write-Host "Enabling automatic Maps updates..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 1
    Write-Host "Enabling Feedback..."
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
        Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Recurse -ErrorAction SilentlyContinue
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 0
    Write-Host "Enabling Tailored Experiences..."
    If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
        Remove-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Recurse -ErrorAction SilentlyContinue
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 0
    Write-Host "Disabling Advertising ID..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
        Remove-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Recurse -ErrorAction SilentlyContinue
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 0
    Write-Host "Allow Error reporting..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 0
    Write-Host "Allowing Diagnostics Tracking Service..."
    Stop-Service "DiagTrack" -WarningAction SilentlyContinue
    Set-Service "DiagTrack" -StartupType Manual
    Write-Host "Allowing WAP Push Service..."
    Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
    Set-Service "dmwappushservice" -StartupType Manual
    Write-Host "Allowing Home Groups services..."
    Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
    Set-Service "HomeGroupListener" -StartupType Manual
    Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
    Set-Service "HomeGroupProvider" -StartupType Manual
    Write-Host "Enabling Storage Sense..."
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" | Out-Null
    Write-Host "Allowing Superfetch service..."
    Stop-Service "SysMain" -WarningAction SilentlyContinue
    Set-Service "SysMain" -StartupType Manual
    Write-Host "Setting BIOS time to Local Time instead of UTC..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 0
    Write-Host "Enabling Hibernation..."
    Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 1
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreen" -ErrorAction SilentlyContinue

    Write-Host "Hiding file operations details..."
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
        Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Recurse -ErrorAction SilentlyContinue
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 0
    Write-Host "Showing Task View button..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 1

    Write-Host "Changing default Explorer view to Quick Access..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1

    Write-Host "Unrestricting AutoLogger directory"
    $autoLoggerDir = "$env:PROGRAMDATA\Microsoft\Diagnosis\ETLLogs\AutoLogger"
    icacls $autoLoggerDir /grant:r SYSTEM:`(OI`)`(CI`)F | Out-Null

    Write-Host "Enabling and starting Diagnostics Tracking Service"
    Set-Service "DiagTrack" -StartupType Automatic
    Start-Service "DiagTrack"

    Write-Host "Hiding known file extensions"
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 1

    Write-Host "Reset Local Group Policies to Stock Defaults"
    # cmd /c secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose
    cmd /c RD /S /Q "%WinDir%\System32\GroupPolicyUsers"
    cmd /c RD /S /Q "%WinDir%\System32\GroupPolicy"
    cmd /c gpupdate /force
    # Considered using Invoke-GPUpdate but requires module most people won't have installed

    Write-Host "Essential Undo Completed"
    $ResultText.text = "`r`n" +"`r`n" + "Essential Undo Completed - Ready for next task"
}

function SFCScan {
    ShowConsole
    Write-Host("Checking SFC Now")
    $ResultText.text = "Checking for system file corruption. Watch the Console Window." + "`r`n" + "`r`n" + "Please wait..."
    
    $sfcverify = ($(sfc /verifyonly) -split '' | ? {$_ -and [byte][char]$_ -ne 0}) -join '' | Out-Host
    
    if ($sfcverify -like "*found integrity violations*") {
        Write-Host("SFC found corrupt files. Fixing.")
        $ResultText.text = "SFC has found corrupt files and will attempt to fix them now" + "`r`n" + "`r`n" + "Fixing corrupt files..."
        
        $sfcfix = ($(sfc /scannow) -split '' | ? {$_ -and [byte][char]$_ -ne 0}) -join '' | Out-Host
        
        if ($sfcfix -like "*unable to fix*") {
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

function ClearTempFiles {
    ShowConsole
    
    $DaysToDelete = 30
    $TempFolders = @()
    $TempFolders += "C:\Windows\Temp"
    $TempFolders += "C:\users\*\AppData\Local\Temp"
    $TempFolders += "C:\Windows\SoftwareDistribution\Download"

    Write-Host("Clearing Temporary files from $TempFolders older than $DaysToDelete old, please wait")
    
    foreach ($TempFolder in $TempFolders) {
        Write-Host(" - Currently cleaning $TempFolder")
        Get-ChildItem $TempFolder -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { ($_.CreationTime -lt $(Get-Date).AddDays(-$DaysToDelete)) } | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
    }
    
    $ResultText.text = "Cleared temp files" + "`r`n" + "Ready for Next Task"
    Write-Host("Cleared temp files, ready for next task")
}

function DISMSpace {
    ShowConsole

    Show-Feedback "DISM is checking the component store. Watch the Console Window." -Wait $true

    $dismspacecheck = DISM /online /Cleanup-Image /AnalyzeComponentStore | Out-Host
    if ($dismspacecheck -like "*Component Store Cleanup Recommended : Yes*")
    {
        $dismmatch = [string]$dismspacecheck -match "Reclaimable Packages : (\d*)"
        if ($dismmatch) {
            if ($Matches.2 -gt 4) {
                Show-Feedback "DISM is showing that cleanup is needed, so we will do that now. " -Wait $true
                DISM /online /Cleanup-Image /StartComponentCleanup | Out-Host
                Show-Feedback "DISM has completed the Component Cleanup" -Ready $true
            } else {
                Show-Feedback "DISM advises that Component Cleanup is recommended but not needed. We'll perform the cleanup now" -Wait $true
                DISM /online /Cleanup-Image /StartComponentCleanup | Out-Host
                Show-Feedback "DISM has completed the Component Cleanup" -Ready $true
            }
        }
    } else {
        Show-Feedback "Checks done, DISM Cleanup is not needed." -Ready $true
    }
}

function DISMHealth {
    ShowConsole
    Show-Feedback "Scanning the DISM system health. Watch the Console Window." -Wait $true
        
    $dismhealth = DISM /Online /Cleanup-Image /ScanHealth | Out-Host
    
    if ($dismhealth -like "*The component store is repairable.*") {
        Show-Feedback "The component store is repairable, running the DISM /Online /Cleanup-Image /RestoreHealth now" -Wait $true
                
        $dismhealthfix = DISM /Online /Cleanup-Image /RestoreHealth | Out-Host
        
        if ($dismhealthfix -like "*The restore operation completed successfully.*") {
            Show-Feedback "DISM has made repairs to the system" -Ready $true
        }
    } elseif ($dismhealth -like "*No component store corruption detected.*") {
        Show-Feedback "DISM Health is good and doesn't report that RestoreHealth is required" -Ready $true
    }
}

function DisableFastStartup { 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d "0" /f
    powercfg -h off
    Show-Feedback "Fast Startup Disabled" -Ready $true
}

function EnableFastStartup { 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d "1" /f
    powercfg -h on
    Show-Feedback "Fast Startup Enabled" -Ready $true
}

function VisualFxPerformance {
    Show-Feedback "Adjusting visual effects for performance..." -Wait $true
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 200
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144, 18, 3, 128, 16, 0, 0, 0))
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
    Show-Feedback "Adjusted visual effects for performance." -Ready $true
}
function VisualFxApperance {
    Show-Feedback "Adjusting visual effects for appearance..." -Wait $true
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 1
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 400
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](158, 30, 7, 128, 18, 0, 0, 0))
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 1
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 1
    Remove-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "HungAppTimeout" -ErrorAction SilentlyContinue
    Show-Feedback "Adjusted visual effects for appearance." -Ready $true
}

function DumpNetworkInfo { 
    Remove-Item 'C:\winpstoolboxgui\networkinfo.txt' -ErrorAction SilentlyContinue
    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value 'Network Info'
    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value (Get-Date)
    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value ''

    $adapters = Get-NetAdapter -Name * | Format-Table *

    $IPConfig = $(ipconfig /all)

    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value 'Adapters:'
    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value $adapters
    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value ''

    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value 'IPConfig:'
    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value $IPConfig
    Add-Content -Path 'C:\winpstoolboxgui\networkinfo.txt' -Value ''

    Show-Feedback 'Dumped the network info to C:\winpstoolboxgui\networkinfo.txt, opening now' -Ready $true
    C:\winpstoolboxgui\networkinfo.txt

}
function OSInfo { 
    Remove-Item 'C:\winpstoolboxgui\osinfo.txt' -ErrorAction SilentlyContinue
    Add-Content -Path 'C:\winpstoolboxgui\osinfo.txt' -Value 'OS Info'
    Add-Content -Path 'C:\winpstoolboxgui\osinfo.txt' -Value (Get-Date)
    Add-Content -Path 'C:\winpstoolboxgui\osinfo.txt' -Value ''
    Show-Feedback 'Getting OS Info...' -Wait $true
    ShowConsole
    (Get-ComputerInfo -Property BiosDescription, BiosFirmwareType, WindowsProductName, WindowsInstallDateFromRegistry, WindowsVersion, *SystemRoot, BiosName*, BiosReleaseDate, BiosStatus, BiosPrimaryBIOS, CsCaption, CsBootupState, CsDomainRole, CsDomain, CsInstallDate, CsEnableDaylightSavingsTime, CsManufacturer, CsModel, CsNetworkServerModeEnabled, CsProcessors, CsNumberOfLogicalProcessors, CsPartOfDomain, CsPowerManagementCapabilities, CsPowerState, CsPowerSupplyState, CsResetCapability, CsSystemType, CsThermalState, CsTotalPhysicallyInstalledMemory, CsUserName, CsWakeUpType, CsWorkgroup, OSName, OsVersion, OsBuildNumber, Os, HotFixes, OsBootDevice, OsSystemDevice, OsSystemDrive, OsWindowsDirectory, OsCountryCode, OsLocale, OsLocalDateTime, OsLastBootUpTime, OsUptime, OsLanguage, OsNumberOfProcesses, OsNumberOfUsers, OsArchitectire, OsPrimary, OsPortableOperatingSystem, OsStatus, TimeZone, PowerPlatformRole, HyperVisorPresent, HyperVRequirementVirtualizationFirmwareEnabled, HyperVRequirementVMMonitorModeExtensions | Format-List *) | Out-File C:\winpstoolboxgui\osinfo.txt
    
    Show-Feedback 'Dumped the OS Info to C:\winpstoolboxgui\osinfo.txt, opening now' -Ready $true
    C:\winpstoolboxgui\osinfo.txt
}

function HwDump { 
    Remove-Item 'C:\winpstoolboxgui\hwinfo.txt' -ErrorAction SilentlyContinue
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value 'Hardware Dump'
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value (Get-Date)
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ''
    Show-Feedback 'Getting Hardware Info...' -Wait $true
    ShowConsole
    $cpu1 = (get-wmiobject win32_processor)
    $ProgressBar1.value              = 20
    $video = (Get-WmiObject win32_videocontroller | Select-Object -Property '__GENUS', Caption, Description, VideoProcessor, DeviceID, PowerManagementCapabilities, PowerManagementSupported, ProtocolSupported, AcceleratorCapabilities, DriverDate, DriverVersion, MaxRefreshRate, CurrentRefreshRate, Monochrome, VideoModeDescription, CurrentBitsPerPixel, Status, ConfigManagerUserConfig, ConfigManagerErrorCode, InstalledDisplayDrivers | Format-List *)
    $ProgressBar1.value              = 40
    $memory = (Get-WmiObject Win32_PhysicalMemory | Select-Object -Property * -ExcludeProperty '__CLASS', '__SERVER', '__SUPERCLASS', '__DYNASTY', '__RELPATH', '__PROPERTY_COUNT', '__DERIVATION', '__NAMESPACE', '__PATH', CreationClassName, Description, Name, TypeDetail, Scope, Path, Options, ClassPath, Qualifiers, Site, Container, Properties  | fl *)
    $ProgressBar1.value              = 60
    $networking = (Get-WmiObject -Class Win32_NetworkAdapter | Select-Object -Property Name, ServiceName, AdapterType, Speed | Format-Table * ) 
    $ProgressBar1.value              = 80
    $drives = ([System.IO.DriveInfo]::GetDrives() | Select-Object -Property name, rootdirectory, volumelabel, driveformat, totalsize, availablefreespace,  drivetype, isready | Where-Object Drivetype -EQ Fixed | Format-Table *)
    $drives2 = ([System.IO.DriveInfo]::GetDrives() | Select-Object -Property name, rootdirectory, volumelabel, driveformat, totalsize, availablefreespace,  drivetype, isready | Where-Object Drivetype -NE Fixed | Format-Table *)
    $ProgressBar1.value              = 95


    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value 'CPU Information: '
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ($cpu1)
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ''
    
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value 'Video Information: '
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ($video)
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ''

    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value 'Memory Information: '
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ($memory)
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ''

    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value 'Networking Information: '
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ($networking)
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ''

    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value 'Fixed Drives Information: '
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ($drives)
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ''

    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value 'Non-Fixed Drives Information: '
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ($drives2)
    Add-Content -Path 'C:\winpstoolboxgui\hwinfo.txt' -Value ''

    $ProgressBar1.value              = 100
    Show-Feedback 'Dumped the hardware info to C:\winpstoolboxgui\hwinfo.txt, opening now' -Ready $true
    C:\winpstoolboxgui\hwinfo.txt
    $ProgressBar1.value              = 0
}

function AdwCleaner { 
    Invoke-WebRequest -Uri 'https://github.com/slydelv/windows-ps-toolbox-gui/blob/main/img/Adwcleaner-basic-repair-actions.png?raw=true' -OutFile 'C:\winpstoolboxgui\Adwcleaner-basic-repair-actions.png'
    
    $ProgressBar1.value = 10
    Show-Feedback 'Downloading AdwCleaner from MalwareBytes' -Wait $true
    Invoke-WebRequest -Uri 'https://adwcleaner.malwarebytes.com/adwcleaner?channel=release' -OutFile 'C:\winpstoolboxgui\adwcleaner.exe'
    $ProgressBar1.value = 60

    Show-Feedback 'AdwCleaner downloaded, now launching it and displaying settings image' -Ready $true
    $ProgressBar1.value = 100
    Start-Process 'C:\winpstoolboxgui\adwcleaner.exe' 
    Start-Sleep -s 5
    $ProgressBar1.value = 0
    Start-Process "C:\winpstoolboxgui\Adwcleaner-basic-repair-actions.png"
}

function FRST { 
    Show-Feedback 'Downloading SlyDelvs FRST Downloader Updater...' -Wait $true
    Invoke-WebRequest -Uri 'https://github.com/slydelv/FRST-Download-Update/releases/download/Release/FRST-Download-Update.exe' -OutFile 'C:\winpstoolboxgui\FRST-Download-Update.exe'

    Show-Feedback 'FRST Downloader Updater has been downloaded, it will now launch and download FRST for you' -Ready $true
	Start-Process 'C:\winpstoolboxgui\FRST-Download-Update.exe'
}


function ClearDiscordCache { 
    Show-Feedback "Closing Discord and clearing the Discord cache" -Wait $true
    taskkill /im discord.exe /f
    rmdir /r /q "%appdata%/discord/cache"
    Show-Feedback "Cleared Discord Cache. You can open Discord again." -Ready $true
}

function WinUpdateReset { 
    
}

function Placeholder { 
    Show-Feedback "Test"
}

function ChkDskC { 
    ShowConsole
    Show-Feedback "Checking the file system for errors. Watch the progress bar. The toolbox might lock up, that's normal." -Wait $true

    $chkdsk1 = cmd /c chkdsk C: /scan '2>&1' | ForEach-Object {
        $_ -match "Stage:\s+(\d+)%;\s+Total:\s+(\d+)%;"
        if ($Matches.count -gt 0) {
            $ChkDskTotal = $Matches.2
            $ProgressBar1.value = $ChkDskTotal
        }
    }

    if ($chkdsk1 -like "*Windows has made corrections to the file system*") {
        Show-Feedback "Chkdsk found some errors and corrected them." -Ready $true
    } elseif ($chkdsk1 -like "*Windows has checked the file system and found problems*") {
        Show-Feedback "Chkdsk found corruption." + "`r`n" + "Launching repair function..." -Wait $true
        ChkDskCFX
    } elseif ($chkdsk1 -like "*Windows has scanned the file system and found no problems.*") {
        Show-Feedback "Chkdsk found no problems." -Ready $true
    } elseif ($chkdsk1 -like "*Run CHKDSK with the /F (fix) option to correct these.*") {
        Show-Feedback "Chkdsfound corruption." + "`r`n" + "Launching repair function..." -Wait $true
        ChkDskCFXk 
    }

    #PowerShell psinstance1 = PowerShell.Create();
    #psinstance1.AddScript(scriptPath);
    #var results = psinstance1.Invoke();
}

function InstallKIS {
    $packageFullName = "Kaspersky Internet Security (KIS)"
    $package = "kis"
    
    InstallChocoPackage($package, $packageFullName)
}

function ESETNod32 {
    Write-Host "Installing ESET.Nod32"
    $ResultText.text = "Installing ESET.Nod32... Please Wait" 
    $ProgressBar1.value = 10
    winget install -e ESET.Nod32 | Out-Host
    $ProgressBar1.value = 50
    if ($?) { Write-Host "Installed ESET.Nod32" }
    $ProgressBar1.value = 100
    $ResultText.text = "Finished Installing ESET.Nod32" + "`r`n" + "Ready for Next Task"
}

function MBAMSetup {
    Write-Host "Installing MalwareBytes"
    $ResultText.text = "Installing MalwareBytes... Please Wait" 
    $ProgressBar1.value = 10
    winget install -e Malwarebytes.Malwarebytes | Out-Host
    $ProgressBar1.value = 50
    if ($?) { Write-Host "Installed MalwareBytes" }
    $ProgressBar1.value = 100
    $ResultText.text = "Finished Installing MalwareBytes" + "`r`n" + "Ready for Next Task"
}

function RKill {
    ShowConsole
    
    Remove-Item -Path 'C:\winpstoolboxgui\rkill.exe' -Force -ErrorAction SilentlyContinue
    
    $ProgressBar1.value = 10
    Show-Feedback 'Downloading RKill from Bleeping Computer' -Wait $true  
    
    $destination = "C:\winpstoolboxgui\rkill.exe"
    $source1 = Invoke-WebRequest "https://www.bleepingcomputer.com/download/rkill/dl/10/" -MaximumRedirection 0
    $ProgressBar1.value = 30
    $source2 = $source1.Links | Where-Object {$_.innerText -eq "click here"} | Select-Object -Expand href
    
    $ProgressBar1.value = 70
    
    Invoke-WebRequest $source2 -OutFile $destination 
    
    Show-Feedback 'RKill downloaded, now launching it' -Ready $true

    $ProgressBar1.value = 100
    Start-Process 'C:\winpstoolboxgui\rkill.exe'
    #Start-Sleep -s 5
    $ProgressBar1.value = 0
    
}

function HitmanPro64 {
    ShowConsole
    Remove-Item -Path 'C:\winpstoolboxgui\HitmanPro_x64.exe' -Force -ErrorAction SilentlyContinue
    $ProgressBar1.value = 10
    Write-Host 'Downloading HitmanPro_x64 from Bleeping Computer, please wait...'
    $ResultText.text = "Downloading HitmanPro_x64 from Bleeping Computer, please wait..." 
    
    $destination = "C:\winpstoolboxgui\HitmanPro_x64.exe"
    $source1 = Invoke-WebRequest "https://www.bleepingcomputer.com/download/hitmanpro/dl/176" -MaximumRedirection 0
    $ProgressBar1.value = 30
    $source2 = $source1.Links | Where-Object {$_.innerText -eq "click here"} | Select-Object -Expand href
    $ProgressBar1.value = 70
    Invoke-WebRequest $source2 -OutFile $destination 
    
    Write-Host 'HitmanPro_x64 downloaded, now launching it'
    $ResultText.text = "HitmanPro_x64 downloaded, now launching it" + "`r`n" + "Ready for Next Task"
    
    $ProgressBar1.value = 100
    Start-Process 'C:\winpstoolboxgui\HitmanPro_x64.exe'
    #Start-Sleep -s 5
    $ProgressBar1.value = 0
    
}

function InstallChecked {
    ShowConsole
    $selectableItems = @(
		[pscustomobject]@{Value = $ChkInstallBrave.Checked; Title = 'Brave'; Command = 'winget install -e --id BraveSoftware.BraveBrowser;'}, 
		[pscustomobject]@{Value = $ChkInstallChrome.Checked; Title = 'Chrome'; Command = 'winget install -e --id Google.Chrome;'}, 
		[pscustomobject]@{Value = $ChkInstall7Zip.Checked; Title = '7Zip'; Command = 'winget install -e --id 7zip.7zip;'}, 
		[pscustomobject]@{Value = $ChkInstallFirefox.Checked; Title = ' Firefox'; Command = 'winget install -e --id Mozilla.Firefox;'}, 
		[pscustomobject]@{Value = $ChkInstallVLC.Checked; Title = 'VLC'; Command = 'winget install -e --id VideoLAN.VLC;'}, 
		[pscustomobject]@{Value = $ChkInstallNotepadpp.Checked; Title = 'Notepad++'; Command = 'winget install -e --id Notepad++.Notepad++;'}, 
		[pscustomobject]@{Value = $ChkInstallSumatra.Checked; Title = 'SumatraPDF'; Command = 'winget install -e --id SumatraPDF.SumatraPDF;'}, 
        [pscustomobject]@{Value = $ChkInstallBitwarden.Checked; Title = 'BitWarden'; Command = 'winget install -e --id Bitwarden.Bitwarden;'}
		[pscustomobject]@{Value = $ChkInstallKeePass.Checked; Title = 'KeePass'; Command = 'winget install -e --id DominikReichl.KeePass;'}
        [pscustomobject]@{Value = $ChkInstallKeePass.Checked; Title = 'HWiNFO'; Command = 'winget install -e --id REALiX.HWiNFO;'}
	)
    
	$selectedItems = $selectableItems | Where-Object {$_.Value -eq $true}
	$command = $selectedItems.Command -Join " "
	$titles = $selectedItems.Title -Join " "
	
    Show-Feedback "Installing selected items: $titles" -Wait $true
	
	Invoke-Expression $command | Out-Host
	
    Show-Feedback 'Finished installing checked programs' -Ready $true
}

function InstallCheckedChoco {
    ShowConsole

    $selectableItems = @(
		[pscustomobject]@{Value = $ChkInstallBrave.Checked; Title = 'Brave'; Command = 'brave'}, 
		[pscustomobject]@{Value = $ChkInstallChrome.Checked; Title = 'Chrome'; Command = 'googlechrome'}, 
		[pscustomobject]@{Value = $ChkInstall7Zip.Checked; Title = '7Zip'; Command = '7zip.install'}, 
		[pscustomobject]@{Value = $ChkInstallFirefox.Checked; Title = ' Firefox'; Command = 'firefox'}, 
		[pscustomobject]@{Value = $ChkInstallVLC.Checked; Title = 'VLC'; Command = 'vlc'}, 
		[pscustomobject]@{Value = $ChkInstallNotepadpp.Checked; Title = 'Notepad++'; Command = 'notepadplusplus'}, 
		[pscustomobject]@{Value = $ChkInstallSumatra.Checked; Title = 'SumatraPDF'; Command = 'sumatrapdf'}, 
		[pscustomobject]@{Value = $ChkInstallBitwarden.Checked; Title = 'BitWarden'; Command = 'bitwarden'}
        [pscustomobject]@{Value = $ChkInstallKeePass.Checked; Title = 'KeePass'; Command = 'keepass'}
        [pscustomobject]@{Value = $ChkInstallKeePass.Checked; Title = 'Everything'; Command = 'everything'}
        [pscustomobject]@{Value = $ChkInstallKeePass.Checked; Title = 'HWiNFO'; Command = 'hwinfo.install'}
	)

    $selectedItems = $selectableItems | Where-Object {$_.Value -eq $true}
    $command = "choco install " + ($selectedItems.Command -Join " ") + " /y"
    $titles = $selectedItems.Title -Join " "

    Show-Feedback "Installing selected items with choco: $titles" -Wait $true
	
	Invoke-Expression $command | Out-Host
	
    Show-Feedback 'Finished installing checked programs with choco' -Ready $true
}

function SophiaApp {
    Show-Feedback 'Downloading SophiApp' -Wait $true
    irm app.sophi.app -useb | iex
    Show-Feedback 'Downloaded SophiApp, Enjoy' -Ready -$true
}

function InstallHWiNFO {
    Show-Feedback "Installing HWiNFO" -Wait $true

    winget install -e REALiX.HWiNFO | Out-Host
    if ($?) { Write-Host "Installed HWiNFO" }

    Show-Feedback "Finished Installing HWiNFO" -Ready $true
}

function EnableBGApps {
    Show-Feedback "Allowing background apps (again)" -Wait $true

	Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
		Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue
	}

    Show-Feedback "Done - reverted to stock settings" -Ready $true
}

function DisableBGApps {
    Show-Feedback "Disabling unnecessary background application access... " -Wait $true

    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
        Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
        Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
    }

    Show-Feedback "Disabled Background application access" -Ready $true
}