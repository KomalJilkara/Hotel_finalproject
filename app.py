# employee_manager.py

from bottle import route, post, run, template, redirect, request
import employee_manager_database

# Initialize the database
employee_manager_database.initialize_database()

@route("/")
def get_index():
    redirect("/employees")

@route("/employees")
def get_employees():
    employees = employee_manager_database.get_all_employees()
    return template("employees.tpl", employees=employees)

@route("/employees/add")
def get_add_employee():
    return template("add_employee.tpl")

@post("/employees/add")
def post_add_employee():
    first_name = request.forms.get("first_name")
    last_name = request.forms.get("last_name")
    email = request.forms.get("email")
    phone_number = request.forms.get("phone_number")
    date_of_birth = request.forms.get("date_of_birth")
    address = request.forms.get("address")
    department = request.forms.get("department")
    position = request.forms.get("position")
    salary = float(request.forms.get("salary"))
    joining_date = request.forms.get("joining_date")
    manager_id = int(request.forms.get("manager_id"))

    employee_manager_database.add_employee(first_name, last_name, email, phone_number, date_of_birth, address, department, position, salary, joining_date, manager_id)
    redirect("/employees")

@route("/employees/<employee_id>")
def get_employee_details(employee_id):
    employee = employee_manager_database.get_employee_details(employee_id)
    return template("employee_details.tpl", employee=employee)

@route("/employees/<employee_id>/update")
def get_update_employee(employee_id):
    employee = employee_manager_database.get_employee_details(employee_id)
    return template("update_employee.tpl", employee=employee)

@post("/employees/<employee_id>/update")
def post_update_employee(employee_id):
    first_name = request.forms.get("first_name")
    last_name = request.forms.get("last_name")
    email = request.forms.get("email")
    phone_number = request.forms.get("phone_number")
    date_of_birth = request.forms.get("date_of_birth")
    address = request.forms.get("address")
    department = request.forms.get("department")
    position = request.forms.get("position")
    salary = float(request.forms.get("salary"))
    joining_date = request.forms.get("joining_date")
    manager_id = int(request.forms.get("manager_id"))

    employee_manager_database.update_employee(employee_id, first_name, last_name, email, phone_number, date_of_birth, address, department, position, salary, joining_date, manager_id)
    redirect("/employees")

@route("/employees/<employee_id>/delete")
def get_delete_employee(employee_id):
    employee_manager_database.delete_employee(employee_id)
    redirect("/employees")

run(host='localhost', port=8080)
