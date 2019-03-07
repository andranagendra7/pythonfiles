
# To take backup previous release data backup

$Backup_source         = Read-Host -Prompt 'Enter the Backup source location      '    
$Backup_destination    = Read-Host -Prompt 'Enter the Backup destination location '
$a = Test-Path      $Backup_source            
$b = Get-ChildItem -File -Recurse -Path $Backup_source 
$c = Test-Path      $Backup_destination

   if ($a)
   {
                if ($b)
                {
                           if($c)
                           {
                                  robocopy  "$Backup_source"  "$Backup_destination" /mir /xd 
	                        
                           }
                           else
	                       {
	 	                        Write-host "$Backup_destination  path does not exit"
	 	                   }
			    }
                else
                {
                       Write-host  " $Backup_source does not contain any file's "
                }
	}  
    else
    {
       Write-host " faild does not match $Backup_source "
    }

<#

#To take the database 

$server_name                    = Read-host -Prompt  'enter the server_hostname' 
$db_name                        = Read-host -Prompt  'Enter the database name   ' 
$bdir                           = Read-host -Prompt  'Enter the backup_destinatio '
$dt                             = get-date -format yyyyMMddHHmmss
$bfile                          = "$bdir\$($db_name)_db_$($dt).bak"

 
   if($server_name)
   {
    
	      if($db_name)
		   {
		   		   if($bdir)
			        {
			     			
                   Backup-SqlDatabase -ServerInstance $server_name -Database $db_name -BackupFile $bfile -BackupAction database 
					 						  
                    }
			        else
	                {
			             Write-host     "faild  the database backup because $bdir not match " 
                    }
           }
		   else
		   {
		      Write-host "faild  the database backup because $db_name  not match "
   
           } 
   }
   else
   {
           Write-host   "faild  the database backup because  $server_name not match "
   }
 
 
#To import the  .sql file inside the database

$server_name                    = Read-host -Prompt  'enter the server_hostname ' 
$db_username                    = Read-host -Prompt  'enter the database username ' -assecurestring
$db_username  = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($db_username ))
$db_pass                        = Read-Host -assecurestring "Please enter your password"
$db_pass      = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($db_pass ))
$db_name                        = Read-host -Prompt  'Enter the database name '
$sqlfile_path                   = Read-host -Prompt  'Enter the sql file location '
              
if ($server_name)
{    
    
		     if($db_name)
	         {
	              if($sqlfile_path)
		          {
			          
				     
					 sqlcmd -S $server_name  -U $db_username -P $db_pass -d $db_name -i $sqlfile_path
				
		          }
		          else
		         {
		                 Write-host " faild sql file import to database does not match  $sqlfile_path "
		         }
	         }
	         else
	         {
	              Write-host " faild sql file import to database does not match $db_name "
	         }
}	
else
{
    Write-host " faild sql file import to database does not match  $server_name  "
}

#>

<#


# TO copy data the source to destination 

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

#>

  
			