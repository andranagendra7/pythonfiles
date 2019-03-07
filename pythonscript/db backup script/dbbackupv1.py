import pyodbc
connection = pyodbc.connect(driver='{SQL Server Native Client 11.0}', 
                                server='172.24.175.31', database='ECS_NLP_UNPROCESSED',UID='sa',PWD='Mysqldb12#', 
                                 autocommit=True)
backup = "D'ECS_TESTING.bak"
#sql = "BACKUP DATABASE [ECS_JUPITER_041217] TO DISK = N'{0}'".format(backup)
sql = "BACKUP DATABASE [ECS_TESTING] TO DISK = D'ECS_TESTING.bak'"
cursor = connection.cursor().execute('BACKUP DATABASE ? TO DISK=?', ['ECS_NLP_UNPROCESSED', r'D:\dbbackup\ECS_NLP_UNPROCESSED_17_4_18.bak'])
while cursor.nextset():
	pass
connection.close()