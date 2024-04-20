<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Rental</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="select.css">
</head>
<body>
<nav class="navbar">
    <ul>
        <li><a href="#" onclick="toggleSection('welcome')">WELCOME</a></li>
        <li><a href="#" onclick="toggleSection('about')">ABOUT US</a></li>
        <li><a href="#" onclick="toggleSection('safety')">SAFETY</a></li>
        <li><a href="#" onclick="toggleSection('contact')">CONTACT US</a></li>
        <li><a href="#" onclick="toggleSection('support')">SUPPORT</a></li>
        <li><a href="#" onclick="toggleSection('terms')">TERMS & PRIVACY</a></li>
        <li><a href="#" onclick="toggleSection('instagram')"><i class="fab fa-instagram"></i></a></li>
        <li><a href="#" onclick="toggleSection('facebook')"><i class="fab fa-facebook"></i></a></li>
        <li><a href="#" onclick="toggleProfileForm()"><i class="fas fa-user-circle"></i> Profile</a></li>
    </ul>
</nav>

<div class="profile-form" id="profileForm">
    <h2>User Profile <i class="fas fa-user-circle"></i></h2>
    <!-- Display user profile data here -->
    <% 
        String name = (String)session.getAttribute("name");
        String interests = (String)session.getAttribute("interests");
        String hobbies = (String)session.getAttribute("hobbies");
    %>
    <div class="profile-details">
        <p><i class="fas fa-user"></i> <strong>Name:</strong> <%= name %></p>
        <p><i class="fas fa-heart"></i> <strong>Stories:</strong> <%= interests %></p>
        <p><i class="fas fa-futbol"></i> <strong>Hobbies:</strong> <%= hobbies %></p>
    </div>
    <a href="profile.jsp"><i class="fas fa-edit"></i> Update Profile</a>
</div>

<div class="section" id="welcome">
    <div class="container">
        <h1>Welcome!</h1>
        <h2>What would you like to do?</h2>
        <div class="box-link">
            <a href="shareRoom.jsp"><i class="fas fa-home"></i> Share a Room</a>
            <a href="rentRoom.jsp"><i class="fas fa-search"></i> Rent a Room</a>
        </div>
        <div class="form-container">
            <div class="booking-details">
                <h2><i class="fas fa-calendar-alt"></i> Enjoy Your Booking</h2>
                <!-- Display recent booking details here -->
            </div>
        </div>
    </div>
</div>

<!-- Add content for safety -->
<div class="section" id="safety">
    <div class="container">
        <h1>Safety</h1>
        
            <p>Ensuring the safety and security of our residents is our utmost priority. We conduct rigorous background checks on all property listings and implement stringent security measures to provide a secure living environment. From secure locks to well-lit common areas, we strive to create a safe space where women can feel comfortable and at ease.</p>
            
    </div>
</div>

<!-- Add content for about us -->
<div class="section" id="about">
    <div class="container">
        <h1>About Us</h1>
        welcome to [RENTAL], where we specialize in providing comfortable and secure rental accommodations tailored specifically for women. Whether you're a student embarking on a new academic journey, a professional pursuing career opportunities, or someone simply exploring a new city, we recognize the importance of finding a space that feels like home. Our carefully curated selection of rooms and rental properties is designed to offer a safe and welcoming environment where women can thrive.<br><br>
                <!-- Rest of About Us content -->
    </div>
</div>

<!-- Add content for contact us -->
<div class="section" id="contact">
    <div class="container">
        <h1>Contact Us</h1>
        <!-- Your contact us content goes here -->
        <h2><i class="fas fa-envelope"></i> Email</h2>
                <p><i class="fas fa-envelope-open-text"></i> Email: info@yourwebsite.com</p>
                <h2><i class="fas fa-phone"></i> Phone</h2>
                <p><i class="fas fa-phone-alt"></i> Phone: +1-123-456-7890</p>
                <h2><i class="fas fa-map-marker-alt"></i> Address</h2>
                <p><i class="fas fa-map-marked"></i> Address: 123 Main Street, City, State, ZIP</p>
    </div>
</div>

<!-- Add content for terms and privacy -->
<div class="section" id="terms">
    <div class="container">
        <h1>Terms&Privacy</h1>
        <!-- Your terms and privacy content goes here -->
    </div>
</div>

<div class="container2">
    <button class="back-button" onclick="window.location.href='Index.html'">Back</button>
</div>

<script>
function toggleSection(sectionId) {
    var sections = document.getElementsByClassName("section");
    for (var i = 0; i < sections.length; i++) {
        sections[i].style.display = "none"; // Hide all sections
    }
    var sectionToShow = document.getElementById(sectionId);
    sectionToShow.style.display = "block"; // Show the selected section
}

function toggleProfileForm() {
    var profileForm = document.getElementById("profileForm");
    if (profileForm.style.display === "block") {
        profileForm.style.display = "none";
    } else {
        profileForm.style.display = "block";
    }
}

window.onload = function() {
    var profileForm = document.getElementById("profileForm");
    var isLoggedIn = true; // Placeholder for user logged in
    var hasProfileData = false; // Placeholder for user having profile data

    // Check if user is logged in and has profile data
    if (isLoggedIn && hasProfileData) {
        toggleProfileForm(); // Display profile form by default
    }

    // Sample logic to save user profile data
    var name = "John Doe"; // Get name from user input
    var interests = "Traveling"; // Get interests from user input
    var hobbies = "Reading"; // Get hobbies from user input
    saveProfileData(name, interests, hobbies);
}

function saveProfileData(name, interests, hobbies) {
    // Sample logic to save user profile data, you can use AJAX or other methods to save to backend
    // Here, I'm just setting session variables for demonstration
    sessionStorage.setItem("name", name);
    sessionStorage.setItem("interests", interests);
    sessionStorage.setItem("hobbies", hobbies);
}
</script>

</body>
</html>
