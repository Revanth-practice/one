<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login/Logout Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .hidden {
            display: none;
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
            margin-top: 20px;
            font-size: 18px;
            color: #333;
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

<div class="container">
    <!-- Login Form -->
    <div class="login-form" id="login-form">
        <h2>Login</h2>
        <form id="loginForm">
            <input type="text" id="Venkatesh" placeholder="Username" required><br>
            <input type="password" id="venkatesh p" placeholder="Password" required><br>
            <button type="submit">Login</button>
        </form>
    </div>

    <!-- Friendship Message and Logout Button -->
    <div class="message hidden" id="friendship-message">
        <h2>Welcome, <span id="user-name"></span>!</h2>
        <p>Hello Venkatesh.</p>
        <p>How are you? Hope you are fine.</p>
        <p>Lets Rock on 31st night.</p>
    <div class="container">
    <!-- Replace the src attribute with your image source -->
    <img src="https://www.freepik.com/premium-photo/open-bottle-beer_5391266.htm" alt="Alcohol Bottle with Open Cap">

    <div class="caption">
        <button class="logout-btn" onclick="logout()">Logout</button>
    </div>
</div>

<script>
    // On page load, check if the user is already logged in
    window.onload = function() {
        if (localStorage.getItem("loggedIn") === "true") {
            showFriendshipMessage();
        } else {
            showLoginPage();
        }
    };

    // Display the login form
    function showLoginPage() {
        document.getElementById("login-form").classList.remove("hidden");
        document.getElementById("friendship-message").classList.add("hidden");
    }

    // Display the friendship message and logout button
    function showFriendshipMessage() {
        const username = localStorage.getItem("username");
        document.getElementById("user-name").innerText = username;
        document.getElementById("login-form").classList.add("hidden");
        document.getElementById("friendship-message").classList.remove("hidden");
    }

    // Handle login form submission
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault();

        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        // Simple validation (in a real-world scenario, you would validate against a database)
        if (username && password) {
            localStorage.setItem("loggedIn", "true");
            localStorage.setItem("username", username);
            showFriendshipMessage();
        } else {
            alert("Please enter a valid username and password.");
        }
    });

    // Handle logout
    function logout() {
        localStorage.removeItem("loggedIn");
        localStorage.removeItem("username");
        showLoginPage();
    }
</script>

</body>
</html>
