try {
    $vaultPath = "f:\06. KI"
    $outputFile = "f:\06. KI\00_Inbox\00_Inhaltsverzeichnis.md"
    $ignoreFolders = @(".obsidian", ".git", ".vs", ".claude", "node_modules")
    
    Write-Host "Aktualisiere das Inhaltsverzeichnis..." -ForegroundColor Cyan

    $items = Get-ChildItem -Path $vaultPath -Recurse -ErrorAction Stop | Where-Object {
        $exclude = $false
        foreach ($ignore in $ignoreFolders) {
            if ($_.FullName -like "*\$ignore*") {
                $exclude = $true
                break
            }
        }
        $exclude -eq $false
    }

    $markdown = "# Vault Inhaltsverzeichnis`n`n*(Zuletzt automatisch aktualisiert: $(Get-Date -Format 'dd.MM.yyyy HH:mm'))*`n`n"

    $items = $items | Sort-Object FullName

    foreach ($item in $items) {
        if ($item.FullName -eq $outputFile) { continue }

        $relativePath = $item.FullName.Substring($vaultPath.Length).TrimStart('\')
        $depth = ($relativePath.Split('\')).Count - 1
        
        if ($depth -eq 0 -and $item.PSIsContainer) {
            $name = $item.Name
            $markdown += "`n> [!abstract]- $name`n"
        }
        elseif ($depth -eq 0 -and -not $item.PSIsContainer) {
            $name = if ($item.Extension -eq ".md") { $item.BaseName } else { $item.Name }
            $markdown += "- [[$name]]`n"
        }
        else {
            $indentDepth = $depth - 1
            if ($indentDepth -lt 0) { $indentDepth = 0 }
            $indent = "  " * $indentDepth
            
            if ($item.PSIsContainer) {
                $name = $item.Name
                $markdown += "> $indent- **$name/**`n"
            } else {
                $name = if ($item.Extension -eq ".md") { $item.BaseName } else { $item.Name }
                $markdown += "> $indent- [[$name]]`n"
            }
        }
    }

    [IO.File]::WriteAllText($outputFile, $markdown, [Text.Encoding]::UTF8)
    Write-Host "`nInhaltsverzeichnis wurde erfolgreich aktualisiert!" -ForegroundColor Green
}
catch {
    Write-Host "Ein Fehler ist aufgetreten: $_" -ForegroundColor Red
}
finally {
    Write-Host "`n----------------------------------------"
    Read-Host "Drücke ENTER, um das Fenster zu schließen..."
}
