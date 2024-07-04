<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System</title> 
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
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
        <h1>Student Management System</h1>
        
        <form action="addStudent">
            <h2>Create</h2>
            <label for="empName">Name:</label>
            <input type="text" id="empName" name="Emp_name" placeholder="Enter Name">
            <label for="rollNo">Roll No:</label>
            <input type="text" id="rollNo" name="Roll_no" placeholder="Enter Roll No">
            <input type="submit" value="Add Student">
        </form>

        <form action="viewStudent">
            <h2>View</h2>
            <label for="viewRollNo">Enter Roll No to View:</label>
            <input type="text" id="viewRollNo" name="Roll_no" placeholder="Enter Roll No">
            <input type="submit" value="View Student">
        </form>

        <form action="deleteStudent">
            <h2>Delete</h2>
            <label for="deleteRollNo">Enter Roll No to Delete:</label>
            <input type="text" id="deleteRollNo" name="Roll_no" placeholder="Enter Roll No">
            <input type="submit" value="Delete Student">
        </form>
    </div>
</body>
</html>
