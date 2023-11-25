<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-image: url('studentprofile.jpg'); /* Replace with the path to your background image */
            background-size: cover;
            background-position: center;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.8); /* Use rgba for a semi-transparent white background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007BFF;
        }
        .details-box {
            background-color: #f0f0f0;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 6px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin-bottom: 5px;
        }
        a {
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="" method="post">
            Enter User ID: <input type="text" name="userId" />
            <input type="submit" value="Submit" />
        </form>

        <%
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish a connection
                String url = "jdbc:mysql://localhost:3306/universitymanagment_db";
                String username = "root";
                String password = "Lakshay@1808";
                connection = DriverManager.getConnection(url, username, password);

                // Get user ID from the form submission
                String userId = request.getParameter("userId");

                if (userId != null && !userId.isEmpty()) {
                    // Execute SQL queries to retrieve data
                    String userQuery = "SELECT * FROM users WHERE user_id = '" + userId + "'";
                    String coursesQuery = "SELECT c.course_name FROM courses c " +
                                          "JOIN user_courses uc ON c.course_id = uc.course_id " +
                                          "WHERE uc.user_id = '" + userId + "'";

                    statement = connection.createStatement();
                    resultSet = statement.executeQuery(userQuery);

                    if (resultSet.next()) {
                        String name = resultSet.getString("name");
                        String address = resultSet.getString("address");
                        String contact = resultSet.getString("contact");

                        // Display user details
        %>
                        <div class="details-box">
                            <h1>Student Profile</h1>

                            <p>Name: <%= name %></p>
                            <p>Address: <%= address %></p>
                            <p>Contact: <%= contact %></p>
                        </div>

                        <div class="details-box">
                            <h2>Enrolled Courses</h2>
                            <ul>
        <%
                                // Execute courses query
                                resultSet = statement.executeQuery(coursesQuery);

                                // Display enrolled courses
                                while (resultSet.next()) {
                                    String courseName = resultSet.getString("course_name");
        %>
                                    <li><%= courseName %></li>
        <%
                                }
        %>
                            </ul>
                        </div>

                        <a href="updateProfile.jsp">Update Profile</a>
        <%
                    } else {
        %>
                        <p>Student not found</p>
        <%
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Close resources
                try { if (resultSet != null) resultSet.close(); } catch (SQLException e) {}
                try { if (statement != null) statement.close(); } catch (SQLException e) {}
                try { if (connection != null) connection.close(); } catch (SQLException e) {}
            }
        %>
    </div>
</body>
</html>
