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

update_query='update emp set salary = %s where name = %s'
update_value=(500000,'Aryan Pandey')

try:
    db_cursor.execute('use testdb')
    db_cursor.execute(update_query,update_value)
    mydb.commit()
    print(db_cursor.rowcount,'Data Updated')
except Exception as e:
    print("Failed to update due to exception:-",e)