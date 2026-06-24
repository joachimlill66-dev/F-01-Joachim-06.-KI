$vaultPath = "f:\06. KI"
$allFiles = Get-ChildItem -Path $vaultPath -Recurse -File -Filter "*.md" | Where-Object { $_.FullName -notmatch "\.obsidian" -and $_.FullName -notmatch "\.git" -and $_.FullName -notmatch "\.trash" }

# Build a lookup table of basenames (without extension)
$fileLookup = @{}
foreach ($file in $allFiles) {
    $basename = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    if (-not $fileLookup.ContainsKey($basename)) {
        $fileLookup[$basename] = @($file.FullName)
    } else {
        $fileLookup[$basename] += $file.FullName
    }
}

$brokenLinks = @()

foreach ($file in $allFiles) {
    $content = Get-Content -Path $file.FullName -Raw
    if (-not $content) { continue }
    
    # Regex to find Obsidian links [[Link]] or [[Link|Alias]]
    $matches = [regex]::Matches($content, '\[\[([^\]|]+)(?:\|[^\]]+)?\]\]')
    
    foreach ($match in $matches) {
        $linkTarget = $match.Groups[1].Value.Trim()
        
        # Check if target exists in lookup
        if (-not $fileLookup.ContainsKey($linkTarget)) {
            $brokenLinks += [PSCustomObject]@{
                SourceFile = $file.FullName
                Target = $linkTarget
            }
        }
    }
}

$brokenLinks | Export-Csv -Path "$vaultPath\01_System_KI\03_scripts\broken_links_report.csv" -NoTypeInformation
Write-Host "Found $($brokenLinks.Count) broken links. Report saved to 01_System_KI\03_scripts\broken_links_report.csv"
