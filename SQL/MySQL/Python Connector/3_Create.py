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

#-> CRUD Operations:- 
#--> 1) C for CREATE-> Data Insertion

#---> One insert at a time 
try:
    db_cursor.execute('insert into emp values(%s,%s,%s)',(1,'Aryan Pandey','1000000'))
    print(db_cursor.rowcount, "Record Inserted")
    mydb.commit() #--> It is important while inserting
except Exception as e:
    print("Failed to insert with exception:-",e)

#---> multiple inserts as a time
db_list=[(2,"Ravi A","100000"),(3,"Umesh BK","90000"),(4,"Punith Yadav","100000")]
try:
    db_cursor.executemany('insert into emp values(%s,%s,%s)',db_list)
    print(db_cursor.rowcount, "Record Inserted")
    mydb.commit()
except Exception as e:
    print("Failed to insert with exception:-",e)