$html = Get-Content 'C:\Users\a\Downloads\bitcoin game\game.html' -Raw
$frostUri = [IO.File]::ReadAllText('C:\Users\a\Downloads\bitcoin game\frost_uri.txt')
$html = $html.Replace('id="frostCharImg" style="width:100%;height:100%;object-fit:cover"', 'id="frostCharImg" src="' + $frostUri + '" style="width:100%;height:100%;object-fit:cover"')
[IO.File]::WriteAllText('C:\Users\a\Downloads\bitcoin game\game.html', $html)
Write-Host "DONE - Frost char image embedded"
