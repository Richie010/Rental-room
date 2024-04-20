<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<!-- Add Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
/* General styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
}

.container {
    max-width: 800px;
    margin: 50px auto;
    background-color: #fff;
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    text-align: center;
}

h1 {
    margin-top: 0;
    color: #333;
}

.profile-form {
    text-align: left;
}

.profile-form label {
    display: block;
    margin-bottom: 10px;
    color: #007bff; /* Blue color for labels */
}

.profile-form input[type="text"],
.profile-form textarea {
    width: calc(100% - 20px);
    margin-bottom: 10px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.profile-form input[type="submit"] {
    width: auto;
    cursor: pointer;
    padding: 12px 30px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    font-size: 16px;
    transition: background-color 0.3s;
}

.profile-form input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<div class="container">
    <h1><i class="fas fa-user-circle"></i> User Profile</h1>
    <div class="profile-form">
        <form action="saveprofile.jsp" method="post">
            <label for="name"><i class="fas fa-user"></i> Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="interests"><i class="fas fa-heart"></i> Interests:</label>
            <textarea id="interests" name="interests" rows="3"></textarea>
            <label for="hobbies"><i class="fas fa-futbol"></i> Hobbies:</label>
            <textarea id="hobbies" name="hobbies" rows="3"></textarea>
            
            <!-- Add more fields as needed -->
            <input type="submit" value="Save Profile">
        </form>
    </div>
</div>
</body>
</html>
s