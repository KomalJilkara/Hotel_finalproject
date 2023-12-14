# employee_manager_database.py

import sqlite3

connection = sqlite3.connect("employee_manager_db.db")

def initialize_database():
    cursor = connection.cursor()
    try:
        cursor.execute("DROP TABLE IF EXISTS Employees")
        cursor.execute("DROP TABLE IF EXISTS Managers")
    except:
        pass

    cursor.execute('''
    CREATE TABLE IF NOT EXISTS Employees (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT NOT NULL,
        last_name TEXT,
        email TEXT,
        phone_number TEXT,
        date_of_birth TEXT,
        address TEXT,
        department TEXT,
        position TEXT,
        salary REAL,
        joining_date TEXT,
        manager_id INTEGER REFERENCES Managers(id)
    )
    ''')

    cursor.execute('''
    CREATE TABLE IF NOT EXISTS Managers (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT NOT NULL,
        last_name TEXT,
        email TEXT,
        phone_number TEXT,
        team TEXT,
        reports_to INTEGER REFERENCES Managers(id)
    )
    ''')

    # Sample data for Employees and Managers
    for manager in [
        {'first_name': 'John', 'last_name': 'Doe', 'email': 'john.doe@example.com', 'phone_number': '123-456-7890', 'team': 'Engineering'},
        {'first_name': 'Jane', 'last_name': 'Smith', 'email': 'jane.smith@example.com', 'phone_number': '987-654-3210', 'team': 'Marketing'},
    ]:
        cursor.execute(f"INSERT INTO Managers (first_name, last_name, email, phone_number, team) VALUES "
                       f"('{manager['first_name'
