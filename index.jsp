<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>University Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-image: url('Background.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensure the body takes at least the full height of the viewport */
        }
        header {
            background-color: rgba(0, 123, 255, 0); 
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        nav {
            margin-top: 20px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        nav a {
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
            background-color: rgba(255, 255, 255, 0.5);
            padding: 20px; /* Increased padding to make the boxes larger */
            border-radius: 20px; /* Border-radius to make them round (square shape) */
            transition: background-color 0.3s ease; /* Smooth transition for better user experience */
        }
        nav a:hover {
            background-color: rgba(255, 255, 255, 0.8); /* Darker background on hover */
        }
        section {
            background-color: rgba(255, 255, 255, 0.8); 
            padding: 20px;
            border-radius: 10px;
            margin-top: auto; /* Move the section to the bottom */
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Our University</h1>
    </header>

    <nav>
        <a href="courseList.jsp">Courses</a>
        <a href="studentRegistration.jsp">Student Registration</a>
        <a href="studentProfile.jsp">Student Profile</a>
        <a href="facultyInfo.jsp">Faculty Information</a>
    </nav>

    <section>
        <h2>About Us</h2>
        <p>
            Welcome to the University Management System, a comprehensive platform designed to streamline and enhance the management of our academic institution. Our system is dedicated to providing a seamless experience for students, faculty, and administrators alike.

            Key Features:
            - Effortless course management
            - Intuitive student registration process
            - Detailed student profiles
            - Comprehensive faculty information
            Our mission is to foster a collaborative and efficient academic environment through innovative technology solutions. Whether you are a student embarking on your educational journey or a faculty member contributing to our academic community, the University Management System is here to support you every step of the way.
            Thank you for being part of our academic family.
            Sincerely,
            The University Management System Team
        </p>
    </section>
</body>
</html>
