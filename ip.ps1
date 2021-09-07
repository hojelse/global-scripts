$ip = ipconfig | select-string -pattern ' IPv4 Address[ \.:]+ (.*)' | % {$("" + $_.matches.groups[1])}
$ip | clip
Write-Host "ip (IPv4 Adress):" $($ip)
echo "Copied ip to clipboard"
