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
    db_cursor.execute('truncate table emp')
    mydb.commit()
    print("All records deleted")

except Exception as e:
    print("Failed to delete all data")
