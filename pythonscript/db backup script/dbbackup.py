import pyodbc
connection = pyodbc.connect(driver='{ODBC Driver 13 for SQL Server}', 
                                server='172.24.175.31', database='ECS_JUPITER_041217',UID='sa',PWD='Mysqldb12#', 
                                 autocommit=True)

sql = "BACKUP DATABASE [ECS_TESTING] TO DISK = D'ECS_TESTING.bak'"
#sql = 'BACKUP DATABASE ? TO DISK=?', "['ECS_TESTING', r'd:\ECS_TESTING.bak']"
cursor = connection.cursor().execute('BACKUP DATABASE ? TO DISK=?', ['ECS_JUPITER_041217', r'd:\dbbackup\ECS_JUPITER_041217.bak'])
while cursor.nextset():
    pass
connection.close()
