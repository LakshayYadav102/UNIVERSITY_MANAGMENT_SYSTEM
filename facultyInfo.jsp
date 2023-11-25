<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Faculty Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-image: url('Faculty.jpg'); /* Default background image */
            background-color: #f0f0f0; /* Fallback color in case the image is not available */
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        h1 {
            color: #007BFF;
            width: 100%;
            text-align: center;
        }
        .faculty-box {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            width: 300px;
            background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
            font-weight: bold;
            margin-bottom: 10px;
        }
        p {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <h1>Faculty Information</h1>

    <div class="faculty-box">
        <h2>B-TECH</h2>
        <p>Faculty: John Doe</p>
        <p>Contact: 123-456-7890</p>
        <p>Email: john.doe@example.com</p>
    </div>

    <div class="faculty-box">
        <h2>BBA</h2>
        <p>Faculty: Jane Smith</p>
        <p>Contact: 987-654-3210</p>
        <p>Email: jane.smith@example.com</p>
    </div>

    <div class="faculty-box">
        <h2>BCA</h2>
        <p>Faculty: Robert Johnson</p>
        <p>Contact: 456-789-0123</p>
        <p>Email: robert.johnson@example.com</p>
    </div>

    <div class="faculty-box">
        <h2>MBA</h2>
        <p>Faculty: Emily Davis</p>
        <p>Contact: 789-012-3456</p>
        <p>Email: emily.davis@example.com</p>
    </div>

    <div class="faculty-box">
        <h2>BSC</h2>
        <p>Faculty: Michael Wilson</p>
        <p>Contact: 012-345-6789</p>
        <p>Email: michael.wilson@example.com</p>
    </div>
</body>
</html>
