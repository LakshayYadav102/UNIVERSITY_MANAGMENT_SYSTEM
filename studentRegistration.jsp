<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('studentregistration.jpg'); /* Add your background image URL */
            background-size: cover;
            background-position: center;
            color: #fff;
        }
        h1 {
            color: #007BFF;
            text-align: center;
            padding-top: 50px;
        }
        form {
            max-width: 400px;
            margin: 20px auto;
            background-color: rgba(0, 0, 0, 0.6); /* Black with 60% transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            color: #fff; /* Text color for better visibility */
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }
        button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 5px;
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
