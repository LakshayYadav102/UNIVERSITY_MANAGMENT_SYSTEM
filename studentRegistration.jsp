<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #007BFF;
        }
        form {
            max-width: 400px;
            margin: 20px auto;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }
        button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Student Registration</h1>

    <form action="RegistrationServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="contact">Contact:</label>
        <input type="text" id="contact" name="contact" required>

        <label for="courses">Select Courses:</label>
        <select multiple id="courses" name="courses">
            <option value="1">B-TECH</option>
            <option value="2">BBA</option>
            <option value="3">BCA</option>
            <option value="4">MBA</option>
            <option value="5">BSC</option>
        </select>

        <button type="submit">Register</button>
    </form>
</body>
</html>
