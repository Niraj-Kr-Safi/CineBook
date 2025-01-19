<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - BookMyShow</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f44336, #ff5252, #ff8a80); /* Shades of red similar to BookMyShow */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #fff;
            background-size: cover;
        }

        .login-container {
            max-width: 350px; /* Adjusted width to match registration page */
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            background: #fff; /* White background for the inner box */
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 25px;
            font-size: 30px;
            font-weight: bold;
            color: #f44336; /* Red color for title */
            text-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .input-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
            text-align: left;
        }

        label {
            font-weight: bold;
            font-size: 14px;
            color: #333; /* Dark gray color for labels */
        }

        input[type="text"], input[type="password"] {
            padding: 12px;
            border: 1px solid #ccc; /* Light border to separate input fields */
            border-radius: 8px;
            outline: none;
            background: #f9f9f9; /* Lighter background for inputs */
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            background-color: #fff; /* White background when focused */
            border-color: #f44336; /* Red border on focus */
        }

        button {
            background: linear-gradient(90deg, #f44336, #ff5252); /* Red gradient for the button */
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        button:active {
            transform: translateY(1px);
        }

        p {
            margin-top: 20px;
            font-size: 14px;
        }

        a {
            color: #f44336; /* Red link color */
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #ff5252; /* Slightly lighter red on hover */
        }

        /* Media Queries for mobile responsiveness */
        @media (max-width: 768px) {
            h2 {
                font-size: 24px; /* Smaller font for the title on mobile */
                margin-bottom: 20px;
            }

            .login-container {
                padding: 30px;
                max-width: 90%;
                width: 100%;
            }

            .input-group {
                gap: 10px;
            }

            input[type="text"], input[type="password"] {
                font-size: 16px; /* Increase input font size for easier typing on mobile */
                padding: 15px;
            }

            button {
                font-size: 14px; /* Adjust button text size */
                padding: 15px;
            }

            p {
                font-size: 12px;
            }
        }

        @media (max-width: 480px) {
            h2 {
                font-size: 22px; /* Even smaller title font on very small screens */
                margin-bottom: 15px;
            }

            .login-container {
                padding: 25px;
                max-width: 95%;
            }

            input[type="text"], input[type="password"] {
                font-size: 18px; /* Adjust font size for better mobile readability */
                padding: 18px;
            }

            button {
                font-size: 14px;
                padding: 18px;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <!-- Image before the login form -->
        
        
        <h2>Login</h2>
        <form action="login" method="post">
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required placeholder="Enter your username">
            </div>
            
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            
            <button type="submit">Login</button>
            
            <p style="color: black;">Don't have an account? <a href="register.jsp">Register here</a></p>
        </form>
    </div>
</body>
</html>