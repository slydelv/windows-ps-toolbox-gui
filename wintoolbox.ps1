
<# 
.NAME
    WindowsGUIToolbox
.FUNCTIONALITY
    ./././
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$WindowsGUIToolbox               = New-Object system.Windows.Forms.Form
$WindowsGUIToolbox.ClientSize    = New-Object System.Drawing.Point(868,780)
$WindowsGUIToolbox.text          = "Windows PS Toolbox with GUI"
$WindowsGUIToolbox.TopMost       = $false
$WindowsGUIToolbox.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#123764")

$LblTitle                        = New-Object system.Windows.Forms.Label
$LblTitle.text                   = "Windows PowerShell Toolbox with GUI"
$LblTitle.AutoSize               = $true
$LblTitle.width                  = 335
$LblTitle.height                 = 12
$LblTitle.location               = New-Object System.Drawing.Point(155,15)
$LblTitle.Font                   = New-Object System.Drawing.Font('Verdana',14)
$LblTitle.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Logo                            = New-Object system.Windows.Forms.PictureBox
$Logo.width                      = 141
$Logo.height                     = 110
$Logo.location                   = New-Object System.Drawing.Point(3,8)
$Logo.imageLocation              = "https://github.com/slydelv/windows-ps-toolbox-gui/blob/main/img/PCHH-Logo.png?raw=true"
$Logo.SizeMode                   = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$GrpInstallUtils                 = New-Object system.Windows.Forms.Groupbox
$GrpInstallUtils.height          = 250
$GrpInstallUtils.width           = 270
$GrpInstallUtils.location        = New-Object System.Drawing.Point(15,140)
$GrpInstallUtils.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#0d2d55")

$LblInstallUtils                 = New-Object system.Windows.Forms.Label
$LblInstallUtils.text            = "Install Utilities"
$LblInstallUtils.AutoSize        = $true
$LblInstallUtils.width           = 25
$LblInstallUtils.height          = 10
$LblInstallUtils.location        = New-Object System.Drawing.Point(10,10)
$LblInstallUtils.Font            = New-Object System.Drawing.Font('Verdana',16)
$LblInstallUtils.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnDownloadSophiaApp            = New-Object system.Windows.Forms.Button
$BtnDownloadSophiaApp.text       = "SophiApp"
$BtnDownloadSophiaApp.width      = 120
$BtnDownloadSophiaApp.height     = 30
$BtnDownloadSophiaApp.location   = New-Object System.Drawing.Point(10,160)
$BtnDownloadSophiaApp.Font       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDownloadSophiaApp.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnDownloadSophiaApp.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Placeholder"
$Button4.width                   = 120
$Button4.height                  = 30
$Button4.location                = New-Object System.Drawing.Point(140,160)
$Button4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button4.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")
$Button4.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$GrpRepairUtils                  = New-Object system.Windows.Forms.Groupbox
$GrpRepairUtils.height           = 250
$GrpRepairUtils.width            = 270
$GrpRepairUtils.location         = New-Object System.Drawing.Point(300,140)
$GrpRepairUtils.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#0d2d55")

$LblRepairUtils                  = New-Object system.Windows.Forms.Label
$LblRepairUtils.text             = "Repair Utilities"
$LblRepairUtils.AutoSize         = $true
$LblRepairUtils.width            = 25
$LblRepairUtils.height           = 10
$LblRepairUtils.location         = New-Object System.Drawing.Point(10,10)
$LblRepairUtils.Font             = New-Object System.Drawing.Font('Verdana',16)
$LblRepairUtils.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnChkDsk                       = New-Object system.Windows.Forms.Button
$BtnChkDsk.text                  = "Chkdsk C: (Auto)"
$BtnChkDsk.width                 = 120
$BtnChkDsk.height                = 30
$BtnChkDsk.location              = New-Object System.Drawing.Point(10,40)
$BtnChkDsk.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnChkDsk.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnChkDsk.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$ResultText                      = New-Object system.Windows.Forms.TextBox
$ResultText.multiline            = $true
$ResultText.width                = 222
$ResultText.height               = 128
$ResultText.enabled              = $false
$ResultText.location             = New-Object System.Drawing.Point(633,7)
$ResultText.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$BtnChkDskR                      = New-Object system.Windows.Forms.Button
$BtnChkDskR.text                 = "Chkdsk C: /R"
$BtnChkDskR.width                = 120
$BtnChkDskR.height               = 30
$BtnChkDskR.location             = New-Object System.Drawing.Point(140,40)
$BtnChkDskR.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnChkDskR.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnChkDskR.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnChkDskChoice                 = New-Object system.Windows.Forms.Button
$BtnChkDskChoice.text            = "Chkdsk Custom"
$BtnChkDskChoice.width           = 120
$BtnChkDskChoice.height          = 30
$BtnChkDskChoice.location        = New-Object System.Drawing.Point(10,80)
$BtnChkDskChoice.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnChkDskChoice.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnChkDskChoice.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$WinForm1                        = New-Object system.Windows.Forms.Form
$WinForm1.ClientSize             = New-Object System.Drawing.Point(900,800)
$WinForm1.text                   = "Windows GUI Toolbox"
$WinForm1.TopMost                = $false
$WinForm1.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#323951")

$BtnChkDsScan                    = New-Object system.Windows.Forms.Button
$BtnChkDsScan.text               = "Chkdsk Scan"
$BtnChkDsScan.width              = 120
$BtnChkDsScan.height             = 30
$BtnChkDsScan.location           = New-Object System.Drawing.Point(140,80)
$BtnChkDsScan.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnChkDsScan.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnChkDsScan.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnShowConsole                  = New-Object system.Windows.Forms.Button
$BtnShowConsole.text             = "Show Console"
$BtnShowConsole.width            = 110
$BtnShowConsole.height           = 20
$BtnShowConsole.location         = New-Object System.Drawing.Point(629,753)
$BtnShowConsole.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnShowConsole.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#515151")

$BtnHideConsole                  = New-Object system.Windows.Forms.Button
$BtnHideConsole.text             = "Hide Console"
$BtnHideConsole.width            = 110
$BtnHideConsole.height           = 20
$BtnHideConsole.location         = New-Object System.Drawing.Point(745,753)
$BtnHideConsole.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnHideConsole.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#515151")

$BtnSFC                          = New-Object system.Windows.Forms.Button
$BtnSFC.text                     = "SFC Scan"
$BtnSFC.width                    = 120
$BtnSFC.height                   = 30
$BtnSFC.location                 = New-Object System.Drawing.Point(10,120)
$BtnSFC.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnSFC.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnSFC.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDISMSpace                    = New-Object system.Windows.Forms.Button
$BtnDISMSpace.text               = "DISM Space"
$BtnDISMSpace.width              = 120
$BtnDISMSpace.height             = 30
$BtnDISMSpace.location           = New-Object System.Drawing.Point(140,160)
$BtnDISMSpace.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDISMSpace.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnDISMSpace.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDISMHealth                   = New-Object system.Windows.Forms.Button
$BtnDISMHealth.text              = "DISM Health"
$BtnDISMHealth.width             = 120
$BtnDISMHealth.height            = 30
$BtnDISMHealth.location          = New-Object System.Drawing.Point(10,159)
$BtnDISMHealth.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDISMHealth.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnDISMHealth.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDeleteTemp                   = New-Object system.Windows.Forms.Button
$BtnDeleteTemp.text              = "Clear Temp Files"
$BtnDeleteTemp.width             = 120
$BtnDeleteTemp.height            = 30
$BtnDeleteTemp.location          = New-Object System.Drawing.Point(140,120)
$BtnDeleteTemp.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDeleteTemp.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnDeleteTemp.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 250
$Groupbox1.width                 = 270
$Groupbox1.location              = New-Object System.Drawing.Point(585,140)
$Groupbox1.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#0d2d55")

$BtnAppList                      = New-Object system.Windows.Forms.Button
$BtnAppList.text                 = "App List"
$BtnAppList.width                = 120
$BtnAppList.height               = 30
$BtnAppList.location             = New-Object System.Drawing.Point(10,40)
$BtnAppList.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnAppList.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnAppList.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnNetworkSettings              = New-Object system.Windows.Forms.Button
$BtnNetworkSettings.text         = "Network Info"
$BtnNetworkSettings.width        = 120
$BtnNetworkSettings.height       = 30
$BtnNetworkSettings.location     = New-Object System.Drawing.Point(10,120)
$BtnNetworkSettings.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnNetworkSettings.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnNetworkSettings.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDisableFastStartup           = New-Object system.Windows.Forms.Button
$BtnDisableFastStartup.text      = "Disable FastStart"
$BtnDisableFastStartup.width     = 120
$BtnDisableFastStartup.height    = 30
$BtnDisableFastStartup.location  = New-Object System.Drawing.Point(10,80)
$BtnDisableFastStartup.Font      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDisableFastStartup.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnDisableFastStartup.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnWinUpdateReset               = New-Object system.Windows.Forms.Button
$BtnWinUpdateReset.text          = "Win Update Reset"
$BtnWinUpdateReset.width         = 120
$BtnWinUpdateReset.height        = 30
$BtnWinUpdateReset.location      = New-Object System.Drawing.Point(10,200)
$BtnWinUpdateReset.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$BtnWinUpdateReset.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")
$BtnWinUpdateReset.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Groupbox2                       = New-Object system.Windows.Forms.Groupbox
$Groupbox2.height                = 350
$Groupbox2.width                 = 270
$Groupbox2.location              = New-Object System.Drawing.Point(15,400)
$Groupbox2.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#0d2d55")

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Tweaks"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(10,10)
$Label1.Font                     = New-Object System.Drawing.Font('Verdana',16)
$Label1.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Info"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(10,10)
$Label2.Font                     = New-Object System.Drawing.Font('Verdana',16)
$Label2.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnHwInfo                       = New-Object system.Windows.Forms.Button
$BtnHwInfo.text                  = "Hardware Info"
$BtnHwInfo.width                 = 120
$BtnHwInfo.height                = 30
$BtnHwInfo.location              = New-Object System.Drawing.Point(140,40)
$BtnHwInfo.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnHwInfo.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnHwInfo.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnOsInfo                       = New-Object system.Windows.Forms.Button
$BtnOsInfo.text                  = "OS Info"
$BtnOsInfo.width                 = 120
$BtnOsInfo.height                = 30
$BtnOsInfo.location              = New-Object System.Drawing.Point(10,80)
$BtnOsInfo.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnOsInfo.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnOsInfo.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Groupbox3                       = New-Object system.Windows.Forms.Groupbox
$Groupbox3.height                = 350
$Groupbox3.width                 = 270
$Groupbox3.location              = New-Object System.Drawing.Point(300,400)
$Groupbox3.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#0d2d55")

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "Install Software"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(10,10)
$Label3.Font                     = New-Object System.Drawing.Font('Verdana',16)
$Label3.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnEssentialTweaks              = New-Object system.Windows.Forms.Button
$BtnEssentialTweaks.text         = "Essential Tweaks"
$BtnEssentialTweaks.width        = 120
$BtnEssentialTweaks.height       = 30
$BtnEssentialTweaks.location     = New-Object System.Drawing.Point(10,40)
$BtnEssentialTweaks.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnEssentialTweaks.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnEssentialTweaks.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnUndoEssential                = New-Object system.Windows.Forms.Button
$BtnUndoEssential.text           = "Undo Essential"
$BtnUndoEssential.width          = 120
$BtnUndoEssential.height         = 30
$BtnUndoEssential.location       = New-Object System.Drawing.Point(140,40)
$BtnUndoEssential.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnUndoEssential.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnUndoEssential.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnEnableFastStart              = New-Object system.Windows.Forms.Button
$BtnEnableFastStart.text         = "Enable FastStart"
$BtnEnableFastStart.width        = 120
$BtnEnableFastStart.height       = 30
$BtnEnableFastStart.location     = New-Object System.Drawing.Point(140,80)
$BtnEnableFastStart.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnEnableFastStart.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnEnableFastStart.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDisableCortana               = New-Object system.Windows.Forms.Button
$BtnDisableCortana.text          = "Disable Cortana"
$BtnDisableCortana.width         = 120
$BtnDisableCortana.height        = 30
$BtnDisableCortana.location      = New-Object System.Drawing.Point(10,120)
$BtnDisableCortana.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDisableCortana.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnDisableCortana.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnEnableCortana                = New-Object system.Windows.Forms.Button
$BtnEnableCortana.text           = "Enable Cortana"
$BtnEnableCortana.width          = 120
$BtnEnableCortana.height         = 30
$BtnEnableCortana.location       = New-Object System.Drawing.Point(140,120)
$BtnEnableCortana.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnEnableCortana.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnEnableCortana.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnRunningServices              = New-Object system.Windows.Forms.Button
$BtnRunningServices.text         = "Running Services"
$BtnRunningServices.width        = 120
$BtnRunningServices.height       = 30
$BtnRunningServices.location     = New-Object System.Drawing.Point(140,80)
$BtnRunningServices.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',9)
$BtnRunningServices.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnRunningServices.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDisableBGApps                = New-Object system.Windows.Forms.Button
$BtnDisableBGApps.text           = "Disable BG Apps"
$BtnDisableBGApps.width          = 120
$BtnDisableBGApps.height         = 30
$BtnDisableBGApps.location       = New-Object System.Drawing.Point(10,160)
$BtnDisableBGApps.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDisableBGApps.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnDisableBGApps.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnEnableBGApps                 = New-Object system.Windows.Forms.Button
$BtnEnableBGApps.text            = "Enable BG Apps"
$BtnEnableBGApps.width           = 120
$BtnEnableBGApps.height          = 30
$BtnEnableBGApps.location        = New-Object System.Drawing.Point(140,160)
$BtnEnableBGApps.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnEnableBGApps.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnEnableBGApps.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnPerfFX                       = New-Object system.Windows.Forms.Button
$BtnPerfFX.text                  = "Perf FX"
$BtnPerfFX.width                 = 120
$BtnPerfFX.height                = 30
$BtnPerfFX.location              = New-Object System.Drawing.Point(10,200)
$BtnPerfFX.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnPerfFX.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnPerfFX.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnVisualFX                     = New-Object system.Windows.Forms.Button
$BtnVisualFX.text                = "Visual FX"
$BtnVisualFX.width               = 120
$BtnVisualFX.height              = 30
$BtnVisualFX.location            = New-Object System.Drawing.Point(140,200)
$BtnVisualFX.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnVisualFX.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnVisualFX.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnBlockEpicBloat               = New-Object system.Windows.Forms.Button
$BtnBlockEpicBloat.text          = "Block EpicBloat"
$BtnBlockEpicBloat.width         = 120
$BtnBlockEpicBloat.height        = 30
$BtnBlockEpicBloat.location      = New-Object System.Drawing.Point(10,240)
$BtnBlockEpicBloat.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnBlockEpicBloat.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnBlockEpicBloat.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnBlockAds                     = New-Object system.Windows.Forms.Button
$BtnBlockAds.text                = "Block Ads"
$BtnBlockAds.width               = 120
$BtnBlockAds.height              = 30
$BtnBlockAds.location            = New-Object System.Drawing.Point(140,240)
$BtnBlockAds.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnBlockAds.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnBlockAds.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Author: slydelv (sly#7558), with credit to: "
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(155,45)
$Label6.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label6.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "ChrisTitusTech (for some of the tweak functions)"
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(155,65)
$Label7.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label7.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.text                     = "Red = TBC. Orange = Testing. Yellow = Should be working. Green = Working."
$Label8.AutoSize                 = $true
$Label8.width                    = 25
$Label8.height                   = 10
$Label8.location                 = New-Object System.Drawing.Point(5,760)
$Label8.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label8.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#aeaeae")

$ToolTipTweaks                   = New-Object system.Windows.Forms.ToolTip

$ToolTipUntoTweaks               = New-Object system.Windows.Forms.ToolTip

$ToolTipUtils                    = New-Object system.Windows.Forms.ToolTip

$ToolTipRepairUtils              = New-Object system.Windows.Forms.ToolTip

$ToolTipInfo                     = New-Object system.Windows.Forms.ToolTip

$ToolTipInstallSoftware          = New-Object system.Windows.Forms.ToolTip

$BtnStartSearchOff               = New-Object system.Windows.Forms.Button
$BtnStartSearchOff.text          = "Start Search Off"
$BtnStartSearchOff.width         = 120
$BtnStartSearchOff.height        = 30
$BtnStartSearchOff.location      = New-Object System.Drawing.Point(10,280)
$BtnStartSearchOff.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',9)
$BtnStartSearchOff.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnStartSearchOff.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnStartSearchOn                = New-Object system.Windows.Forms.Button
$BtnStartSearchOn.text           = "Start Search On"
$BtnStartSearchOn.width          = 120
$BtnStartSearchOn.height         = 30
$BtnStartSearchOn.location       = New-Object System.Drawing.Point(140,280)
$BtnStartSearchOn.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',9)
$BtnStartSearchOn.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnStartSearchOn.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Label9                          = New-Object system.Windows.Forms.Label
$Label9.text                     = "ID: 571342175678234640"
$Label9.AutoSize                 = $true
$Label9.width                    = 25
$Label9.height                   = 10
$Label9.location                 = New-Object System.Drawing.Point(16,126)
$Label9.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$Label9.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$ChkInstallBrave                 = New-Object system.Windows.Forms.CheckBox
$ChkInstallBrave.text            = "Brave"
$ChkInstallBrave.AutoSize        = $false
$ChkInstallBrave.width           = 100
$ChkInstallBrave.height          = 20
$ChkInstallBrave.location        = New-Object System.Drawing.Point(13,40)
$ChkInstallBrave.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallBrave.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstallChrome                = New-Object system.Windows.Forms.CheckBox
$ChkInstallChrome.text           = "Chrome"
$ChkInstallChrome.AutoSize       = $false
$ChkInstallChrome.width          = 100
$ChkInstallChrome.height         = 20
$ChkInstallChrome.location       = New-Object System.Drawing.Point(133,40)
$ChkInstallChrome.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallChrome.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstall7zip                  = New-Object system.Windows.Forms.CheckBox
$ChkInstall7zip.text             = "7-Zip"
$ChkInstall7zip.AutoSize         = $false
$ChkInstall7zip.width            = 100
$ChkInstall7zip.height           = 20
$ChkInstall7zip.location         = New-Object System.Drawing.Point(13,60)
$ChkInstall7zip.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstall7zip.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnInstallChecked               = New-Object system.Windows.Forms.Button
$BtnInstallChecked.text          = "Install (WinGet)"
$BtnInstallChecked.width         = 120
$BtnInstallChecked.height        = 30
$BtnInstallChecked.location      = New-Object System.Drawing.Point(10,308)
$BtnInstallChecked.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallChecked.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnInstallChecked.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$ChkInstallFirefox               = New-Object system.Windows.Forms.CheckBox
$ChkInstallFirefox.text          = "Firefox"
$ChkInstallFirefox.AutoSize      = $false
$ChkInstallFirefox.width         = 100
$ChkInstallFirefox.height        = 20
$ChkInstallFirefox.location      = New-Object System.Drawing.Point(133,60)
$ChkInstallFirefox.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallFirefox.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstallVLC                   = New-Object system.Windows.Forms.CheckBox
$ChkInstallVLC.text              = "VLC"
$ChkInstallVLC.AutoSize          = $false
$ChkInstallVLC.width             = 100
$ChkInstallVLC.height            = 20
$ChkInstallVLC.location          = New-Object System.Drawing.Point(13,80)
$ChkInstallVLC.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallVLC.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstallNotepadpp             = New-Object system.Windows.Forms.CheckBox
$ChkInstallNotepadpp.text        = "Notepad++"
$ChkInstallNotepadpp.AutoSize    = $false
$ChkInstallNotepadpp.width       = 100
$ChkInstallNotepadpp.height      = 20
$ChkInstallNotepadpp.location    = New-Object System.Drawing.Point(133,80)
$ChkInstallNotepadpp.Font        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallNotepadpp.ForeColor   = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstallSumatra               = New-Object system.Windows.Forms.CheckBox
$ChkInstallSumatra.text          = "SumatraPDF"
$ChkInstallSumatra.AutoSize      = $false
$ChkInstallSumatra.width         = 110
$ChkInstallSumatra.height        = 20
$ChkInstallSumatra.location      = New-Object System.Drawing.Point(13,100)
$ChkInstallSumatra.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallSumatra.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstallKeePass               = New-Object system.Windows.Forms.CheckBox
$ChkInstallKeePass.text          = "KeePass"
$ChkInstallKeePass.AutoSize      = $false
$ChkInstallKeePass.width         = 100
$ChkInstallKeePass.height        = 20
$ChkInstallKeePass.location      = New-Object System.Drawing.Point(133,100)
$ChkInstallKeePass.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallKeePass.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Groupbox4                       = New-Object system.Windows.Forms.Groupbox
$Groupbox4.height                = 350
$Groupbox4.width                 = 270
$Groupbox4.location              = New-Object System.Drawing.Point(585,400)
$Groupbox4.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#0d2d55")

$Label10                         = New-Object system.Windows.Forms.Label
$Label10.text                    = "Cyber Security"
$Label10.AutoSize                = $true
$Label10.width                   = 25
$Label10.height                  = 10
$Label10.location                = New-Object System.Drawing.Point(10,10)
$Label10.Font                    = New-Object System.Drawing.Font('Verdana',16)
$Label10.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnFarbar                       = New-Object system.Windows.Forms.Button
$BtnFarbar.text                  = "Farbar FRST"
$BtnFarbar.width                 = 120
$BtnFarbar.height                = 30
$BtnFarbar.location              = New-Object System.Drawing.Point(10,40)
$BtnFarbar.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnFarbar.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnFarbar.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$ToolTipCyberSec                 = New-Object system.Windows.Forms.ToolTip
$ToolTipCyberSec.ToolTipTitle    = "CyberSec Help"

$BtnAdwCleaner                   = New-Object system.Windows.Forms.Button
$BtnAdwCleaner.text              = "AdwCleaner"
$BtnAdwCleaner.width             = 120
$BtnAdwCleaner.height            = 30
$BtnAdwCleaner.location          = New-Object System.Drawing.Point(140,40)
$BtnAdwCleaner.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnAdwCleaner.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnAdwCleaner.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$ProgressBar1                    = New-Object system.Windows.Forms.ProgressBar
$ProgressBar1.width              = 240
$ProgressBar1.height             = 16
$ProgressBar1.value              = 0
$ProgressBar1.location           = New-Object System.Drawing.Point(386,116)

$BtnHitmanPro64                  = New-Object system.Windows.Forms.Button
$BtnHitmanPro64.text             = "HitmanPro x64"
$BtnHitmanPro64.width            = 120
$BtnHitmanPro64.height           = 30
$BtnHitmanPro64.location         = New-Object System.Drawing.Point(10,80)
$BtnHitmanPro64.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnHitmanPro64.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnHitmanPro64.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnHitmanPro32                  = New-Object system.Windows.Forms.Button
$BtnHitmanPro32.text             = "HitmanPro x32"
$BtnHitmanPro32.width            = 120
$BtnHitmanPro32.height           = 30
$BtnHitmanPro32.location         = New-Object System.Drawing.Point(140,80)
$BtnHitmanPro32.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnHitmanPro32.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnHitmanPro32.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnRKill                        = New-Object system.Windows.Forms.Button
$BtnRKill.text                   = "RKill"
$BtnRKill.width                  = 120
$BtnRKill.height                 = 30
$BtnRKill.location               = New-Object System.Drawing.Point(10,120)
$BtnRKill.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnRKill.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnRKill.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnMBAMSetup                    = New-Object system.Windows.Forms.Button
$BtnMBAMSetup.text               = "MalwareBytes"
$BtnMBAMSetup.width              = 120
$BtnMBAMSetup.height             = 30
$BtnMBAMSetup.location           = New-Object System.Drawing.Point(140,120)
$BtnMBAMSetup.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnMBAMSetup.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnMBAMSetup.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnNod32                        = New-Object system.Windows.Forms.Button
$BtnNod32.text                   = "ESET Nod32"
$BtnNod32.width                  = 120
$BtnNod32.height                 = 30
$BtnNod32.location               = New-Object System.Drawing.Point(10,160)
$BtnNod32.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnNod32.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnNod32.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnKIS                          = New-Object system.Windows.Forms.Button
$BtnKIS.text                     = "Kaspersky - KIS"
$BtnKIS.width                    = 120
$BtnKIS.height                   = 30
$BtnKIS.location                 = New-Object System.Drawing.Point(140,160)
$BtnKIS.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnKIS.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$BtnKIS.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnClearDiscordCache            = New-Object system.Windows.Forms.Button
$BtnClearDiscordCache.text       = "Clr Discord Cache"
$BtnClearDiscordCache.width      = 120
$BtnClearDiscordCache.height     = 30
$BtnClearDiscordCache.location   = New-Object System.Drawing.Point(140,200)
$BtnClearDiscordCache.Font       = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$BtnClearDiscordCache.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnClearDiscordCache.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "EmKaCe (for ChkDsk handling)"
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(155,84)
$Label4.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label4.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "Current Process Progress:"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(388,100)
$Label5.Font                     = New-Object System.Drawing.Font('Verdana',10)
$Label5.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnRunAsAdmin                   = New-Object system.Windows.Forms.Button
$BtnRunAsAdmin.text              = "Run as Admin"
$BtnRunAsAdmin.width             = 110
$BtnRunAsAdmin.height            = 20
$BtnRunAsAdmin.location          = New-Object System.Drawing.Point(514,753)
$BtnRunAsAdmin.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnRunAsAdmin.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#515151")

$BtnInstallCheckedChoco          = New-Object system.Windows.Forms.Button
$BtnInstallCheckedChoco.text     = "Install (Choco)"
$BtnInstallCheckedChoco.width    = 120
$BtnInstallCheckedChoco.height   = 30
$BtnInstallCheckedChoco.location  = New-Object System.Drawing.Point(140,308)
$BtnInstallCheckedChoco.Font     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallCheckedChoco.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnInstallCheckedChoco.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$ChkInstallBitwarden             = New-Object system.Windows.Forms.CheckBox
$ChkInstallBitwarden.text        = "BitWarden"
$ChkInstallBitwarden.AutoSize    = $false
$ChkInstallBitwarden.width       = 100
$ChkInstallBitwarden.height      = 20
$ChkInstallBitwarden.location    = New-Object System.Drawing.Point(13,120)
$ChkInstallBitwarden.Font        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallBitwarden.ForeColor   = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstallEverything            = New-Object system.Windows.Forms.CheckBox
$ChkInstallEverything.text       = "Everything"
$ChkInstallEverything.AutoSize   = $false
$ChkInstallEverything.width      = 100
$ChkInstallEverything.height     = 20
$ChkInstallEverything.location   = New-Object System.Drawing.Point(133,120)
$ChkInstallEverything.Font       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallEverything.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ChkInstallHwinfo                = New-Object system.Windows.Forms.CheckBox
$ChkInstallHwinfo.text           = "HWiNFO"
$ChkInstallHwinfo.AutoSize       = $false
$ChkInstallHwinfo.width          = 100
$ChkInstallHwinfo.height         = 20
$ChkInstallHwinfo.location       = New-Object System.Drawing.Point(13,139)
$ChkInstallHwinfo.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkInstallHwinfo.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$ToolTipUtils.SetToolTip($BtnDownloadSophiaApp,'Downoads SophiaApp from https://github.com/Sophia-Community/SophiApp')
$ToolTipRepairUtils.SetToolTip($BtnChkDsk,'Runs Chkdsk and if errors are found then run with /x /f')
$ToolTipRepairUtils.SetToolTip($BtnChkDskR,'Runs Chkdsk with /x /f /r')
$ToolTipRepairUtils.SetToolTip($BtnChkDskChoice,'Gives options in the console and then runs chkdsk')
$ToolTipRepairUtils.SetToolTip($BtnChkDsScan,'Runs chkdsk c: /scan')
$ToolTipRepairUtils.SetToolTip($BtnSFC,'Uses SFC to check for corruption and repairs if required')
$ToolTipRepairUtils.SetToolTip($BtnDISMSpace,'Uses DISM /online /Cleanup-Image /AnalyzeComponentStore then reads output and repairs if required')
$ToolTipRepairUtils.SetToolTip($BtnDISMHealth,'Runs DISM /Online /Cleanup-Image /ScanHealth and repairs if required')
$ToolTipRepairUtils.SetToolTip($BtnDeleteTemp,'Clear Temporary Files')
$ToolTipInfo.SetToolTip($BtnAppList,'Dump list of installed applications')
$ToolTipInfo.SetToolTip($BtnNetworkSettings,'Do not click this. It runs dir /s c:\windows\system32 - so takes a while. Script performance test.')
$ToolTipTweaks.SetToolTip($BtnDisableFastStartup,'Disables Windows FastStart - which causes a lot of problems')
$ToolTipInfo.SetToolTip($BtnHwInfo,'Dump list of all hardware')
$ToolTipInfo.SetToolTip($BtnOsInfo,'Dump all operating system information')
$ToolTipTweaks.SetToolTip($BtnEssentialTweaks,'Massive bunch of tweaks, including O&O config import')
$ToolTipUntoTweaks.SetToolTip($BtnUndoEssential,'Unto all the tweaks which were done by the essential tweaks')
$ToolTipTweaks.SetToolTip($BtnEnableFastStart,'Enables Windows FastStart')
$ToolTipTweaks.SetToolTip($BtnDisableCortana,'Disable Cortana')
$ToolTipTweaks.SetToolTip($BtnEnableCortana,'Enable Cortana (Why?)')
$ToolTipInfo.SetToolTip($BtnRunningServices,'List running services')
$ToolTipTweaks.SetToolTip($BtnDisableBGApps,'Disable Useless Background Apps')
$ToolTipTweaks.SetToolTip($BtnEnableBGApps,'Enable Useless Background Apps')
$ToolTipTweaks.SetToolTip($BtnPerfFX,'Set Windows Visual Effects for Performance')
$ToolTipTweaks.SetToolTip($BtnVisualFX,'Set Windows Visual Effects for Visibility')
$ToolTipTweaks.SetToolTip($BtnBlockEpicBloat,'Blocks Epic related hosts which run Epic bloatware')
$ToolTipTweaks.SetToolTip($BtnBlockAds,'Blocks a load of common ad servers')
$ToolTipTweaks.SetToolTip($BtnStartSearchOff,'Disables searching the web and Bing from the start menu. Win 10 2004 and above. You will need to restart.')
$ToolTipTweaks.SetToolTip($BtnStartSearchOn,'Re-enbles searching the web and Bing from the start menu. I do not know why you would want to do this.')
$ToolTipInfo.SetToolTip($ChkInstallBrave,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallChrome,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstall7zip,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallFirefox,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallVLC,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallNotepadpp,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallSumatra,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallKeePass,'Tick this to save the App List as a text file to your desktop')
$ToolTipCyberSec.SetToolTip($BtnFarbar,'Download Farbar FRST')
$ToolTipCyberSec.SetToolTip($BtnAdwCleaner,'Download and run AdwCleaner')
$ToolTipCyberSec.SetToolTip($BtnHitmanPro64,'Download and run HitmanPro x64')
$ToolTipCyberSec.SetToolTip($BtnHitmanPro32,'Download and run HitmanPro x32')
$ToolTipCyberSec.SetToolTip($BtnRKill,'Download and run RKill')
$ToolTipCyberSec.SetToolTip($BtnMBAMSetup,'Download and install MalwareBytes')
$ToolTipCyberSec.SetToolTip($BtnNod32,'Download and install ESET Nod32')
$ToolTipCyberSec.SetToolTip($BtnKIS,'Download and install Kaspersky Internet Security')
$ToolTipRepairUtils.SetToolTip($BtnClearDiscordCache,'Clear Temporary Files')
$ToolTipInfo.SetToolTip($ChkInstallBitwarden,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallEverything,'Tick this to save the App List as a text file to your desktop')
$ToolTipInfo.SetToolTip($ChkInstallHwinfo,'Tick this to save the App List as a text file to your desktop')
$WindowsGUIToolbox.controls.AddRange(@($LblTitle,$Logo,$GrpInstallUtils,$GrpRepairUtils,$ResultText,$BtnShowConsole,$BtnHideConsole,$Groupbox1,$Groupbox2,$Groupbox3,$Label6,$Label7,$Label8,$Label9,$Groupbox4,$ProgressBar1,$Label4,$Label5,$BtnRunAsAdmin))
$GrpInstallUtils.controls.AddRange(@($LblInstallUtils,$BtnDownloadSophiaApp,$Button4))
$GrpRepairUtils.controls.AddRange(@($LblRepairUtils,$BtnChkDsk,$BtnChkDskR,$BtnChkDskChoice,$BtnChkDsScan,$BtnSFC,$BtnDISMSpace,$BtnDISMHealth,$BtnDeleteTemp,$BtnWinUpdateReset,$BtnClearDiscordCache))
$Groupbox1.controls.AddRange(@($BtnAppList,$BtnNetworkSettings,$Label2,$BtnHwInfo,$BtnOsInfo,$BtnRunningServices))
$Groupbox2.controls.AddRange(@($BtnDisableFastStartup,$Label1,$BtnEssentialTweaks,$BtnUndoEssential,$BtnEnableFastStart,$BtnDisableCortana,$BtnEnableCortana,$BtnDisableBGApps,$BtnEnableBGApps,$BtnPerfFX,$BtnVisualFX,$BtnBlockEpicBloat,$BtnBlockAds,$BtnStartSearchOff,$BtnStartSearchOn))
$Groupbox3.controls.AddRange(@($Label3,$ChkInstallBrave,$ChkInstallChrome,$ChkInstall7zip,$BtnInstallChecked,$ChkInstallFirefox,$ChkInstallVLC,$ChkInstallNotepadpp,$ChkInstallSumatra,$ChkInstallKeePass,$BtnInstallCheckedChoco,$ChkInstallBitwarden,$ChkInstallEverything,$ChkInstallHwinfo))
$Groupbox4.controls.AddRange(@($Label10,$BtnFarbar,$BtnAdwCleaner,$BtnHitmanPro64,$BtnHitmanPro32,$BtnRKill,$BtnMBAMSetup,$BtnNod32,$BtnKIS))

$BtnChkDsk.Add_Click({ ChkDskC })
$BtnChkDskR.Add_Click({ ChkDskCR })
$BtnChkDskChoice.Add_Click({ ChkDskChoice })
$BtnChkDsScan.Add_Click({ ChkDskScanOnly })
$BtnShowConsole.Add_Click({ ShowConsole })
$BtnHideConsole.Add_Click({ HideConsole })
$BtnSFC.Add_Click({ SFCScan })
$BtnDISMSpace.Add_Click({ DISMSpace })
$BtnDISMHealth.Add_Click({ DISMHealth })
$BtnDeleteTemp.Add_Click({ ClearTempFiles })
$BtnAppList.Add_Click({ GetAppList })
$BtnNetworkSettings.Add_Click({ DumpNetworkInfo })
$BtnDisableFastStartup.Add_Click({ DisableFastStartup })
$BtnHwInfo.Add_Click({ HwDump })
$BtnOsInfo.Add_Click({ OSInfo })
$BtnEssentialTweaks.Add_Click({ RunEssentialTweaks })
$BtnUndoEssential.Add_Click({ RunUndoEssentialTweaks })
$BtnRunningServices.Add_Click({ RunningServices })
$BtnBlockEpicBloat.Add_Click({ BlockEpicBloat })
$BtnBlockAds.Add_Click({ BlockAds })
$BtnDisableCortana.Add_Click({ DisableCortana })
$BtnEnableCortana.Add_Click({ EnableCortana })
$BtnStartSearchOn.Add_Click({ StartSearchOn })
$BtnStartSearchOff.Add_Click({ StartSearchOff })
$BtnEnableFastStart.Add_Click({ EnableFastStart })
$BtnDisableBGApps.Add_Click({ DisableBGApps })
$BtnEnableBGApps.Add_Click({ EnableBGApps })
$BtnDownloadSophiaApp.Add_Click({ SophiaApp })
$BtnInstallChecked.Add_Click({ InstallChecked })
$BtnFarbar.Add_Click({ FRST })
$BtnAdwCleaner.Add_Click({ AdwCleaner })
$BtnHitmanPro64.Add_Click({ HitmanPro64 })
$BtnRKill.Add_Click({ RKill })
$BtnMBAMSetup.Add_Click({ MBAMSetup })
$BtnNod32.Add_Click({ ESETNod32 })
$BtnKIS.Add_Click({ InstallKIS })
$Button4.Add_Click({ Placeholder })
$BtnWinUpdateReset.Add_Click({ WinUpdateReset })
$BtnClearDiscordCache.Add_Click({ ClearDiscordCache })
$BtnPerfFX.Add_Click({ VisualFxPerformance })
$BtnVisualFX.Add_Click({ VisualFxApperance })
$BtnRunAsAdmin.Add_Click({ RunAsAdmin })
$BtnInstallCheckedChoco.Add_Click({ InstallCheckedChoco })

#region Logic 

function RunAsAdmin { 
    if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    	[System.Windows.Forms.Application]::Exit()
    }    
}

function StartSearchOff { 
    Write-Host "Disabling search suggestions, searching Bing from the Start menu. Good riddance."
    if ( -not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer)) {
        New-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 1 -Type DWord
    
    if ( -not (Test-Path -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer)) {
        New-Item HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 1 -Type DWord
    Write-Host "Okay, it's disabled."
    $ResultText.text = "Disabled searching Bing from Start. Restart to take effect." + "`r`n" + "Ready for Next Task"
}

function StartSearchOn { 
    Write-Host "Enabling search suggestions, searching Bing from the Start menu. You maniac."
    if ( -not (Test-Path -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer)) {
        New-Item HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 0 -Type DWord
    
    if ( -not (Test-Path -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer)) {
        New-Item HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer
    }
    Set-ItemProperty -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name "DisableSearchBoxSuggestions" -Value 0 -Type DWord
    
    Write-Host "Okay, it's enabled."
    $ResultText.text = "Enabled searching Bing from Start (WHY?). Restart to take effect." + "`r`n" + "Ready for Next Task"
}

function EnableCortana { 
    ShowConsole
    Write-Host "Enabling Cortana..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -ErrorAction SilentlyContinue
	if (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
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
    $ResultText.text = "Enabled Cortana and Restored Search" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function DisableCortana { 
    ShowConsole
    Write-Host "Disabling Cortana..."
    if (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0
    if (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
    if (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
    if (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0
    Write-Host "Disabled Cortana"
    $ResultText.text = "Disabled Cortana" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function BlockAds { 
    $adlist= Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/BlockAds.cfg' 
    $adfile = "$env:windir\System32\drivers\etc\hosts"
    $adlist | Add-Content -PassThru $adfile
    $ResultText.text = "Blocked common ad servers" + "`r`n" + "Ready for Next Task"
}

function BlockEpicBloat { 
    $content= Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/EpicGamesBlocklist.cfg' 
    $file = "$env:windir\System32\drivers\etc\hosts"
    $content | Add-Content -PassThru $file
    $ResultText.text = "Blocked Epic Bloatware servers" + "`r`n" + "Ready for Next Task"
}

function InstallVLC { 
    Write-Host "Installing VLC Media Player"
    $ResultText.text = "`r`n" + "Installing VLC Media Player... Please Wait" 
    winget install -e VideoLAN.VLC | Out-Host
    if ($?) { Write-Host "Installed VLC Media Player" }
    $ResultText.text = "Finished Installing VLC Media Player" + "`r`n" + "Ready for Next Task"
}

function InstallNotepad { 
    Write-Host "Installing Notepad++"
    $ResultText.text = "Installing Notepad++... Please Wait" 
    winget install -e Notepad++.Notepad++ | Out-Host
    if ($?) { Write-Host "Installed Notepad++" }
    $ResultText.text = "Finished Installing NotePad++" + "`r`n" + "Ready for Next Task"
}

function InstallSumatra { 
    Write-Host "Installing SumatraPDF"
    $ResultText.text = "`r`n" + "Installing SumatraPDF... Please Wait" 
    winget install -e --id SumatraPDF.SumatraPDF | Out-Host
    if ($?) { Write-Host "Installed SumatraPDF" }
    $ResultText.text = "Finished Installing SumatraPDF" + "`r`n" + "Ready for Next Task"
}

function RunningServices { 
    Show-Console
    Write-Host "Listing Running Services..."
    $Svcs = Get-Service | Where-Object {$_.Status -EQ "Running"}| Out-GridView -Title "List of running services" -PassThru| Select -ExpandProperty Name
    $ResultText.text = "Listing Running Services" + "`r`n" + $Svcs
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
    if ($?) { Write-Host "Installed Firefox" }
    $ResultText.text = "Finished Installing Firefox" + "`r`n" + "Ready for Next Task"
}

function InstallChrome { 
    Write-Host "Installing Google Chrome"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Google Chrome... Please Wait" 
    winget install -e Google.Chrome | Out-Host
    if ($?) { Write-Host "Installed Google Chrome" }
    $ResultText.text = "Finished Installing Google Chrome" + "`r`n" + "Ready for Next Task"
}

function InstallBrave { 
    Write-Host "Installing Brave Browser"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Brave... Please Wait" 
    winget install -e BraveSoftware.BraveBrowser | Out-Host
    if ($?) { Write-Host "Installed Brave Browser" }
    $ResultText.text = "Finished Installing Brave" + "`r`n" + "Ready for Next Task"
}

function Derp { 
    ShowConsole
    Show-Feedback "Derp"
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

function ChkDskCFX {
    ShowConsole
    Write-Host "Now scheduling chkdsk with the fix parameter and scheduling it for your next computer restart. Please restart your computer as soon as possible."
    Write-Host "I am also setting your computer to restart in 5 minutes. Please save and close your work immediately. Ideally restart your computer before the 5 minutes"
    Write-Host " - Ensure you DO NOT TURN OFF YOUR COMPUTER during the scan which runs on the next boot/reboot."
    
    Write-Output Y > chkdsk C: /f /x
    
    shutdown /r /t 300 /f /c "Your PC will be restarted in 5 minutes. Make sure all your work is saved. (This process can be aborted by using the shutdown /a command)"
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



function ShowConsole {
    [Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 1)
}

function HideConsole {
    [Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
}

function MoveConsole {
    [Console.Window]::MoveWindow([Console.Window]::GetConsoleWindow(),900,0,800,500);
}

#endregion

#region Startup
$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error

RunAsAdmin

#Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

if (-not (Test-Path 'C:\winpstoolboxgui')) {
    New-Item -Path C:\ -Name winpstoolboxgui -ItemType Directory
}
if (-not (Test-Path 'C:\winpstoolboxgui\winpstoolboxgui-repo')) {
    New-Item -Path C:\winpstoolboxgui -Name winpstoolboxgui-repo -ItemType Directory
}
if (-not (Test-Path 'C:\winpstoolboxgui\winpstoolboxgui-repo\winpstoolboxgui-functions')) {
    New-Item -Path C:\winpstoolboxgui\winpstoolboxgui-repo -Name winpstoolboxgui-functions -ItemType Directory
}

Write-Host ''
Write-Host '----------------------'
Write-Host "Downloading functions file..."

Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/winpstoolboxgui-functions/winpstoolboxgui-functions.psd1' -OutFile 'C:\winpstoolboxgui\winpstoolboxgui-repo\winpstoolboxgui-functions\winpstoolboxgui-functions.psd1'
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/winpstoolboxgui-functions/winpstoolboxgui-functions.psm1' -OutFile 'C:\winpstoolboxgui\winpstoolboxgui-repo\winpstoolboxgui-functions\winpstoolboxgui-functions.psm1'
Write-Host "Functions module downloaded."

Copy-Item -Path "C:\winpstoolboxgui\winpstoolboxgui-repo\winpstoolboxgui-functions" -Destination "C:\Program Files\WindowsPowerShell\Modules" -recurse -Force
Write-Host "Functions module copied to C:\Program Files\WindowsPowerShell\Modules"

Import-Module winpstoolboxgui-functions

Write-Host "Functions module registered."
Write-Host '----------------------'
Write-Host ''

#endregion

#region Winget
Write-Host ''
Write-Host '----------------------'
Write-Host "Checking to see if WinGet is installed..."

if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    Write-Host 'Winget already installed.'
}  else {
    # Installing winget from the Microsoft Store
	Write-Host 'Winget not found, installing it now...'
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host 'Winget has been installed.'
}

Write-Host '----------------------'
Write-Host ''

function InstallWinGetPackage($package, $packageFullName) {
    Write-Host "Installing $packageFullName"
    Write-Host "Please wait... (you can watch the console)"
    $ResultText.text = "Installing $packageFullName ... Please Wait" 
    $ProgressBar1.value = 10
    winget install -e $package | Out-Host
    $ProgressBar1.value = 50
    if($?) { Write-Host "Installed $packageFullName" }
    $ProgressBar1.value = 100
    $ResultText.text = "Finished Installing $packageFullName" + "`r`n" + "Ready for Next Task"
}
#endregion

#region Choco
Write-Host ''
Write-Host '----------------------'
Write-Host 'Checking to see if Chocolatey is installed (Chocolatey.org)...'

#$testchoco = powershell choco -v
$testchoco = Test-Path "C:\ProgramData\chocolatey\choco.exe"
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now..."
    InstallChoco
    Write-Output "Chocolately installing, double checking..."
    if(Test-Path "C:\ProgramData\chocolatey\choco.exe"){
        Write-Output "It looks like there was an error installing Chocolatey."
    }
} else {
    Write-Output "Chocolatey Version $testchoco is already installed."
}

Write-Host '----------------------'
Write-Host ''

function InstallChoco {
    #SpawnPSCommand("Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))")
    powershell "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
}

function InstallChocoPackage($package, $packageFullName) {
    Write-Host "Installing $packageFullName"
    Write-Host "Please Wait..."
    $ResultText.text = "Installing $packageFullName ... Please Wait (you can watch the console)" 
    $ProgressBar1.value = 10
    #choco install $package /y
    SpawnPSCommand("choco install $packageFullName /y")
    $ProgressBar1.value = 50
    if($?) { Write-Host "Installed $packageFullName" }
    $ProgressBar1.value = 100
    $ResultText.text = "Finished Installing $packageFullName" + "`r`n" + "Ready for Next Task"
}

#endregion

[void]$WindowsGUIToolbox.ShowDialog()