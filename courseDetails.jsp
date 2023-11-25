<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Course Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-image: url('courselist.jpg'); /* Replace 'courselist.jpg' with your image file */
            background-size: cover;
            background-repeat: no-repeat;
        }
        .course-box {
            border: 2px solid #007BFF;
            padding: 10px;
            margin-bottom: 20px;
            background-color: #FFFFFF;
            border-radius: 10px;
        }
        h1 {
            color: #007BFF;
        }
        p {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Course Details</h1>

    <%
        String courseId = request.getParameter("courseId");

        if ("1".equals(courseId)) {
    %>
        <div class="course-box">
            <p>Course ID: 1</p>
            <p>Course Name: B-TECH</p>
            <p>Instructor: Mr Anand</p>
            <p>Description: The B-TECH course provides a comprehensive understanding of various engineering disciplines, including computer science, electrical engineering, and mechanical engineering. Students will gain practical skills through hands-on projects and theoretical knowledge to excel in the ever-evolving field of technology.</p>
        </div>
    <%
        } else if ("2".equals(courseId)) {
    %>
        <div class="course-box">
            <p>Course ID: 2</p>
            <p>Course Name: BBA</p>
            <p>Instructor: xyz</p>
            <p>Description: The BBA (Bachelor of Business Administration) course focuses on developing essential business and management skills. Students will learn about finance, marketing, human resources, and strategic management. The program prepares individuals for leadership roles in the business world.</p>
        </div>
    <%
        } else if ("3".equals(courseId)) {
    %>
        <div class="course-box">
            <p>Course ID: 3</p>
            <p>Course Name: BCA</p>
            <p>Instructor: Robert Johnson</p>
            <p>Description: The BCA (Bachelor of Computer Applications) course is designed to equip students with programming, software development, and database management skills. It covers a range of computer science topics, enabling graduates to pursue careers in software development, IT consulting, and more.</p>
        </div>
    <%
        } else if ("4".equals(courseId)) {
    %>
        <div class="course-box">
            <p>Course ID: 4</p>
            <p>Course Name: MBA</p>
            <p>Instructor: Sarah Williams</p>
            <p>Description: The MBA (Master of Business Administration) program is a postgraduate degree that focuses on advanced business and management concepts. Students develop strategic thinking, leadership skills, and gain a deep understanding of global business practices, preparing them for leadership roles in various industries.</p>
        </div>
    <%
        } else if ("5".equals(courseId)) {
    %>
        <div class="course-box">
            <p>Course ID: 5</p>
            <p>Course Name: BSC</p>
            <p>Instructor: Michael Davis</p>
            <p>Description: The BSC (Bachelor of Science) program offers a broad education in the sciences. Students can specialize in areas such as biology, chemistry, physics, or environmental science. The program provides a solid foundation for those pursuing careers in research, healthcare, education, or environmental science.</p>
        </div>
    <%
        } else {
    %>
        <p>No details available for the selected course.</p>
    <%
        }
    %>
    
</body>
</html>
