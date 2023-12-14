<!-- add_employee.tpl -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
</head>
<body>
    <h1>Add Employee</h1>
    <form action="/employees/add" method="post">
        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="first_name" required><br>

        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="last_name" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="phone_number">Phone Number:</label>
        <input type="tel" id="phone_number" name="phone_number" required><br>

        <label for="date_of_birth">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth" required><br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required><br>

        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required><br>

        <label for="position">Position:</label>
        <input type="text" id="position" name="position" required><br>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" step="0.01" required><br>

        <label for="joining_date">Joining Date:</label>
        <input type="date" id="joining_date" name="joining_date" required><br>

        <label for="manager_id">Manager ID:</label>
        <input type="number" id="manager_id" name="manager_id" required><br>

        <input type="submit" value="Add Employee">
    </form>
    <a href="/employees">Back to Employees</a>
</body>
</html>
