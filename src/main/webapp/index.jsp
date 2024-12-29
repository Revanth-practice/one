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
            <input type="text" id="venkatesh" placeholder="Username" required><br>
            <input type="password" id="Venkatesh p" placeholder="Password" required><br>
            <button type="submit">Login</button>
        </form>
    </div>
</div>

<div class="container message" id="message-container">
    <h1>Welcome Venkatesh !</h1>
    <p>My personal views :

New year brings new hope ! New vibes encourage us to live and improve our life in a better manner by taking new resolutions changing our habits and sticking to the resolutions made can help someone to be a better personality and happiness may increase by enjoying the way of living life.

Only on special day when a new year begins there is a hope of improvement in everything, for praying for betterment of our world by all people around the world ,each one prays and wanted best thing to happen in new year ,each one wants something good :may be its health, prosperous successful wealthy life , each one wishes us hopes to let this pandemic vanish from the whole world and each one expects to live a virus free environment, where situations must be stable and happiness all around the world hoping and may all countries develop and success comes in all the world with great future and good helping innovativions which may lead to more job opportunity for all youths .

All the good wishes can just build a hope and will to improve ourselves for betterment of our life give us strength to fight against the environmental conditions and give us strength to be strong to face situation in life !

Thanks for asking me this question and wishing all a very happy and prosperous new year.</p>
    <img src="https://www.pngwing.com/en/free-png-pctso" alt="Biriyani Image">
    <p>Cheers to great memories!</p>
    <button class="logout-btn" onclick="logout()">Logout</button>
</div>

<script>
    // Hardcoded credentials (for demonstration purposes)
    const correctUsername = "venkatesh";
    const correctPassword = "Venkatesh p";

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
