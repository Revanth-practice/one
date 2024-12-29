<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login/Logout Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
        }
        .hidden {
            display: none;
        }
        .login-form, .logout-btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Login Form -->
    <div class="login-form" id="login-form">
        <h2>Login</h2>
        <form id="loginForm">
            <input type="text" id="username" placeholder="Username" required><br><br>
            <input type="password" id="password" placeholder="Password" required><br><br>
            <button type="submit">Login</button>
        </form>
    </div>

    <!-- Welcome Message and Logout Button -->
    <div class="logout-btn hidden" id="logout-btn">
        <h2>Welcome, <span id="user-name"></span>!</h2>
        <button onclick="logout()">Logout</button>
    </div>
</div>

<script>
    // Check if the user is already logged in
    window.onload = function() {
        if(localStorage.getItem("loggedIn") === "true") {
            showLogoutPage();
        } else {
            showLoginPage();
        }
    };

    // Show Login Form
    function showLoginPage() {
        document.getElementById("login-form").classList.remove("hidden");
        document.getElementById("logout-btn").classList.add("hidden");
    }

    // Show Logout Page
    function showLogoutPage() {
        const username = localStorage.getItem("username");
        document.getElementById("user-name").innerText = username;
        document.getElementById("login-form").classList.add("hidden");
        document.getElementById("logout-btn").classList.remove("hidden");
    }

    // Handle Login Form Submit
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault();

        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        // Here you can add your login verification logic (e.g., checking against a database)
        if (username && password) {
            localStorage.setItem("loggedIn", "true");
            localStorage.setItem("username", username);
            showLogoutPage();
        } else {
            alert("Please enter a valid username and password.");
        }
    });

    // Logout Function
    function logout() {
        localStorage.removeItem("loggedIn");
        localStorage.removeItem("username");
        showLoginPage();
    }
</script>

</body>
</html>
