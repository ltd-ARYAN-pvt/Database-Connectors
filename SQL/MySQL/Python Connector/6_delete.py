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

delete_query='delete from emp where name=%s'
# delete_obj=('Punith Yadav V',)
delete_obj=('Punith Yadav',)

try:
    db_cursor.execute('use testdb')
    db_cursor.execute(delete_query,delete_obj)
    mydb.commit()
    print(db_cursor.rowcount,'Data deleted')
except Exception as e:
    print("Failed to delete due to exception:-",e)