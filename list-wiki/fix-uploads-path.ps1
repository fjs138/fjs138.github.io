$files = Get-ChildItem -Filter "*.md" -File -Recurse

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    if (-not $content.StartsWith('---')) {
        $newContent = "---`nlayout: post`ntitle: $($file.BaseName)`n---`n`n$content"
        Set-Content -Path $file.FullName -Value $newContent
    }
}
