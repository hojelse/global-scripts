$interfaces = netsh wlan show interfaces
$ssid = $interfaces | select-string -pattern ' SSID[ :]+ (.*)' | % {$("" + $_.matches.groups[1])}
$profiles = netsh wlan show profile $ssid key=clear
$password = $profiles | select-string -pattern ' Key Content[ :]+ (.*)' | % {$("" + $_.matches.groups[1])}
$password | clip
Write-Host "Wifi ssid:" $($ssid)
Write-Host "Password:" $($password)
echo "Copied password to clipboard"
