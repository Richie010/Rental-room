<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" href="signup.css">
</head>
<body>
<div class="container">
    <h2>Signup Form</h2>
    <form action="SignupServlet" method="post">
        <label for="username" class="fas fa-user">Username:</label>
        <input type="text" id="username"  name="username" placeholder="Enter your username">
        <label for="password" class="fas fa-lock">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password">
        <label for="email" class="fas fa-envelope">Email:</label>
        <input type="text" id="email" name="email" placeholder="Enter your Email">
        <input type="submit" value="Signup">
    </form>
</div>
</body>
</html>
