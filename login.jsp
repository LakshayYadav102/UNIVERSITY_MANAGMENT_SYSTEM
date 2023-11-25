<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: url('Loginpage.jpg') center/cover no-repeat; /* Replace with your image path */
        }

        header {
            background-color: rgba(0, 0, 0, 0.5); /* Darker background for better text visibility */
            color: #fff;
            text-align: center;
            padding: 2em;
            margin-bottom: 20px;
            border-bottom: 2px solid #ddd;
        }

        h1, h2 {
            color: #fff; /* Set text color to white */
        }

        h1 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        section {
            width: 350px;
            margin: 20px auto;
            background-color: rgba(0, 0, 0, 0.7); /* Adjust opacity as needed */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #fff; /* Set text color to white */
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #fff; /* Set text color to white */
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: rgba(255, 255, 255, 0.8); /* Adjust opacity as needed */
            color: #333; /* Set text color to dark */
            cursor: pointer;
            border: none;
        }

        input[type="submit"]:hover {
            background-color: rgba(255, 255, 255, 1); /* Adjust opacity as needed */
        }

        p.error-message {
            color: red;
        }

        .info-box {
            background-color: rgba(255, 255, 255, 0.9); /* Adjust opacity as needed */
            padding: 15px;
            position: fixed;
            bottom: 20px;
            right: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <header>
        <h1 style="color: #f9f9f9;">EWA PROJECT</h1>
        <h2>Welcome to Our University</h2>
    </header>

    <section>
        <h2>Login</h2>
        <% if (request.getParameter("error") != null) { %>
            <p class="error-message">Invalid username or password. Please try again.</p>
        <% } %>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="Login">
        </form>
    </section>

    <div class="info-box">
        <p><strong>University Management System</strong></p>
        <p>Made by:-Lakshay Yadav, Vaibhav Kadian, 
                     Ksitij Verma, Ayush Dalal</p>
    </div>
</body>
</html>
