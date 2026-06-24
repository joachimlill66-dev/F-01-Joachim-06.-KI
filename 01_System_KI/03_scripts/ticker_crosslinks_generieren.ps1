$baseDir = "f:\06. KI\03_Trading_und_Boerse\09_Einzelaktien_ProRealTime"

Write-Host "Starte Generierung der Quer-Verlinkungen (Wiki-Footer) in allen Ticker-Ordnern..." -ForegroundColor Cyan

# Workaround fuer Encoding-Probleme mit Emojis in PowerShell
# Link Emoji (U+1F517)
$linkStr = [System.Text.Encoding]::UTF8.GetString([byte[]](240, 159, 148, 151))
# Bild Emoji (U+1F5BC U+FE0F)
$picStr = [System.Text.Encoding]::UTF8.GetString([byte[]](240, 159, 150, 188, 239, 184, 143))

$headerSearchStr = "## $linkStr Weitere Dateien zu diesem Ticker"

$folders = @(Get-ChildItem -Path $baseDir -Directory)

foreach ($folder in $folders) {
    $folderName = $folder.Name
    $folderPath = $folder.FullName

    $allFiles = @(Get-ChildItem -Path $folderPath -File)
    
    $mdFiles = @($allFiles | Where-Object { $_.Extension -match "(?i)\.md$" })
    $imgFiles = @($allFiles | Where-Object { $_.Extension -match "(?i)\.(png|jpg|jpeg|gif)$" })
    
    $totalFiles = $mdFiles.Count + $imgFiles.Count
    
    if ($totalFiles -gt 1) {
        Write-Host "Verarbeite Ordner: $folderName ($totalFiles Dateien gefunden)" -ForegroundColor Yellow
        
        $footerText = "`r`n`r`n---`r`n$headerSearchStr`r`n"
        
        foreach ($f in $mdFiles) {
            $footerText += "- [[$folderName/$($f.BaseName)|$($f.BaseName)]]`r`n"
        }
        
        foreach ($img in $imgFiles) {
            $footerText += "- $picStr [[$folderName/$($img.Name)|$($img.Name)]]`r`n"
        }
        
        foreach ($md in $mdFiles) {
            $mdPath = $md.FullName
            $content = [System.IO.File]::ReadAllText($mdPath, [System.Text.Encoding]::UTF8)
            
            if (-not $content.Contains($headerSearchStr)) {
                $newContent = $content + $footerText
                [System.IO.File]::WriteAllText($mdPath, $newContent, [System.Text.Encoding]::UTF8)
                Write-Host "  -> Aktualisiert: $($md.Name)" -ForegroundColor Green
            } else {
                Write-Host "  -> Uebersprungen (bereits verlinkt): $($md.Name)" -ForegroundColor Gray
            }
        }
    }
}

Write-Host "`r`nFertig! Alle Ticker-Ordner wurden erfolgreich als Mini-Wikis vernetzt." -ForegroundColor Green
Write-Host "----------------------------------------"
