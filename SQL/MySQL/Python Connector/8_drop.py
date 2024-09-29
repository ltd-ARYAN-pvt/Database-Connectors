import mysql.connector as conn
import config

try: 
    mydb = conn.connect(
        host="localhost",
        user=config.USER,
        password=config.PASSWORD,
        database='testdb'
    )

    print("Connection to testdb successfull")


except Exception as e:
    print('Failed to connect to database with exception',e)

db_cursor=mydb.cursor()

try: 
    db_cursor.execute('use testdb')
    db_cursor.execute(config.dropTable('emp'))
    print('Table deleted !!!')

    db_cursor.execute(config.dropDB('testdb'))
    print('Database deleted !!!')
    
except:
    print("failed to drop it with exception:- ",e)