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

#--> 2) R for Read-> Data Reading
db_cursor.execute('use testdb')
db_cursor.execute('select * from emp')
db_select=db_cursor.fetchall()

for row in db_select:
    print(row)