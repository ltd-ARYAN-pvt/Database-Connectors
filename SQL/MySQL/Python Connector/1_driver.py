import mysql.connector as conn  #--> Mysql driver
import config

mydb = conn.connect(
    host="localhost",
    user=config.USER,
    password=config.PASSWORD
)

db_cursor=mydb.cursor()

db_cursor.execute(config.createDB('testdb'))