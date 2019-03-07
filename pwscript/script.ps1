$source                = " "
$backup                = " "
$server_name           = " "
$db_name               = " "
$Filepath              = " "
$sqlfile_path          = " "
$code_source           = " "
$code_destination      = " "
$webserver_path        = " "

robocopy "$source"  "$backup" /mir /xd

backup-sqldatabase -serverinstance  $server_name   -database  $db_name -backupfile $Filepath -Backupaction database

sqlcmd -S $server_name -d $db_name -i $sqlfile_path 

xcopy $code_source $code_destination /s/h/e/k/f/c/v/r 

xcopy $code_destination $webserver_path /s/h/e/k/f/c/v/r



$RFC_Folder = 'd:\test'
$SOURCE_Folder = 'c:\ecs'
$BACKUP_Folder = 'd:\backup'

$rfc = get-ChildItem -File -Recurse -Path $RFC_Folder
$source = get-ChildItem -File -Recurse -Path $SOURCE_Folder

compare-Object -DifferenceObject $rfc -ReferenceObject $source -ExcludeDifferent -IncludeEqual -Property Name -PassThru | foreach-Object {
    # copy SOURCE to BACKUP
    $backup_dest = $_.DirectoryName -replace [regex]::Escape($SOURCE_Folder),$BACKUP_Folder
    # create directory, including intermediate paths, if necessary
    if ((test-Path -Path $backup_dest) -eq $false) { new-Item -ItemType Directory -Path $backup_dest | out-Null}
    copy-Item -Force -Path $_.FullName -Destination $backup_dest

    #copy RFC to SOURCE
    $rfc_path = $_.fullname -replace [regex]::Escape($SOURCE_Folder),$RFC_Folder
    copy-Item -Force -Path $rfc_path -Destination $_.FullName
    }


----------------------------------------------------------------------------------------------------------------------------------------

