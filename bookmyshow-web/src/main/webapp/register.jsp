<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - BookMyShow</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f44336, #ff5252, #ff8a80);
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #fff;
            background-size: cover;
        }

        .auth-container {
            max-width: 350px;
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            background: #fff;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        h2 {
            margin-bottom: 20px;
            font-size: 26px;
            font-weight: bold;
            color: #f44336;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
            text-align: left;
        }

        label {
            font-weight: bold;
            font-size: 13px;
            color: #333;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
            background: #f9f9f9;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
            background-color: #fff;
            border-color: #f44336;
        }

        button {
            background: linear-gradient(90deg, #f44336, #ff5252);
            color: #fff;
            font-size: 15px;
            font-weight: bold;
            padding: 10px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }

        button:active {
            transform: translateY(1px);
        }

        p {
            margin-top: 15px;
            font-size: 13px;
        }

        a {
            color: #f44336;
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #ff5252;
        }

        @media (max-width: 768px) {
            .auth-container {
                padding: 25px;
                max-width: 85%;
                width: 100%;
            }

            h2 {
                font-size: 24px;
                margin-bottom: 15px;
            }

            .form-group {
                gap: 10px;
            }

            input[type="text"], input[type="email"], input[type="password"] {
                font-size: 15px;
                padding: 14px;
            }

            button {
                font-size: 14px;
                padding: 14px;
            }

            p {
                font-size: 12px;
            }
        }

        @media (max-width: 480px) {
            h2 {
                font-size: 22px;
                margin-bottom: 10px;
            }

            .auth-container {
                padding: 20px;
                max-width: 90%;
            }

            input[type="text"], input[type="email"], input[type="password"] {
                font-size: 16px;
                padding: 16px;
            }

            button {
                font-size: 14px;
                padding: 16px;
            }

            p {
                font-size: 11px;
            }
        }
    </style>
</head>
<body>
    <div class="auth-container">
        
        
        <h2>Register</h2>
        <form action="register" method="post">
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required placeholder="Enter your full name">
            </div>
            
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required placeholder="Enter your username">
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required placeholder="Enter your email">
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            
            <button type="submit">Register</button>
            
            <p style="color: black;">Already have an account? <a href="login.jsp">Login here</a></p>
        </form>
    </div>
</body>
</html>
