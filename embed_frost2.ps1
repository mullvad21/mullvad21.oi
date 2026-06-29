$html = Get-Content 'C:\Users\a\Downloads\bitcoin game\game.html' -Raw
$frostUri = [IO.File]::ReadAllText('C:\Users\a\Downloads\bitcoin game\frost_uri.txt')
$html = $html.Replace('id="frostKingImg" style="width:100%;height:100%;object-fit:cover"', 'id="frostKingImg" src="' + $frostUri + '" style="width:100%;height:100%;object-fit:cover"')
# Also set the agartha watching img to use the gods image
$godsFile = Get-ChildItem 'C:\Users\a\Downloads\bitcoin game\game.html' | Select-Object -First 1
$godsMatch = [regex]::Match($html, 'img_gods.*?base64,([^"'']{20,})')
Write-Host "Frost image embedded"
[IO.File]::WriteAllText('C:\Users\a\Downloads\bitcoin game\game.html', $html)
Write-Host "DONE"
