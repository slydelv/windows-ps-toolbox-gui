
<# 
.NAME
    WindowsGUIToolbox
.FUNCTIONALITY
    ./././
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$WindowsGUIToolbox               = New-Object system.Windows.Forms.Form
$WindowsGUIToolbox.ClientSize    = New-Object System.Drawing.Point(1100,780)
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
$Logo.imageLocation              = "https://github.com/slydelv/windows-ps-toolbox-gui/blob/main/PCHH-Logo.png?raw=true"
$Logo.SizeMode                   = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$7zip                            = New-Object system.Windows.Forms.Button
$7zip.text                       = "7-Zip"
$7zip.width                      = 120
$7zip.height                     = 30
$7zip.location                   = New-Object System.Drawing.Point(10,40)
$7zip.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$7zip.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$7zip.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

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

$Everything                      = New-Object system.Windows.Forms.Button
$Everything.text                 = "Everything (void)"
$Everything.width                = 120
$Everything.height               = 30
$Everything.location             = New-Object System.Drawing.Point(140,40)
$Everything.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Everything.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$Everything.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$AdvIPScanner                    = New-Object system.Windows.Forms.Button
$AdvIPScanner.text               = "Adv IP Scanner"
$AdvIPScanner.width              = 120
$AdvIPScanner.height             = 30
$AdvIPScanner.location           = New-Object System.Drawing.Point(10,80)
$AdvIPScanner.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$AdvIPScanner.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$AdvIPScanner.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$WinTerminal                     = New-Object system.Windows.Forms.Button
$WinTerminal.text                = "Win Terminal"
$WinTerminal.width               = 120
$WinTerminal.height              = 30
$WinTerminal.location            = New-Object System.Drawing.Point(140,80)
$WinTerminal.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$WinTerminal.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")
$WinTerminal.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnInstallHwInfo                = New-Object system.Windows.Forms.Button
$BtnInstallHwInfo.text           = "HWiNFO"
$BtnInstallHwInfo.width          = 120
$BtnInstallHwInfo.height         = 30
$BtnInstallHwInfo.location       = New-Object System.Drawing.Point(10,120)
$BtnInstallHwInfo.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallHwInfo.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnInstallHwInfo.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDownloadSophiaApp            = New-Object system.Windows.Forms.Button
$BtnDownloadSophiaApp.text       = "SophiaApp"
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
$BtnChkDsk.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnChkDsk.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$ResultText                      = New-Object system.Windows.Forms.TextBox
$ResultText.multiline            = $true
$ResultText.width                = 240
$ResultText.height               = 116
$ResultText.enabled              = $false
$ResultText.location             = New-Object System.Drawing.Point(858,614)
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
$BtnShowConsole.height           = 30
$BtnShowConsole.location         = New-Object System.Drawing.Point(864,552)
$BtnShowConsole.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnShowConsole.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#515151")

$BtnHideConsole                  = New-Object system.Windows.Forms.Button
$BtnHideConsole.text             = "Hide Console"
$BtnHideConsole.width            = 110
$BtnHideConsole.height           = 30
$BtnHideConsole.location         = New-Object System.Drawing.Point(981,552)
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
$BtnAppList.text                 = "AppList"
$BtnAppList.width                = 120
$BtnAppList.height               = 30
$BtnAppList.location             = New-Object System.Drawing.Point(10,40)
$BtnAppList.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnAppList.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$BtnAppList.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button6                         = New-Object system.Windows.Forms.Button
$Button6.text                    = "Derp"
$Button6.width                   = 120
$Button6.height                  = 30
$Button6.location                = New-Object System.Drawing.Point(10,120)
$Button6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button6.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")
$Button6.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDisableFastStartup           = New-Object system.Windows.Forms.Button
$BtnDisableFastStartup.text      = "Disable FastStart"
$BtnDisableFastStartup.width     = 120
$BtnDisableFastStartup.height    = 30
$BtnDisableFastStartup.location  = New-Object System.Drawing.Point(10,80)
$BtnDisableFastStartup.Font      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDisableFastStartup.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnDisableFastStartup.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button7                         = New-Object system.Windows.Forms.Button
$Button7.text                    = "Placeholder"
$Button7.width                   = 120
$Button7.height                  = 30
$Button7.location                = New-Object System.Drawing.Point(10,200)
$Button7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button7.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")
$Button7.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$LblStatus                       = New-Object system.Windows.Forms.Label
$LblStatus.text                  = "Status: "
$LblStatus.AutoSize              = $true
$LblStatus.width                 = 25
$LblStatus.height                = 10
$LblStatus.location              = New-Object System.Drawing.Point(862,589)
$LblStatus.Font                  = New-Object System.Drawing.Font('Verdana',16)
$LblStatus.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

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

$ChkSaveTxt                      = New-Object system.Windows.Forms.CheckBox
$ChkSaveTxt.text                 = "Save to txt file?"
$ChkSaveTxt.AutoSize             = $false
$ChkSaveTxt.width                = 123
$ChkSaveTxt.height               = 20
$ChkSaveTxt.location             = New-Object System.Drawing.Point(143,14)
$ChkSaveTxt.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkSaveTxt.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnHwInfo                       = New-Object system.Windows.Forms.Button
$BtnHwInfo.text                  = "Hardware Dump"
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
$BtnOsInfo.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
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
$BtnPerfFX.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")
$BtnPerfFX.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnVisualFX                     = New-Object system.Windows.Forms.Button
$BtnVisualFX.text                = "Visual FX"
$BtnVisualFX.width               = 120
$BtnVisualFX.height              = 30
$BtnVisualFX.location            = New-Object System.Drawing.Point(140,200)
$BtnVisualFX.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnVisualFX.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")
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
$Label6.text                     = "Author: slydelv (sly#7558), with credit to: ChrisTitusTech (for some functions)"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(155,45)
$Label6.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label6.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "Contributors: 000000000000000000#8134, Silence#1332"
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(155,65)
$Label7.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label7.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.text                     = "Red = Unimplemented. Orange = Testing. Yellow = Should be working. Green = Tested, Working."
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

$BtnInstallUeli                  = New-Object system.Windows.Forms.Button
$BtnInstallUeli.text             = "UELI"
$BtnInstallUeli.width            = 120
$BtnInstallUeli.height           = 30
$BtnInstallUeli.location         = New-Object System.Drawing.Point(140,120)
$BtnInstallUeli.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallUeli.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
$BtnInstallUeli.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#454545")

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
$BtnInstallChecked.text          = "Install Checked"
$BtnInstallChecked.width         = 120
$BtnInstallChecked.height        = 30
$BtnInstallChecked.location      = New-Object System.Drawing.Point(141,310)
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
$ProgressBar1.location           = New-Object System.Drawing.Point(858,734)

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
$BtnRKill.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")
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

$ToolTipUtils.SetToolTip($7zip,'Installs 7-Zip')
$ToolTipUtils.SetToolTip($Everything,'Install VoidTools Everything (Ultimate Windows search tool)')
$ToolTipUtils.SetToolTip($AdvIPScanner,'Install Advanced IP Scanner')
$ToolTipUtils.SetToolTip($WinTerminal,'Install Windows Terminal')
$ToolTipUtils.SetToolTip($BtnInstallHwInfo,'Install HWiNFO64')
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
$ToolTipInfo.SetToolTip($Button6,'Do not click this. It runs dir /s c:\windows\system32 - so takes a while. Script performance test.')
$ToolTipTweaks.SetToolTip($BtnDisableFastStartup,'Disables Windows FastStart - which causes a lot of problems')
$ToolTipInfo.SetToolTip($ChkSaveTxt,'Tick this to save the App List as a text file to your desktop')
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
$ToolTipUtils.SetToolTip($BtnInstallUeli,'Install UELI Keystroke Launcher')
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
$WindowsGUIToolbox.controls.AddRange(@($LblTitle,$Logo,$GrpInstallUtils,$GrpRepairUtils,$ResultText,$BtnShowConsole,$BtnHideConsole,$Groupbox1,$LblStatus,$Groupbox2,$Groupbox3,$Label6,$Label7,$Label8,$Label9,$Groupbox4,$ProgressBar1))
$GrpInstallUtils.controls.AddRange(@($7zip,$LblInstallUtils,$Everything,$AdvIPScanner,$WinTerminal,$BtnInstallHwInfo,$BtnDownloadSophiaApp,$Button4,$BtnInstallUeli))
$GrpRepairUtils.controls.AddRange(@($LblRepairUtils,$BtnChkDsk,$BtnChkDskR,$BtnChkDskChoice,$BtnChkDsScan,$BtnSFC,$BtnDISMSpace,$BtnDISMHealth,$BtnDeleteTemp,$Button7))
$Groupbox1.controls.AddRange(@($BtnAppList,$Button6,$Label2,$ChkSaveTxt,$BtnHwInfo,$BtnOsInfo,$BtnRunningServices))
$Groupbox2.controls.AddRange(@($BtnDisableFastStartup,$Label1,$BtnEssentialTweaks,$BtnUndoEssential,$BtnEnableFastStart,$BtnDisableCortana,$BtnEnableCortana,$BtnDisableBGApps,$BtnEnableBGApps,$BtnPerfFX,$BtnVisualFX,$BtnBlockEpicBloat,$BtnBlockAds,$BtnStartSearchOff,$BtnStartSearchOn))
$Groupbox3.controls.AddRange(@($Label3,$ChkInstallBrave,$ChkInstallChrome,$ChkInstall7zip,$BtnInstallChecked,$ChkInstallFirefox,$ChkInstallVLC,$ChkInstallNotepadpp,$ChkInstallSumatra,$ChkInstallKeePass))
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
$WinTerminal.Add_Click({ InstWinTerminal })
$7zip.Add_Click({ Inst7Zip })
$Everything.Add_Click({ InstEverything })
$BtnAppList.Add_Click({ GetAppList })
$Button6.Add_Click({ Derp })
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
$BtnInstallHwInfo.Add_Click({ InstallHWiNFO })
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

#region Logic 
function Placeholder { 
    Show-Feedback "Test"
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
    Remove-Item -Path 'C:\Tools\rkill.exe' -Force -ErrorAction SilentlyContinue
    $ProgressBar1.value = 10
    Write-Host 'Downloading RKill from Bleeping Computer, please wait...'
    $ResultText.text = "Downloading RKill from Bleeping Computer, please wait..." 
    
    $destination = "C:\Tools\rkill.exe"
    $source1 = Invoke-WebRequest "https://www.bleepingcomputer.com/download/rkill/dl/10/" -MaximumRedirection 0
    $ProgressBar1.value = 30
    $source2 = $source1.Links | where {$_.innerText -eq "click here"} | select -Expand href
    $ProgressBar1.value = 70
    Invoke-WebRequest $source2 -OutFile $destination 
    
    Write-Host 'RKill downloaded, now launching it'
    $ResultText.text = "RKill downloaded, now launching it" + "`r`n" + "Ready for Next Task"
    
    $ProgressBar1.value = 100
    Start-Process 'C:\Tools\rkill.exe'
    #Start-Sleep -s 5
    $ProgressBar1.value = 0
    HideConsole
}

function HitmanPro64 { 
    ShowConsole
    Remove-Item -Path 'C:\Tools\HitmanPro_x64.exe' -Force -ErrorAction SilentlyContinue
    $ProgressBar1.value = 10
    Write-Host 'Downloading HitmanPro_x64 from Bleeping Computer, please wait...'
    $ResultText.text = "Downloading HitmanPro_x64 from Bleeping Computer, please wait..." 
    
    $destination = "C:\Tools\HitmanPro_x64.exe"
    $source1 = Invoke-WebRequest "https://www.bleepingcomputer.com/download/hitmanpro/dl/176" -MaximumRedirection 0
    $ProgressBar1.value = 30
    $source2 = $source1.Links | where {$_.innerText -eq "click here"} | select -Expand href
    $ProgressBar1.value = 70
    Invoke-WebRequest $source2 -OutFile $destination 
    
    Write-Host 'HitmanPro_x64 downloaded, now launching it'
    $ResultText.text = "HitmanPro_x64 downloaded, now launching it" + "`r`n" + "Ready for Next Task"
    
    $ProgressBar1.value = 100
    Start-Process 'C:\Tools\HitmanPro_x64.exe'
    #Start-Sleep -s 5
    $ProgressBar1.value = 0
    HideConsole
}

function AdwCleaner { 
    ShowConsole
    $ProgressBar1.value = 10
    Write-Host 'Downloading AdwCleaner from MalwareBytes, please wait...'
    $ResultText.text = "Downloading AdwCleaner from MalwareBytes, please wait..." 
    curl -o 'C:\Tools\adwcleaner.exe' 'https://adwcleaner.malwarebytes.com/adwcleaner?channel=release'
    $ProgressBar1.value = 60
    
    Write-Host 'AdwCleaner downloaded, now launching it'
    $ResultText.text = "AdwCleaner downloaded, now launching it" + "`r`n" + "Ready for Next Task"
    $ProgressBar1.value = 100
    Start-Process 'C:\Tools\adwcleaner.exe' 
    Start-Sleep -s 5
    $ProgressBar1.value = 0
    HideConsole
}

function FRST { 
    Write-Host 'Downloading SlyDelvs FRST Downloader Updater, please wait...'
    $ResultText.text = 'Downloading SlyDelvs FRST Downloader Updater, please wait...'
    Invoke-WebRequest -Uri 'https://github.com/slydelv/FRST-Download-Update/releases/download/Release/FRST-Download-Update.exe' -OutFile 'C:\FRST\FRST-Download-Update.exe'

    Write-Host 'FRST Downloader Updater has been downloaded, it will now launch and download FRST for you'
    $ResultText.text = "FRST Downloader Updater has been downloaded, it will now launch and download FRST for you" + "`r`n" + "Ready for Next Task"
	Start-Process 'C:\FRST\FRST-Download-Update.exe'
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
		[pscustomobject]@{Value = $ChkInstallKeePass.Checked; Title = 'KeePass'; Command = 'winget install -e --id DominikReichl.KeePass;'}
	)
    
	$selectedItems = $selectableItems | where {$_.Value -eq $true}
	
	$command = $selectedItems.Command -Join " "
	
	$titles = $selectedItems.Title -Join " "
	
	Write-Host "Installing selected items: $titles - Please Wait"
	
	$ResultText.text = "Installing selected items: $titles - Please Wait"
	
	Invoke-Expression $command | Out-Host
	
	Write-Host "Completed, Ready for Next Task"
	$ResultText.text= "Completed, Ready for Next Task"
	HideConsole
}

function SophiaApp { 
    Write-Host "Downloading SophiaApp, please wait"
    $ResultText.text = "Downloading SophiaApp, please wait"
    irm app.sophi.app -useb | iex
    $ResultText.text = "Downloaded SophiaApp, enjoy." + "`r`n" + "Ready for Next Task"
    Write-Host "Downloaded SophiaApp, enjoy."
}

function InstallKeePass {
    Write-Host "Installing KeePass"
    $ResultText.text = "Installing KeePass... Please Wait" 
    winget install -e DominikReichl.KeePass | Out-Host
    if ($?) { Write-Host "Installed KeePass" }
    $ResultText.text = "Finished Installing KeePass" + "`r`n" + "Ready for Next Task"
    
}

function InstallHWiNFO { 
    Write-Host "Installing HWiNFO"
    $ResultText.text = "Installing HWiNFO... Please Wait" 
    winget install -e REALiX.HWiNFO | Out-Host
    if ($?) { Write-Host "Installed HWiNFO" }
    $ResultText.text = "Finished Installing HWiNFO" + "`r`n" + "Ready for Next Task"
}

function EnableBGApps { 
    Write-Host "Allowing Background Apps..."
	Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
		Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue
	}
	Write-Host "Done - Reverted to Stock Settings"
    $ResultText.text = "Enabled Background Apps." + "`r`n" + "Ready for Next Task"
}

function DisableBGApps { 
    Write-Host "Disabling Background application access..."
    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
        Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
        Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
    }
    Write-Host "Disabled Background application access"
    $ResultText.text = "Disabled Background application access." + "`r`n" + "Ready for Next Task"
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
    Write-Host "Fast Startup Disabled" + "`r`n" + "Ready for Next Task"
}

function EnableFastStartup { 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d "1" /f
    powercfg -h on
    $ResultText.text = "Fast Startup Enabled" + "`r`n" + "Ready for Next Task"
    Write-Host "Fast Startup Enabled" + "`r`n" + "Ready for Next Task"
}

function Derp { 
    ShowConsole
    $ResultText.text = "`r`n" + "Starting to derp, please wait"
    cmd /c "dir /s c:\windows\system32\" | Out-Host
    $ResultText.text = "Finished derping" + "`r`n" + "Ready for Next Task"
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
    if ($?) { Write-Host "Installed Everything Search" }
    $ResultText.text = "Finished Installing Voidtools Everything Search" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function Inst7Zip { 
    ShowConsole
    Write-Host "Installing 7-Zip Compression Tool"
    $ResultText.text = "`r`n" +"`r`n" + "Installing 7-Zip Compression Tool... Please Wait" 
    winget install -e 7zip.7zip | Out-Host
    if ($?) { Write-Host "Installed 7-Zip Compression Tool" }
    $ResultText.text = "Finished Installing 7-Zip Compression Tool" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function InstWinTerminal { 
    ShowConsole
    $ErrorActionPreference = 'SilentlyContinue'
    $wshell = New-Object -ComObject Wscript.Shell
    $Button = [System.Windows.MessageBoxButton]::YesNoCancel
    $ErrorIco = [System.Windows.MessageBoxImage]::Error
    if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    	Exit
    }
    HideConsole
}

function ChkDskC { 
    ShowConsole
    $ResultText.text = "Checking the file system. Watch the Console Window." + "`r`n" + "`r`n" + "Please wait..."
    
    $chkdsk1 = ($(chkdsk c: /scan) -split '' | ? {$_ -and [byte][char]$_ -ne 0}) -join '' | Out-Host
    
    if ($chkdsk1 -like "*Windows has made corrections to the file system*") {
        #Windows found errors and corrected them. 
    } elseif ($chkdsk1 -like "*Windows has checked the file system and found problems*") {
        Write-Host "Chkdsk found corruption on the C: drive. Launching repair function..."
        $ResultText.text = "Chkdsk found corruption." + "`r`n" + "Launching repair function..."
        ChkDskCFX
    } elseif ($chkdsk1 -like "*Windows has scanned the file system and found no problems.*") {
        Write-Host "Chkdsk found no problems"
        $ResultText.text = "Chkdsk found no problems." + "`r`n" + "Ready for Next Task"
    } elseif ($chkdsk1 -like "*Run CHKDSK with the /F (fix) option to correct these.*") {
        Write-Host "Chkdsk found corruption on the C: drive. Launching repair function..."
        $ResultText.text = "Chkdsk found corruption." + "`r`n" + "Launching repair function..."
        ChkDskCFX
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

function DISMSpace {
    ShowConsole
    $ResultText.text = "Checking the DISM component store. Watch the Console Window." + "`r`n" + "`r`n" + "Please wait..."
    $dismspacecheck = DISM /online /Cleanup-Image /AnalyzeComponentStore | Out-Host
    if ($dismspacecheck -like "*Component Store Cleanup Recommended : Yes*")
    {
        $dismmatch = [string]$dismspacecheck -match "Reclaimable Packages : (\d*)"
        if ($dismmatch) {
            if ($Matches.2 -gt 4) {
                Write-Host("Cleanup needed. Doing it. ")
                $ResultText.text = "DISM Cleanup is needed" + "`r`n" + "`r`n" + "Starting cleanup now"
                DISM /online /Cleanup-Image /StartComponentCleanup | Out-Host
                $ResultText.text = "DISM Cleanup has finished" + "`r`n" + "Ready for Next Task"
                Write-Host("Cleanup complete")
            } else {
                Write-Host("Cleanup recommended but not needed.")
                Write-Host("Cleaning up anyway...")
                DISM /online /Cleanup-Image /StartComponentCleanup | Out-Host
                Write-Host("Cleanup complete")
                $ResultText.text = "DISM Cleanup was recommended but not needed - did it anyway" + "`r`n" + "Ready for Next Task"
            }
        }
    } else {
        Write-Host("Cleanup not needed.")
        $ResultText.text = "DISM Cleanup is not needed" + "`r`n" + "Ready for Next Task"
    }
}

function DISMHealth {
    ShowConsole
    $ResultText.text = "Scanning the DISM system health. Watch the Console Window." + "`r`n" + "`r`n" + "Please wait..."
    Write-Host 'Scanning System Health with DISM /Online /Cleanup-Image /ScanHealth, please wait...'
    
    $dismhealth = DISM /Online /Cleanup-Image /ScanHealth | Out-Host
    
    if ($dismhealth -like "*The component store is repairable.*") {
        Write-Host 'The component store is repairable, running the DISM /Online /Cleanup-Image /RestoreHealth now, please wait...'
        ResultText.text = "The component store is repairable, running the DISM /Online /Cleanup-Image /RestoreHealth now." + "`r`n" + "`r`n" + "Please wait..."
        
        $dismhealthfix = DISM /Online /Cleanup-Image /RestoreHealth | Out-Host
        
        if ($dismhealthfix -like "*The restore operation completed successfully.*") {
            Write-Host("DISM has made repairs to the system")
            $ResultText.text = "DISM has made repairs to the system" + "`r`n" + "Ready for Next Task"
        }
    } elseif ($dismhealth -like "*No component store corruption detected.*") {
        Write-Host("DISM Health is good and doesn't report that RestoreHealth is required")
        $ResultText.text = "DISM Health is good and doesn't report that RestoreHealth is required" + "`r`n" + "`r`n" + "Ready for Next Task"
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
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}
#endregion

#region Greetings
# Hello there, curious fellow
Write-Host "You're welcome to learn from the code here but if you use the toolbox or any scripts from it, please ask permission and at the very least, give credit where credit is due."
Write-Host "..."
#endregion

#region Winget
Write-Host ""
Write-Host "----------------------"
Write-Host "Checking to see if WinGet is installed..."
Write-Host "----------------------"
Write-Host ""

# Check if winget is installed
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    Write-Host 'Winget already installed.'
}  else {
    # Installing winget from the Microsoft Store
	Write-Host 'Winget not found, installing it now.'
    $ResultText.text = "`r`n" +"`r`n" + "Installing Winget... Please Wait"
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host 'Winget Installed'
    $ResultText.text = "`r`n" +"`r`n" + "Winget Installed - Ready for Next Task"
}

Write-Host "----------------------"
Write-Host ""

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

#region Startup
if (-not (Test-Path 'C:\Tools')) {
    New-Item -Path 'C:\Tools' -ItemType Directory    
    Write-Host "Tools Folder Created successfully"
}

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
Write-Host ""
Write-Host "----------------------"
Write-Host "Downloading functions file..."
Write-Host "----------------------"
Write-Host ""

Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/winpstoolboxgui-functions/winpstoolboxgui-functions.psd1' -OutFile 'C:\winpstoolboxgui\winpstoolboxgui-repo\winpstoolboxgui-functions\winpstoolboxgui-functions.psd1'
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/winpstoolboxgui-functions/winpstoolboxgui-functions.psm1' -OutFile 'C:\winpstoolboxgui\winpstoolboxgui-repo\winpstoolboxgui-functions\winpstoolboxgui-functions.psm1'

Copy-Item -Path "C:\winpstoolboxgui\winpstoolboxgui-repo\winpstoolboxgui-functions" -Destination "C:\Program Files\WindowsPowerShell\Modules" -recurse -Force

Import-Module winpstoolboxgui-functions
Write-Host "Functions moodule registered"

Write-Host "----------------------"
Write-Host ""
#endregion

#region Choco
Write-Host ""
Write-Host "----------------------"
Write-Host 'Checking to see if Chocolatey is installed (Chocolatey.org)...'
Write-Host "----------------------"
Write-Host ""

$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    InstallChoco
    Write-Output "Chocolately installing, double checking..."
    if(Test-Path "C:\ProgramData\chocolatey\choco.exe"){
        Write-Output "It looks like there was an error installing Chocolatey"
    }

} else {
    Write-Output "Chocolatey Version $testchoco is already installed"
}

Write-Host "----------------------"
Write-Host ""

function InstallChoco {
    SpawnPSCommand("Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))")
}

function InstallChocoPackage($package, $packageFullName) {
    Write-Host "Installing $packageFullName"
    Write-Host "Please Wait..."
    $ResultText.text = "Installing $packageFullName ... Please Wait (you can watch the console)" 
    $ProgressBar1.value = 10
    #choco install $package /y
    SpawnPSCommand("choco install ")
    $ProgressBar1.value = 50
    if($?) { Write-Host "Installed $packageFullName" }
    $ProgressBar1.value = 100
    $ResultText.text = "Finished Installing $packageFullName" + "`r`n" + "Ready for Next Task"
}

#endregion

#region ChkDsk

#endregion

#region EssentialTweaks
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
#endregion

#region EssentialUndo
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
#endregion

#region Feedback

#endregion

#region Functions
function SpawnPSCommand($pscommand) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$pscommand`"" -Verb RunAs
}
#endregion

[void]$WindowsGUIToolbox.ShowDialog()