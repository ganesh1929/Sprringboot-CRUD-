<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title> 
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h3 {
            text-align: center;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        h3 {
            font-size: 20px;
            margin-bottom: 10px;
        }
        form {
            margin-bottom: 20px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>  
<body>
    <div class="container">
        <h3>Welcome, <span id="empName">${EmployeeDetails.emp_name}</span>, <span id="empRollNo">${EmployeeDetails.roll_no}</span></h3>
        
        <h1>Update Employee Details</h1>
        
        <form action="updateStudent">
            <label for="updateRollNo">Roll No:</label>
            <input type="text" id="updateRollNo" name="Roll_no" placeholder="Enter Roll No">
            <label for="updateEmpName">Name:</label>
            <input type="text" id="updateEmpName" name="Emp_name" placeholder="Enter Name">
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>
