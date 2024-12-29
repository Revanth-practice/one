<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login to View Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
        }
        .login-form input {
            margin: 10px 0;
            padding: 10px;
            width: 80%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-form button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-form button:hover {
            background-color: #45a049;
        }
        .message {
            display: none;
            margin-top: 20px;
        }
        .message img {
            width: 300px;
            height: auto;
            margin-top: 20px;
        }
        .logout-btn {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .logout-btn:hover {
            background-color: #e53935;
        }
    </style>
</head>
<body>

<div class="container" id="login-container">
    <h1>Login</h1>
    <div class="login-form">
        <form id="loginForm">
            <input type="text" id="Venkatesh" placeholder="Username" required><br>
            <input type="password" id="password" placeholder="Password" required><br>
            <button type="submit">Login</button>
        </form>
    </div>
</div>

<div class="container message" id="message-container">
    <h1>Welcome to Venkatesh's Special December 31 Night!</h1>
    <p>Enjoy a delicious plate of Biriyani to celebrate the night.</p>
    <img src="https://www.pngwing.com/en/free-png-pctso" alt="Biriyani Image">
    <p>Cheers to great memories!</p>
    <button class="logout-btn" onclick="logout()">Logout</button>
</div>

<script>
    // Hardcoded credentials (for demonstration purposes)
    const correctUsername = "venkatesh";
    const correctPassword = "password123";

    // Login logic
    document.getElementById('loginForm').addEventListener('submit', function(event) {
        event.preventDefault();

        // Get username and password
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        // Check if username and password are correct
        if (username === correctUsername && password === correctPassword) {
            // Store login state in localStorage
            localStorage.setItem('loggedIn', 'true');
            localStorage.setItem('username', username);
            showMessagePage();
        } else {
            alert('Invalid username or password. Please try again.');
        }
    });

    // Show the message page after login
    function showMessagePage() {
        document.getElementById('login-container').style.display = 'none';
        document.getElementById('message-container').style.display = 'block';
    }

    // Show the login page
    function showLoginPage() {
        document.getElementById('login-container').style.display = 'block';
        document.getElementById('message-container').style.display = 'none';
    }

    // Logout logic
    function logout() {
        // Clear login state
        localStorage.removeItem('loggedIn');
        localStorage.removeItem('username');
        showLoginPage();
    }

    // Check if the user is already logged in when the page loads
    window.onload = function() {
        if (localStorage.getItem('loggedIn') === 'true') {
            showMessagePage();
        } else {
            showLoginPage();
        }
    };
</script>

</body>
</html>
