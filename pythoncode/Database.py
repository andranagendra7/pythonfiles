
import sqlite3
from sqlite3 import Error

def create_connection(db_file):

    try:
        conn = sqlite3.connect(db_file)
        print(sqlite3.version)
    except Error as e:
        print(e)
    finally:
        conn.close()



create_connection("pythonsqlite.db")