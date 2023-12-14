<!-- employee_details.tpl -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ employee['first_name'] }} Details</title>
</head>
<body>
    <h1>{{ employee['first_name'] }} {{ employee['last_name'] }} Details</h1>
    <p>First Name: {{ employee['first_name'] }}</p>
    <p>Last Name: {{ employee['last_name'] }}</p>
    <p>Email: {{ employee['email'] }}</p>
    <p>Phone Number: {{ employee['phone_number'] }}</p>
    <p>Date of Birth: {{ employee['date_of_birth'] }}</p>
    <p>Address: {{ employee['address'] }}</p>
    <p>Department: {{ employee['department'] }}</p>
    <p>Position: {{ employee['position'] }}</p>
    <p>Salary: {{ employee['salary'] }}</p>
    <p>Joining Date: {{ employee['joining_date'] }}</p>
    <p>Manager ID: {{ employee['manager_id'] }}</p>
    <!-- Add any other details you want to display -->

    <a href="/employees/{{ employee['id'] }}/update">Update Employee</a>
    <a href="/employees/{{ employee['id'] }}/delete">Delete Employee</a>
    <a href="/employees">Back to Employees</a>
</body>
</html>
