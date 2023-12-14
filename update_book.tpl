<!-- update_employee.tpl -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
</head>
<body>
    <h1>Update Employee</h1>
    <form action="/employees/{{ employee['id'] }}/update" method="post">
        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="first_name" value="{{ employee['first_name'] }}" required><br>

        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="last_name" value="{{ employee['last_name'] }}" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="{{ employee['email'] }}" required><br>

        <label for="phone_number">Phone Number:</label>
        <input type="tel" id="phone_number" name="phone_number" value="{{ employee['phone_number'] }}" required><br>

        <label for="date_of_birth">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth" value="{{ employee['date_of_birth'] }}" required><br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="{{ employee['address'] }}" required><br>

        <label for="department">Department:</label>
        <input type="text" id="department" name="department" value="{{ employee['department'] }}" required><br>

        <label for="position">Position:</label>
        <input type="text" id="position" name="position" value="{{ employee['position'] }}" required><br>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" step="0.01" value="{{ employee['salary'] }}" required><br>

        <label for="joining_date">Joining Date:</label>
        <input type="date" id="joining_date" name="joining_date" value="{{ employee['joining_date'] }}" required><br>

        <label for="manager_id">Manager ID:</label>
        <input type="number" id="manager_id" name="manager_id" value="{{ employee['manager_id'] }}" required><br>

        <input type="submit" value="Update Employee">
    </form>
    <a href="/employees/{{ employee['id'] }}">Back to Employee Details</a>
</body>
</html>
