<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Profile</title>
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
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Profile</h1>

        <form action="" method="post">
            <div class="form-group">
                <label for="userId">User ID:</label>
                <input type="text" name="userId" required />
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" name="name" required />
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" name="address" required />
            </div>
            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" name="contact" required />
            </div>
            <input type="submit" value="Update Profile" />
        </form>

        <%
            Connection connection = null;
            PreparedStatement preparedStatement = null;

            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish a connection
                String url = "jdbc:mysql://localhost:3306/universitymanagment_db";
                String username = "root";
                String password = "Lakshay@1808";
                connection = DriverManager.getConnection(url, username, password);

                // Check if the form is submitted
                if (request.getMethod().equalsIgnoreCase("post")) {
                    // Retrieve form data
                    String userId = request.getParameter("userId");
                    String name = request.getParameter("name");
                    String address = request.getParameter("address");
                    String contact = request.getParameter("contact");

                    // Update user profile in the database
                    String updateQuery = "UPDATE users SET name=?, address=?, contact=? WHERE user_id=?";
                    preparedStatement = connection.prepareStatement(updateQuery);
                    preparedStatement.setString(1, name);
                    preparedStatement.setString(2, address);
                    preparedStatement.setString(3, contact);
                    preparedStatement.setString(4, userId);

                    int rowsAffected = preparedStatement.executeUpdate();

                    if (rowsAffected > 0) {
        %>
                        <p>Profile updated successfully!</p>
        <%
                    } else {
        %>
                        <p>Error updating profile. Please check the provided user ID.</p>
        <%
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Close resources
                try { if (preparedStatement != null) preparedStatement.close(); } catch (SQLException e) {}
                try { if (connection != null) connection.close(); } catch (SQLException e) {}
            }
        %>
    </div>
</body>
</html>
