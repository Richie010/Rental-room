<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    h1, h2, h3 {
        color: #333;
        text-align: center;
    }

    .room-info {
        max-width: 800px;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .room-description {
        text-align: center;
    }

    .amenities {
        margin-top: 20px;
    }

    .amenities ul {
        list-style: none;
        padding: 0;
    }

    .amenities ul li {
        margin-bottom: 5px;
    }

    form {
        max-width: 500px;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        position: relative; /* Add position relative */
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"],
    select {
        width: calc(100% - 18px); /* Adjusted width to account for padding */
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    button[type="submit"],
    .back-button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    button[type="submit"]:hover,
    .back-button:hover {
        background-color: #0056b3;
    }

    /* Style for the pop-up message */
    .popup {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        z-index: 9999;
    }

    /* Style for the room details */
    .room-details {
        text-align: center;
        margin-top: 20px;
    }

    .room-image {
        max-width: 100%;
        border-radius: 10px;
        margin-bottom: 20px;
    }

    .room-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .room-description p {
        margin-bottom: 10px;
    }

    /* Positioning for the buttons */
    .button-container {
        text-align: center;
        margin-top: 20px;
    }

    .back-button {
        margin-right: 10px; /* Adjust margin as needed */
    }
</style>
</head>
<body>
    <h1>Room Details</h1>
    
    <div class="room-info">
        <div class="room-details">
            <img class="room-image" src="image/hs.jpg" alt="Room Image">
            <div class="room-description">
                <h2 class="room-title">Luxury Suite</h2>
                <p>Spacious luxury suite with stunning views. Perfect for a romantic getaway or a relaxing retreat.</p>
            </div>
            <div class="amenities">
                <h3>Amenities</h3>
                <ul>
                    <li>WiFi</li>
                    <li>TV</li>
                    <li>Heating</li>
                    <!-- Add more amenities as needed -->
                </ul>
            </div>
        </div>
    </div>

    <h2>Tenant Information</h2>
    <form id="tenantForm" action="submitTenantInfo.jsp" method="post" onsubmit="showSuccessMessage(); return false;">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required><br>
        <label for="checkInDate">Check-in Date:</label>
        <input type="date" id="checkInDate" name="checkInDate" required><br>
        <label for="smoking">Smoking:</label>
        <select id="smoking" name="smoking">
            <option value="Yes">Yes</option>
            <option value="No">No</option>
        </select><br>
       <label for="drinking">Drinking:</label>
        <select id="drinking" name="drinking">
            <option value="Yes">Yes</option>
            <option value="No">No</option>
        </select><br>
        <div class="button-container">
            <button type="submit">Submit</button>
            <button class="back-button" onclick="goBack()">Back</button>
        </div>
    </form>

    <!-- Pop-up message -->
    <div id="popupMessage" class="popup" style="display: none;">
        Tenant information submitted successfully! Room booked.
    </div>

    <script>
        function showSuccessMessage() {
            document.getElementById("popupMessage").style.display = "block";
            setTimeout(function(){
                window.location.href = "rentRoom.jsp";
            }, 3000); // Redirect after 3 seconds (adjust as needed)
        }

        // Function to go back to shareRoom.jsp
        function goBack() {
            window.location.href = "Select.jsp";
        }
    </script>
</body>
</html>
