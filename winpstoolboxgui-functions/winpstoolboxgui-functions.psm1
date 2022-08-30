
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

