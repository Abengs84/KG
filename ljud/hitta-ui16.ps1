# Soundcraft Ui16 IP Scanner
# Skannar ett /20-nat (255.255.240.0) efter mixer.html

$baseIp = "10.203.0.0"
$subnetMask = "255.255.240.0"
$found = $false

function ConvertTo-UInt32Ip {
    param([string]$IpAddress)
    $bytes = [System.Net.IPAddress]::Parse($IpAddress).GetAddressBytes()
    [array]::Reverse($bytes)
    return [BitConverter]::ToUInt32($bytes, 0)
}

function ConvertFrom-UInt32Ip {
    param([uint32]$Value)
    $bytes = [BitConverter]::GetBytes($Value)
    [array]::Reverse($bytes)
    return ([System.Net.IPAddress]::new($bytes)).ToString()
}

$baseIpInt = ConvertTo-UInt32Ip $baseIp
$maskInt = ConvertTo-UInt32Ip $subnetMask
$networkInt = $baseIpInt -band $maskInt
$broadcastInt = $networkInt -bor (-bnot $maskInt)
$firstHost = $networkInt + 1
$lastHost = $broadcastInt - 1
$hostCount = $lastHost - $firstHost + 1

Write-Host "Skannar nätverk $baseIp med nätmask $subnetMask ($hostCount adresser) ..."

$priorityIps = @()
16..17 | ForEach-Object {
    $thirdOctet = $_
    1..254 | ForEach-Object {
        $hostOctet = $_
        $priorityIps += "10.203.$thirdOctet.$hostOctet"
    }
}

$allIps = $firstHost..$lastHost | ForEach-Object { ConvertFrom-UInt32Ip $_ }
$scanIps = $priorityIps + ($allIps | Where-Object { $priorityIps -notcontains $_ })

Write-Host "Prioriterar 10.203.16.x och 10.203.17.x först ..."

$scanIps | ForEach-Object {
    $ip = $_
    $url = "http://$ip/mixer.html"

    try {
        $response = Invoke-WebRequest `
            -Uri $url `
            -TimeoutSec 1 `
            -UseBasicParsing

        if ($response.StatusCode -eq 200) {
            Write-Host ""
            Write-Host "HITTAD: $url" -ForegroundColor Green
            Start-Process $url
            $found = $true
            break
        }
    }
    catch {
        # inget svar
    }

    Write-Host "." -NoNewline
}

if (-not $found) {
    Write-Host ""
    Write-Host "Ingen Soundcraft hittades i $baseIp/$subnetMask."
}