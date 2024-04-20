<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="log.css">
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="Login" method="post">
            <label for="uname"><i class="fas fa-user"></i> Username:</label>
            <input type="text" id="uname" name="uname" placeholder="Enter your username">
            <label for="pass"><i class="fas fa-lock"></i> Password:</label>
            <input type="password" id="pass" name="pass" placeholder="Enter your password">
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
