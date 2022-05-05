


Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'

[Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
<# 
.NAME
    WindowsGUIToolbox
.FUNCTIONALITY
    ./././
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$WindowsGUIToolbox               = New-Object system.Windows.Forms.Form
$WindowsGUIToolbox.ClientSize    = New-Object System.Drawing.Point(900,950)
$WindowsGUIToolbox.text          = "Windows PS Toolbox with GUI"
$WindowsGUIToolbox.TopMost       = $false
$WindowsGUIToolbox.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#323951")

$Logo                            = New-Object system.Windows.Forms.PictureBox
$Logo.width                      = 347
$Logo.height                     = 110
$Logo.location                   = New-Object System.Drawing.Point(3,8)
$Logo.imageLocation              = "https://github.com/slydelv/windows-ps-toolbox-gui/blob/main/PCHH-Logo.png?raw=true"
$Logo.SizeMode                   = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$LblTitle                        = New-Object system.Windows.Forms.Label
$LblTitle.text                   = "Technical GUI Toolbox for Windows"
$LblTitle.AutoSize               = $true
$LblTitle.width                  = 25
$LblTitle.height                 = 10
$LblTitle.location               = New-Object System.Drawing.Point(388,17)
$LblTitle.Font                   = New-Object System.Drawing.Font('Verdana',14)
$LblTitle.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$7zip                            = New-Object system.Windows.Forms.Button
$7zip.text                       = "7-Zip"
$7zip.width                      = 120
$7zip.height                     = 30
$7zip.location                   = New-Object System.Drawing.Point(10,40)
$7zip.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$7zip.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$7zip.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$GrpInstallUtils                 = New-Object system.Windows.Forms.Groupbox
$GrpInstallUtils.height          = 250
$GrpInstallUtils.width           = 270
$GrpInstallUtils.location        = New-Object System.Drawing.Point(15,140)
$GrpInstallUtils.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#2a2b4a")

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
$Everything.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Everything.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$AdvIPScanner                    = New-Object system.Windows.Forms.Button
$AdvIPScanner.text               = "Adv IP Scanner"
$AdvIPScanner.width              = 120
$AdvIPScanner.height             = 30
$AdvIPScanner.location           = New-Object System.Drawing.Point(10,80)
$AdvIPScanner.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$AdvIPScanner.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$AdvIPScanner.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$WinTerminal                     = New-Object system.Windows.Forms.Button
$WinTerminal.text                = "Win Terminal"
$WinTerminal.width               = 120
$WinTerminal.height              = 30
$WinTerminal.location            = New-Object System.Drawing.Point(140,80)
$WinTerminal.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$WinTerminal.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$WinTerminal.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Win Terminal"
$Button1.width                   = 120
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(10,120)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button1.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button1.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Win Terminal"
$Button2.width                   = 120
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(140,120)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button2.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button2.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Win Terminal"
$Button3.width                   = 120
$Button3.height                  = 30
$Button3.location                = New-Object System.Drawing.Point(10,160)
$Button3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button3.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button3.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Win Terminal"
$Button4.width                   = 120
$Button4.height                  = 30
$Button4.location                = New-Object System.Drawing.Point(140,160)
$Button4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button4.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button4.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$GrpRepairUtils                  = New-Object system.Windows.Forms.Groupbox
$GrpRepairUtils.height           = 250
$GrpRepairUtils.width            = 270
$GrpRepairUtils.location         = New-Object System.Drawing.Point(315,140)
$GrpRepairUtils.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#2a2b4a")

$LblRepairUtils                  = New-Object system.Windows.Forms.Label
$LblRepairUtils.text             = "Repair Utilities"
$LblRepairUtils.AutoSize         = $true
$LblRepairUtils.width            = 25
$LblRepairUtils.height           = 10
$LblRepairUtils.location         = New-Object System.Drawing.Point(10,10)
$LblRepairUtils.Font             = New-Object System.Drawing.Font('Verdana',16)
$LblRepairUtils.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnChkDsk                       = New-Object system.Windows.Forms.Button
$BtnChkDsk.text                  = "Chkdsk C: "
$BtnChkDsk.width                 = 120
$BtnChkDsk.height                = 30
$BtnChkDsk.location              = New-Object System.Drawing.Point(10,40)
$BtnChkDsk.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnChkDsk.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnChkDsk.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$ResultText                      = New-Object system.Windows.Forms.TextBox
$ResultText.multiline            = $true
$ResultText.width                = 880
$ResultText.height               = 110
$ResultText.enabled              = $false
$ResultText.location             = New-Object System.Drawing.Point(9,831)
$ResultText.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$BtnChkDskR                      = New-Object system.Windows.Forms.Button
$BtnChkDskR.text                 = "Chkdsk C: /R"
$BtnChkDskR.width                = 120
$BtnChkDskR.height               = 30
$BtnChkDskR.location             = New-Object System.Drawing.Point(140,40)
$BtnChkDskR.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnChkDskR.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnChkDskR.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnChkDskChoice                 = New-Object system.Windows.Forms.Button
$BtnChkDskChoice.text            = "Chkdsk Custom"
$BtnChkDskChoice.width           = 120
$BtnChkDskChoice.height          = 30
$BtnChkDskChoice.location        = New-Object System.Drawing.Point(10,80)
$BtnChkDskChoice.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnChkDskChoice.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
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
$BtnChkDsScan.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnChkDsScan.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnShowConsole                  = New-Object system.Windows.Forms.Button
$BtnShowConsole.text             = "Show Console"
$BtnShowConsole.width            = 121
$BtnShowConsole.height           = 30
$BtnShowConsole.location         = New-Object System.Drawing.Point(776,4)
$BtnShowConsole.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnShowConsole.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#515151")

$BtnHideConsole                  = New-Object system.Windows.Forms.Button
$BtnHideConsole.text             = "Hide Console"
$BtnHideConsole.width            = 121
$BtnHideConsole.height           = 30
$BtnHideConsole.location         = New-Object System.Drawing.Point(776,37)
$BtnHideConsole.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnHideConsole.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#515151")

$BtnSFC                          = New-Object system.Windows.Forms.Button
$BtnSFC.text                     = "SFC Scan"
$BtnSFC.width                    = 120
$BtnSFC.height                   = 30
$BtnSFC.location                 = New-Object System.Drawing.Point(10,120)
$BtnSFC.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnSFC.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnSFC.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDISMSpace                    = New-Object system.Windows.Forms.Button
$BtnDISMSpace.text               = "DISM Space"
$BtnDISMSpace.width              = 120
$BtnDISMSpace.height             = 30
$BtnDISMSpace.location           = New-Object System.Drawing.Point(140,120)
$BtnDISMSpace.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDISMSpace.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnDISMSpace.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDISMHealth                   = New-Object system.Windows.Forms.Button
$BtnDISMHealth.text              = "DISM Health"
$BtnDISMHealth.width             = 120
$BtnDISMHealth.height            = 30
$BtnDISMHealth.location          = New-Object System.Drawing.Point(10,160)
$BtnDISMHealth.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDISMHealth.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnDISMHealth.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDeleteTemp                   = New-Object system.Windows.Forms.Button
$BtnDeleteTemp.text              = "Clear Temp Files"
$BtnDeleteTemp.width             = 120
$BtnDeleteTemp.height            = 30
$BtnDeleteTemp.location          = New-Object System.Drawing.Point(140,160)
$BtnDeleteTemp.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDeleteTemp.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnDeleteTemp.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 250
$Groupbox1.width                 = 270
$Groupbox1.location              = New-Object System.Drawing.Point(617,140)
$Groupbox1.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#2a2b4a")

$BtnAppList                      = New-Object system.Windows.Forms.Button
$BtnAppList.text                 = "AppList"
$BtnAppList.width                = 120
$BtnAppList.height               = 30
$BtnAppList.location             = New-Object System.Drawing.Point(10,40)
$BtnAppList.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnAppList.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnAppList.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button6                         = New-Object system.Windows.Forms.Button
$Button6.text                    = "Derp"
$Button6.width                   = 120
$Button6.height                  = 30
$Button6.location                = New-Object System.Drawing.Point(608,428)
$Button6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button6.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button6.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnDisableFastStartup           = New-Object system.Windows.Forms.Button
$BtnDisableFastStartup.text      = "Disable FastStart"
$BtnDisableFastStartup.width     = 120
$BtnDisableFastStartup.height    = 30
$BtnDisableFastStartup.location  = New-Object System.Drawing.Point(10,80)
$BtnDisableFastStartup.Font      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnDisableFastStartup.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnDisableFastStartup.BackColor  = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button7                         = New-Object system.Windows.Forms.Button
$Button7.text                    = "DISM Health"
$Button7.width                   = 120
$Button7.height                  = 30
$Button7.location                = New-Object System.Drawing.Point(10,200)
$Button7.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button7.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button7.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$LblStatus                       = New-Object system.Windows.Forms.Label
$LblStatus.text                  = "Status"
$LblStatus.AutoSize              = $true
$LblStatus.width                 = 25
$LblStatus.height                = 10
$LblStatus.location              = New-Object System.Drawing.Point(14,807)
$LblStatus.Font                  = New-Object System.Drawing.Font('Verdana',16)
$LblStatus.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Groupbox2                       = New-Object system.Windows.Forms.Groupbox
$Groupbox2.height                = 400
$Groupbox2.width                 = 270
$Groupbox2.location              = New-Object System.Drawing.Point(15,400)
$Groupbox2.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#2a2b4a")

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
$ChkSaveTxt.location             = New-Object System.Drawing.Point(128,10)
$ChkSaveTxt.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ChkSaveTxt.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnHwInfo                       = New-Object system.Windows.Forms.Button
$BtnHwInfo.text                  = "Hardware Dump"
$BtnHwInfo.width                 = 120
$BtnHwInfo.height                = 30
$BtnHwInfo.location              = New-Object System.Drawing.Point(140,40)
$BtnHwInfo.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnHwInfo.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnHwInfo.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnOsInfo                       = New-Object system.Windows.Forms.Button
$BtnOsInfo.text                  = "OS Info"
$BtnOsInfo.width                 = 120
$BtnOsInfo.height                = 30
$BtnOsInfo.location              = New-Object System.Drawing.Point(10,80)
$BtnOsInfo.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnOsInfo.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnOsInfo.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Groupbox3                       = New-Object system.Windows.Forms.Groupbox
$Groupbox3.height                = 250
$Groupbox3.width                 = 270
$Groupbox3.location              = New-Object System.Drawing.Point(315,400)
$Groupbox3.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#2a2b4a")

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "Install Software"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(10,10)
$Label3.Font                     = New-Object System.Drawing.Font('Verdana',16)
$Label3.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$BtnInstallBrave                 = New-Object system.Windows.Forms.Button
$BtnInstallBrave.text            = "Brave"
$BtnInstallBrave.width           = 120
$BtnInstallBrave.height          = 30
$BtnInstallBrave.location        = New-Object System.Drawing.Point(10,40)
$BtnInstallBrave.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallBrave.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnInstallBrave.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnInstallChrome                = New-Object system.Windows.Forms.Button
$BtnInstallChrome.text           = "Chrome"
$BtnInstallChrome.width          = 120
$BtnInstallChrome.height         = 30
$BtnInstallChrome.location       = New-Object System.Drawing.Point(140,40)
$BtnInstallChrome.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallChrome.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnInstallChrome.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnInstallFirefox               = New-Object system.Windows.Forms.Button
$BtnInstallFirefox.text          = "Firefox"
$BtnInstallFirefox.width         = 120
$BtnInstallFirefox.height        = 30
$BtnInstallFirefox.location      = New-Object System.Drawing.Point(10,80)
$BtnInstallFirefox.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallFirefox.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnInstallFirefox.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnInstallVLC                   = New-Object system.Windows.Forms.Button
$BtnInstallVLC.text              = "VLC"
$BtnInstallVLC.width             = 120
$BtnInstallVLC.height            = 30
$BtnInstallVLC.location          = New-Object System.Drawing.Point(140,80)
$BtnInstallVLC.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallVLC.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnInstallVLC.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnEssentialTweaks              = New-Object system.Windows.Forms.Button
$BtnEssentialTweaks.text         = "Essential Tweaks"
$BtnEssentialTweaks.width        = 120
$BtnEssentialTweaks.height       = 30
$BtnEssentialTweaks.location     = New-Object System.Drawing.Point(10,40)
$BtnEssentialTweaks.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnEssentialTweaks.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnEssentialTweaks.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnUndoEssential                = New-Object system.Windows.Forms.Button
$BtnUndoEssential.text           = "Undo Essential"
$BtnUndoEssential.width          = 120
$BtnUndoEssential.height         = 30
$BtnUndoEssential.location       = New-Object System.Drawing.Point(140,40)
$BtnUndoEssential.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnUndoEssential.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnUndoEssential.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnNotePadPP                    = New-Object system.Windows.Forms.Button
$BtnNotePadPP.text               = "Notepad++"
$BtnNotePadPP.width              = 120
$BtnNotePadPP.height             = 30
$BtnNotePadPP.location           = New-Object System.Drawing.Point(10,120)
$BtnNotePadPP.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnNotePadPP.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnNotePadPP.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button8                         = New-Object system.Windows.Forms.Button
$Button8.text                    = "Enable FastStart"
$Button8.width                   = 120
$Button8.height                  = 30
$Button8.location                = New-Object System.Drawing.Point(140,80)
$Button8.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button8.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button8.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button9                         = New-Object system.Windows.Forms.Button
$Button9.text                    = "Disable Cortana"
$Button9.width                   = 120
$Button9.height                  = 30
$Button9.location                = New-Object System.Drawing.Point(10,120)
$Button9.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button9.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button9.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button10                        = New-Object system.Windows.Forms.Button
$Button10.text                   = "Enable Cortana"
$Button10.width                  = 120
$Button10.height                 = 30
$Button10.location               = New-Object System.Drawing.Point(140,120)
$Button10.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button10.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button10.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnRunningServices              = New-Object system.Windows.Forms.Button
$BtnRunningServices.text         = "Running Services"
$BtnRunningServices.width        = 120
$BtnRunningServices.height       = 30
$BtnRunningServices.location     = New-Object System.Drawing.Point(140,80)
$BtnRunningServices.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnRunningServices.ForeColor    = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnRunningServices.BackColor    = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button11                        = New-Object system.Windows.Forms.Button
$Button11.text                   = "Disable BG Apps"
$Button11.width                  = 120
$Button11.height                 = 30
$Button11.location               = New-Object System.Drawing.Point(10,160)
$Button11.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button11.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button11.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button12                        = New-Object system.Windows.Forms.Button
$Button12.text                   = "Enable BG Apps"
$Button12.width                  = 120
$Button12.height                 = 30
$Button12.location               = New-Object System.Drawing.Point(140,160)
$Button12.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button12.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button12.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button13                        = New-Object system.Windows.Forms.Button
$Button13.text                   = "Perf FX"
$Button13.width                  = 120
$Button13.height                 = 30
$Button13.location               = New-Object System.Drawing.Point(10,200)
$Button13.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button13.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button13.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Button14                        = New-Object system.Windows.Forms.Button
$Button14.text                   = "Visual FX"
$Button14.width                  = 120
$Button14.height                 = 30
$Button14.location               = New-Object System.Drawing.Point(140,200)
$Button14.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button14.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button14.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnInstallAdobe                 = New-Object system.Windows.Forms.Button
$BtnInstallAdobe.text            = "Adobe Reader"
$BtnInstallAdobe.width           = 120
$BtnInstallAdobe.height          = 30
$BtnInstallAdobe.location        = New-Object System.Drawing.Point(140,120)
$BtnInstallAdobe.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnInstallAdobe.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnInstallAdobe.BackColor       = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$BtnBlockEpicBloat               = New-Object system.Windows.Forms.Button
$BtnBlockEpicBloat.text          = "Block EpicBloat"
$BtnBlockEpicBloat.width         = 120
$BtnBlockEpicBloat.height        = 30
$BtnBlockEpicBloat.location      = New-Object System.Drawing.Point(10,240)
$BtnBlockEpicBloat.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnBlockEpicBloat.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnBlockEpicBloat.BackColor     = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "Made for and in collaboration with the PC Help Hub Discord"
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(390,41)
$Label4.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label4.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#c6c6c6")

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "Official Discord Server ID: 571342175678234640"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(390,58)
$Label5.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label5.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Author: slydelv (sly#7558)"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(390,75)
$Label6.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label6.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "Contributors: Chicken the April Fool (000000000000000000#8134)"
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(390,91)
$Label7.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label7.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#928e8e")

$BtnBlockAds                     = New-Object system.Windows.Forms.Button
$BtnBlockAds.text                = "Block Ads"
$BtnBlockAds.width               = 120
$BtnBlockAds.height              = 30
$BtnBlockAds.location            = New-Object System.Drawing.Point(140,240)
$BtnBlockAds.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BtnBlockAds.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BtnBlockAds.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#454545")

$WindowsGUIToolbox.controls.AddRange(@($Logo,$LblTitle,$GrpInstallUtils,$GrpRepairUtils,$ResultText,$BtnShowConsole,$BtnHideConsole,$Groupbox1,$Button6,$LblStatus,$Groupbox2,$Groupbox3,$Label4,$Label5,$Label6,$Label7))
$GrpInstallUtils.controls.AddRange(@($7zip,$LblInstallUtils,$Everything,$AdvIPScanner,$WinTerminal,$Button1,$Button2,$Button3,$Button4))
$GrpRepairUtils.controls.AddRange(@($LblRepairUtils,$BtnChkDsk,$BtnChkDskR,$BtnChkDskChoice,$BtnChkDsScan,$BtnSFC,$BtnDISMSpace,$BtnDISMHealth,$BtnDeleteTemp,$Button7))
$Groupbox1.controls.AddRange(@($BtnAppList,$Label2,$ChkSaveTxt,$BtnHwInfo,$BtnOsInfo,$BtnRunningServices))
$Groupbox2.controls.AddRange(@($BtnDisableFastStartup,$Label1,$BtnEssentialTweaks,$BtnUndoEssential,$Button8,$Button9,$Button10,$Button11,$Button12,$Button13,$Button14,$BtnBlockEpicBloat,$BtnBlockAds))
$Groupbox3.controls.AddRange(@($Label3,$BtnInstallBrave,$BtnInstallChrome,$BtnInstallFirefox,$BtnInstallVLC,$BtnNotePadPP,$BtnInstallAdobe))

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
$BtnInstallBrave.Add_Click({ InstallBrave })
$BtnInstallChrome.Add_Click({ InstallChrome })
$BtnInstallFirefox.Add_Click({ InstallFirefox })
$BtnEssentialTweaks.Add_Click({ RunEssentialTweaks })
$BtnUndoEssential.Add_Click({ RunUndoEssentialTweaks })
$BtnRunningServices.Add_Click({ RunningServices })
$BtnInstallAdobe.Add_Click({ InstallAdobe })
$BtnNotePadPP.Add_Click({ InstallNotepad })
$BtnInstallVLC.Add_Click({ InstallVLC })
$BtnBlockEpicBloat.Add_Click({ BlockEpicBloat })
$BtnBlockAds.Add_Click({ BlockAds })

#region Logic 
ShowConsole
MoveConsole
HideConsole

function BlockAds { 
    $adlist= Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/BlockAds.cfg' 
    $adfile = "$env:windir\System32\drivers\etc\hosts"
    $adlist | Add-Content -PassThru $adfile
}

function BlockEpicBloat { 
    $content= Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/slydelv/windows-ps-toolbox-gui/main/EpicGamesBlocklist.cfg' 
    $file = "$env:windir\System32\drivers\etc\hosts"
    $content | Add-Content -PassThru $file
}

function InstallVLC { 
    Write-Host "Installing VLC Media Player"
    $ResultText.text = "`r`n" +"`r`n" + "Installing VLC Media Player... Please Wait" 
    winget install -e VideoLAN.VLC | Out-Host
    if($?) { Write-Host "Installed VLC Media Player" }
    $ResultText.text = "`r`n" + "Finished Installing VLC Media Player" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function InstallNotepad { 
    Write-Host "Installing Notepad++"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Notepad++... Please Wait" 
    winget install -e Notepad++.Notepad++ | Out-Host
    if($?) { Write-Host "Installed Notepad++" }
    $ResultText.text = "`r`n" + "Finished Installing NotePad++" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function InstallAdobe { 
    Write-Host "Installing Adobe Reader DC"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Adobe Reader DC... Please Wait" 
    winget install -e --id Adobe.Acrobat.Reader.64-bit | Out-Host
    if($?) { Write-Host "Installed Adobe Reader DC" }
    $ResultText.text = "`r`n" + "Finished Installing Adobe Reader DC" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function RunningServices { 
    Show-Console
    Write-Host "Listing Running Services..."
    $Svcs = Get-Service | Where-Object {$_.Status -EQ "Running"}| Out-GridView -Title "List of running services" -PassThru| Select -ExpandProperty Name
    $ResultText.text = "`r`n" +"`r`n" + "Listing Running Services" + "`r`n" + $Svcs
}

function RunUndoEssentialTweaks { EssentialTweaks }
function RunEssentialTweaks { EssentialUndo }

function InstallFirefox { 
    Write-Host "Installing Firefox"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Firefox... Please Wait" 
    winget install -e Mozilla.Firefox | Out-Host
    if($?) { Write-Host "Installed Firefox" }
    $ResultText.text = "`r`n" + "Finished Installing Firefox" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function InstallChrome { 
    Write-Host "Installing Google Chrome"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Google Chrome... Please Wait" 
    winget install -e Google.Chrome | Out-Host
    if($?) { Write-Host "Installed Google Chrome" }
    $ResultText.text = "`r`n" + "Finished Installing Google Chrome" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function InstallBrave { 
    Write-Host "Installing Brave Browser"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Brave... Please Wait" 
    winget install -e BraveSoftware.BraveBrowser | Out-Host
    if($?) { Write-Host "Installed Brave Browser" }
    $ResultText.text = "`r`n" + "Finished Installing Brave" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function OSInfo { 
    ShowConsole
    $osinfo = (Get-ComputerInfo -Property BiosDescription, BiosFirmwareType, WindowsProductName, WindowsInstallDateFromRegistry, WindowsVersion, *SystemRoot, BiosName*, BiosReleaseDate, BiosStatus, BiosPrimaryBIOS, CsCaption, CsBootupState, CsDomainRole, CsDomain, CsInstallDate, CsEnableDaylightSavingsTime, CsManufacturer, CsModel, CsNetworkServerModeEnabled, CsProcessors, CsNumberOfLogicalProcessors, CsPartOfDomain, CsPowerManagementCapabilities, CsPowerState, CsPowerSupplyState, CsResetCapability, CsSystemType, CsThermalState, CsTotalPhysicallyInstalledMemory, CsUserName, CsWakeUpType, CsWorkgroup, OSName, OsVersion, OsBuildNumber, Os, HotFixes, OsBootDevice, OsSystemDevice, OsSystemDrive, OsWindowsDirectory, OsCountryCode, OsLocale, OsLocalDateTime, OsLastBootUpTime, OsUptime, OsLanguage, OsNumberOfProcesses, OsNumberOfUsers, OsArchitectire, OsPrimary, OsPortableOperatingSystem, OsStatus, TimeZone, PowerPlatformRole, HyperVisorPresent, HyperVRequirementVirtualizationFirmwareEnabled, HyperVRequirementVMMonitorModeExtensions | fl *) | Out-Host
}

function HwDump { 
    ShowConsole
    $cpu1 = (get-wmiobject win32_processor)
    $video = (Get-WmiObject win32_videocontroller |select -property '__GENUS', Caption, Description, VideoProcessor, DeviceID, PowerManagementCapabilities, PowerManagementSupported, ProtocolSupported, AcceleratorCapabilities, DriverDate, DriverVersion, MaxRefreshRate, CurrentRefreshRate, Monochrome, VideoModeDescription, CurrentBitsPerPixel, Status, ConfigManagerUserConfig, ConfigManagerErrorCode, InstalledDisplayDrivers | fl *)
    $memory = (Get-WmiObject Win32_PhysicalMemory | select -PROPERTY * -ExcludeProperty '__CLASS', '__SERVER', '__SUPERCLASS', '__DYNASTY', '__RELPATH', '__PROPERTY_COUNT', '__DERIVATION', '__NAMESPACE', '__PATH', CreationClassName, Description, Name, TypeDetail, Scope, Path, Options, ClassPath, Qualifiers, Site, Container, Properties  | fl *)
    $networking = (Get-WmiObject -Class Win32_NetworkAdapter | select -property Name, ServiceName, AdapterType, Speed | ft * ) 
    $drives = ([System.IO.DriveInfo]::GetDrives() | select -Property name, rootdirectory, volumelabel, driveformat, totalsize, availablefreespace,  drivetype, isready  |Where-Object Drivetype -EQ Fixed | ft *)
    
}

function DisableFastStartup { 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d "0" /f
    powercfg -h off
    $ResultText.text = "Fast Startup Disabled" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function Derp { 
    ShowConsole
    $ResultText.text = "`r`n" + "Starting to derp, please wait"
    cmd /c "dir /s c:\windows\system32\" | Out-Host
    $ResultText.text = "`r`n" + "Finished derping" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function GetAppList { 
    ShowConsole

    $applist1 += Get-ItemProperty -Name * -Path @(
        'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
        'HKCU:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
    ) -ErrorAction SilentlyContinue | Where-Object {$_.DisplayName.Length -ge 1 } | Select-Object -Property DisplayName | Out-Host 

}

function InstEverything { 
    ShowConsole
    Write-Host "Installing Voidtools Everything Search"
    $ResultText.text = "`r`n" +"`r`n" + "Installing Voidtools Everything Search... Please Wait" 
    winget install -e voidtools.Everything --source winget | Out-Host
    if($?) { Write-Host "Installed Everything Search" }
    $ResultText.text = "`r`n" + "Finished Installing Voidtools Everything Search" + "`r`n" + "`r`n" + "Ready for Next Task"
    HideConsole
}

function Inst7Zip { 
    ShowConsole
    Write-Host "Installing 7-Zip Compression Tool"
    $ResultText.text = "`r`n" +"`r`n" + "Installing 7-Zip Compression Tool... Please Wait" 
    winget install -e 7zip.7zip | Out-Host
    if($?) { Write-Host "Installed 7-Zip Compression Tool" }
    $ResultText.text = "`r`n" + "Finished Installing 7-Zip Compression Tool" + "`r`n" + "`r`n" + "Ready for Next Task"
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
}

function ChkDskCR {
    ShowConsole
    cmd /c "echo y|chkdsk C: /F /X /R" | Out-Host
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
    
    Write-Host `n
}

function ChkDskScanOnly {
    ShowConsole
    cmd /c "echo y|chkdsk C: /scan" | Out-Host
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
            $ResultText.text = "Error - SFC tried but was UNABLE to fix the issues. Recommend a DISM Health Check." + "`r`n" + "`r`n" + "Ready for Next Task"
        } else {
            Write-Host("SFC repair successful.")
            $ResultText.text = "SFC Fixes were successful" + "`r`n" + "`r`n" + "Ready for Next Task"
        }
    } else {
        Write-Host("SFC is all good")
        $ResultText.text = "SFC is okay" + "`r`n" + "`r`n" + "Ready for Next Task"
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
                $ResultText.text = "DISM Cleanup has finished" + "`r`n" + "`r`n" + "Ready for Next Task"
            } else {
                Write-Host("Cleanup recommended but not needed.")
                $ResultText.text = "DISM Cleanup recommended but not needed" + "`r`n" + "`r`n" + "Ready for Next Task"
            }
        }
    } else {
        Write-Host("Cleanup not needed.")
        $ResultText.text = "DISM Cleanup is not needed" + "`r`n" + "`r`n" + "Ready for Next Task"
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
        $ResultText.text = "DISM Fixes have been performed" + "`r`n" + "`r`n" + "Ready for Next Task"
    }
    
    } elseif ($dismhealth -like "*No component store corruption detected.*") {
        Write-Host("DISM Health is good.")
        $ResultText.text = "DISM Health is good" + "`r`n" + "`r`n" + "Ready for Next Task"
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
    $ResultText.text = "Cleared temp files" + "`r`n" + "`r`n" + "Ready for Next Task"
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
#endregion

#region Greetings
# Hello there, curious fellow
Write-Host "You're welcome to learn from the code here but if you use the toolbox or any scripts from it, please ask permission and at the very least, give credit where credit is due."
#endregion

#region Winget
 # GUI Specs
Write-Host "Checking winget..."

# Check if winget is installed
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    'Winget Already Installed'
}  
else{
    # Installing winget from the Microsoft Store
	Write-Host "Winget not found, installing it now."
    $ResultText.text = "`r`n" +"`r`n" + "Installing Winget... Please Wait"
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host Winget Installed
    $ResultText.text = "`r`n" +"`r`n" + "Winget Installed - Ready for Next Task"
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

[void]$WindowsGUIToolbox.ShowDialog()