New-Item -ItemType Directory -Force -Path icons | Out-Null
$base = "https://www.hko.gov.hk/tc/wxinfo/dailywx/images"
$files = @("vhot.gif","raina.gif","rainr.gif","rainb.gif","tc1.gif","tc3.gif","tc8se.gif","tc8sw.gif","tc8ne.gif","tc8nw.gif","tc9.gif","tc10.gif","ts.gif","ntfl.gif","landslip.gif","cold.gif","sms.gif","frost.gif","fire_r.gif","fire_y.gif","tsunami.gif")
foreach ($f in $files) {
  Write-Host "Downloading $f"
  Invoke-WebRequest -Uri "$base/$f" -OutFile "icons/$f"
}
