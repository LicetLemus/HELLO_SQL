import mysql.connector

# Connect to MySQL database
config = {
    'host': 'host',
    'port': 'port',
    'database': 'name_basedata',
    'user': 'user',
    'password': 'password',
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

# execute a query

query = "SELECT * FROM users"
cursor.execute(query)
result = cursor.fetchall()

# print the result
for row in result:
    print(row)
    
# close the cursor and connection
cursor.close()
connection.close()

