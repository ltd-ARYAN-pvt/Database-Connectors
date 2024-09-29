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

#-> Creating table
table_content={
        'id':'int primary key',
        'name':'varchar(50) not null',
        'salary':'varchar(8) default 10000'
    }

try:
    db_cursor.execute(config.createTable('emp',table_content))
    print('Table created successfully!!!')

except Exception as e:
    print('Failed to create table with exception',e)

db_cursor.execute('show tables')
for i in db_cursor:
    print(i)