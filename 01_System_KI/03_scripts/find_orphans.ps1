try {
    $vaultPath = "f:\06. KI"
    Write-Host "Scanne Vault nach toten Dateien (Orphans)..." -ForegroundColor Cyan
    
    $allMdFiles = Get-ChildItem -Path $vaultPath -Filter "*.md" -Recurse -ErrorAction Stop | Where-Object { $_.FullName -notmatch '\\\.(obsidian|git|claude|vs)\\' }

    $linkedFilesSet = New-Object System.Collections.Generic.HashSet[string]([StringComparer]::OrdinalIgnoreCase)

    foreach ($file in $allMdFiles) {
        if ($file.Name -eq "00_Inhaltsverzeichnis.md") { continue }
        
        $content = Get-Content $file.FullName -Raw -ErrorAction SilentlyContinue
        if ($content) {
            $matches = [regex]::Matches($content, '\[\[(.*?)\]\]')
            foreach ($match in $matches) {
                $link = $match.Groups[1].Value
                $target = ($link -split '\|')[0]
                $target = ($target -split '#')[0]
                $null = $linkedFilesSet.Add($target.Trim())
            }
        }
    }

    $orphaned = @()
    foreach ($file in $allMdFiles) {
        if ($file.Name -eq "00_Inhaltsverzeichnis.md") { continue }
        if ($file.Name -match "_MOC\.md$") { continue }
        if ($file.FullName -match "Web_Archiv") { continue }
        if ($file.FullName -match "01_System_KI") { continue }
        if ($file.FullName -match "01_Vorlagendateien") { continue }
        if ($file.FullName -match "Clippings") { continue }
        
        $baseName = $file.BaseName
        if (-not $linkedFilesSet.Contains($baseName)) {
            $orphaned += $file.FullName
        }
    }

    Write-Host "`nGefundene verwaiste Dateien (Orphans): $($orphaned.Count)" -ForegroundColor Yellow
    $orphaned | ForEach-Object { Write-Host $_ }
}
catch {
    Write-Host "Ein Fehler ist aufgetreten: $_" -ForegroundColor Red
}
finally {
    Write-Host "`n----------------------------------------"
    Read-Host "Drücke ENTER, um das Fenster zu schließen..."
}
