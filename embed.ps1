$gods = [Convert]::ToBase64String([IO.File]::ReadAllBytes('C:\Users\a\Desktop\Screenshot 2026-06-29 030130.png'))
$cheat = [Convert]::ToBase64String([IO.File]::ReadAllBytes('C:\Users\a\Desktop\Screenshot 2026-06-29 030124.png'))
$html = Get-Content 'C:\Users\a\Downloads\bitcoin game\game.html' -Raw
$godsImg = '<img src="data:image/png;base64,' + $gods + '" style="width:100px;height:100px;border-radius:50%;object-fit:cover;border:3px solid #ffd700" />'
$html = $html.Replace('AGARTHA GODS PLACEHOLDER_IMG', $godsImg)
$cheatImg = '<img src="data:image/png;base64,' + $cheat + '" style="width:80px;height:80px;border-radius:50%;object-fit:cover;border:3px solid #ff8800" />'
$html = $html.Replace('AGARTHA_CHEAT PLACEHOLDER_IMG', $cheatImg)
[IO.File]::WriteAllText('C:\Users\a\Downloads\bitcoin game\game.html', $html)
Write-Host 'DONE'
