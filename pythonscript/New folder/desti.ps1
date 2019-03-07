# To check the destination path exist or not 

$destination = Read-Host " Please specify a destination path"

if ($(Try { Test-Path $destination.trim() } Catch { $false }))
{
  
  Write-host ("$destination path is exist")
  
}
else
{

       Write-host ("$destination path is exist")
}



