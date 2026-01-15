Clear-Host

$codex = Get-ChildItem -LiteralPath '../screenshots' -Filter '*.png' -File

foreach ($img in $codex) { 
    optipng.exe -v -o7 -zm1-9 -clobber -- $img 
    Move-Item -LiteralPath $img -Destination '../screenshots/optimized/png'
}

$codex = Get-ChildItem -LiteralPath '../screenshots/optimized/png' -Filter '*.png' -File

foreach ($img in $codex) {
    $jpg = $img -replace ('png$', 'jpg')
    ffmpeg.exe -y -i $img -q:v 2 $jpg
}

$codex = Get-ChildItem -LiteralPath '../screenshots/optimized/png' -Filter '*.jpg' -File

foreach ($img in $codex) {
    Move-Item -LiteralPath $img -Destination '../screenshots/optimized/jpg' -Force
}
