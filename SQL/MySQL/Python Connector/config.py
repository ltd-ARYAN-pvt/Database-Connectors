from collections import defaultdict

USER='root'
PASSWORD="root@2024"

def createDB(name='defaultdb'):
    return f'create database if not exists {name}'

def createTable(name, table_content:defaultdict):
    main_cmd=f'create table if not exists {name} ('

    columns = []

    for column, data_type in table_content.items():
        columns.append(f'{column} {data_type}')

    main_cmd+= ', '.join(columns)
    main_cmd+=')'

    return main_cmd

def dropTable(name):
    return f'drop table if exists {name}'

def dropDB(name):
    return f'drop database if exists {name}'

if __name__ == "__main__":
    temp_dict={
        'id':'int primary key',
        'name':'varchar(50) not null',
        'salary':'varchar(8) default 10000'
    }

    print(createTable(name='temp', table_content=temp_dict))