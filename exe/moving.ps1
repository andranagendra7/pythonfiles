$code_source            = Read-Host -Prompt 'Enter the  files source location       '
$code_destination       = Read-Host -Prompt 'Enter the  files destination location  '
$d =    Test-Path      $code_source 
$e =    Get-ChildItem  $code_source
$f =    Test-Path      $code_destination

if($d)
{

   if($e)
    {
	    if($f)
        {
	          xcopy  $code_source  $code_destination /s/h/e/k/f/c/r/y 
        }			  
	    else
	    {
	     Write-host   " faild copy new date does not match $code_destination " 
	    }
    }
    else
    {
        Write-host       " faild copy new date does not contain any files  "
    }
    
}
else
{
     Write-host   " faild copy new date does not match $code_source  "
}
