# To copy the file's source to destination

$source = Read-Host -Prompt 'Enter the  files source location '
$destination = Read-Host " Please specify a destination path"
if($(Try { Test-Path $source.trim() } Catch { $false }))
{
   
  xcopy  $source  $destination /s/h/e/k/f/c/r/y 
  
   Write-host (" file's copy source to destination successfully")
}
else
{
 Write-host ("$source is not exist ")
}