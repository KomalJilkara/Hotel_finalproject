<!-- employees.tpl -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees</title>
</head>
<body>
    <h1>Employees</h1>
    <ul>
        % for employee in employees:
            <li>
                <a href="/employees/{{ employee['id'] }}">{{ employee['first_name'] }} {{ employee['last_name'] }}</a>
            </li>
        % end
    </ul>
    <a href="/employees/add">Add an Employee</a>
</body>
</html>
