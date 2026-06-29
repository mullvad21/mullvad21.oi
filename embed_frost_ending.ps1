$html = Get-Content 'C:\Users\a\Downloads\bitcoin game\game.html' -Raw
# Find the Froststrap image data URI in the frost-king-popup
if($html -match '(data:image/jpeg;base64,[A-Za-z0-9+/=]+)'){
    $frostUri = $matches[0]
    $html = $html.Replace('PLACEHOLDER_FROST', $frostUri)
    [IO.File]::WriteAllText('C:\Users\a\Downloads\bitcoin game\game.html', $html)
    Write-Host "DONE - Froststrap image embedded in ending"
} else {
    Write-Host "Could not find Froststrap image URI"
}