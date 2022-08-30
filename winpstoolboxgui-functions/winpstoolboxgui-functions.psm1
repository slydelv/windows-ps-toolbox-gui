function Show-Feedback($feedback, $wait, $ready) {
    $linebreak = "`r`n"
    $linebreakDouble = "`r`n" + "`r`n"
    
    Write-Host $feedback
    
    if ($wait -eq $true) {
        Write-Host "Please Wait..."
        Write-Host "---------------------------------------------------------"
    }
    
    if ($ready -eq $true) {
        Write-Host "---------------------------------------------------------"
        Write-Host "Ready for next task." 
        Write-Host "---------------------------------------------------------"
    }
    
    if ($wait -eq $true) {
        $ResultText.text = $feedback + $linebreakDouble + "Please Wait..."
    } elseif ($ready -eq $true) {
        $ResultText.text = $feedback + $linebreakDouble + "Ready for next task."
    } else {
        $ResultText.text = $feedback
    }
}

