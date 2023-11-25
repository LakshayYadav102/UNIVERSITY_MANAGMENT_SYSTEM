<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Course List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-image: url('courselist.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 100vh;
        }
        h1 {
            color: #007BFF;
            width: 100%;
            text-align: center;
            margin-bottom: 20px;
        }
        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: center;
            flex-grow: 1; /* Allow the list to grow and take the remaining space */
        }
        li {
            margin-bottom: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px; /* Further increased padding for larger squares */
            border-radius: 10px;
            text-align: center;
            width: 300px; /* Further increased width of each box */
        }
        a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Available Courses</h1>

    <ul>
        <li><a href="courseDetails.jsp?courseId=1">B-TECH</a></li>
        <li><a href="courseDetails.jsp?courseId=2">BBA</a></li>
        <li><a href="courseDetails.jsp?courseId=3">BCA</a></li>
        <li><a href="courseDetails.jsp?courseId=4">MBA</a></li>
        <li><a href="courseDetails.jsp?courseId=5">BSC</a></li>
        <!-- Add more courses as needed -->
    </ul>
</body>
</html>
