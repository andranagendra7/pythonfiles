$configFile  = Read-Host "Please specify a config. file "
$checkfile   = Test-Path $configFile -ErrorAction SilentlyContinue


# To check the Configuration file exist or not

if($(Try { Test-Path $checkfile.trim() } Catch { $false }))
{
     Write-host ("$checkfile file is exist ")
}
else
{
Write-host("$checkfile file is not exist")
}



