<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Room Details</title>
    <style>
        /* Updated CSS with Enhanced Look */
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: top;
            background-image: linear-gradient(to right, rgba(42, 95, 230, 0.786), rgba(228, 46, 104, 0.859)), url('./image/image.jpg');
        }

        .container {
            max-width: 800px;
            margin: 80px auto;
            background: linear-gradient(to right, #2f952b, #14838b);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        h1, h2 {
            margin-top: 0;
            color: #fdf9f9;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        /* Button Styles */
        .room button {
            display: inline-block;
            padding: 15px 40px;
            border-radius: 25px;
            background: linear-gradient(to right, #2e6af5, #f82f39);
            color: #fff;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s;
            font-size: 18px;
            font-weight: bold;
            letter-spacing: 1px;
            border: none;
            cursor: pointer;
            margin: 10px;
        }

        /* Button Hover Effects */
        .room button:hover {
            color: #f8f9f6;
            background: #e01832;
            text-shadow: 0 0 1px #ffffffb7, 0 0 2px #ffffffb7, 0 0 20px #ffffffc2;
            box-shadow: 0 0 2px #ff0000, 0 0 10px #ff0008, 0 0 15px #ff0000, 0 0 12px #ff0000;
        }

        /* Guest Details Form */
        .guest-details {
            display: none;
            position: absolute;
            top: 100%;
            left: 50%;
            transform: translateX(-50%);
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .room:hover .guest-details {
            display: block;
        }

        /* Form Styling */
        .guest-details form {
            text-align: left;
        }

        .guest-details label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .guest-details input,
        .guest-details select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        .guest-details button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #2e6af5;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .guest-details button:hover {
            background-color: #f82f39;
        }
    </style>
</head>
<body>
<%
    // Retrieve destination parameter from URL
    String roomIdParam = request.getParameter("roomId");
    if (roomIdParam != null && !roomIdParam.isEmpty()) {
        int roomId = Integer.parseInt(roomIdParam);
        // Display room details based on room ID
        if (roomId == 101) {
%>
    <div class="container">
        <h1>Room Details in New York</h1>
        <div class="room">
            <h2>Room 101</h2>
            <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac lorem eu turpis vehicula luctus. Phasellus et orci ullamcorper, placerat felis sit amet, tincidunt tellus.</p>
            <p>Amenities: WiFi, Heater, TV</p>
            <p>Already Stayed: John Doe, Mary Smith</p>
            <!-- Guest details form -->
            <div class="guest-details">
                <h3>Guest Details for Room 101</h3>
                <form action="bookingConfirmation.jsp" method="post">
                    <label for="checkIn">Check-in Date:</label>
                    <input type="date" id="checkIn" name="checkIn" required>
                    <label for="checkOut">Check-out Date:</label>
                    <input type="date" id="checkOut" name="checkOut" required>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="female">Female</option>
                    </select>
                    <!-- Add more guest details fields as needed -->
                    <button type="submit">Book Now</button>
                </form>
            </div>
            <button>Book Room 101</button>
        </div>
    </div>
<%
        } else if (roomId == 102) {
%>
    <div class="container">
        <h1>Room Details in New York</h1>
        <div class="room">
            <h2>Room 102</h2>
            <p>Description: Another room description here.</p>
            <p>Amenities: WiFi, Heater, TV</p>
            <p>Already Stayed: Jane Doe, Michael Smith</p>
            <!-- Guest details form -->
            <div class="guest-details">
                <h3>Guest Details for Room 102</h3>
                <form action="bookingConfirmation.jsp" method="post">
                    <label for="checkIn">Check-in Date:</label>
                    <input type="date" id="checkIn" name="checkIn" required>
                    <label for="checkOut">Check-out Date:</label>
                    <input type="date" id="checkOut" name="checkOut" required>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="male">Male</option>
                    </select>
                    <!-- Add more guest details fields as needed -->
                    <button type="submit">Book Now</button>
                </form>
            </div>
            <button>Book Room 102</button>
        </div>
    </div>
<%
        } else if (roomId == 201) {
%>
    <div class="container">
        <h1>Room Details in New York</h1>
        <div class="room">
            <h2>Room 201</h2>
            <p>Description: Yet another room description here.</p>
            <p>Amenities: WiFi, Heater, TV</p>
            <p>Already Stayed: Sarah Johnson, Chris Brown</p>
            <!-- Guest details form -->
            <div class="guest-details">
                <h3>Guest Details for Room 201</h3>
                <form action="bookingConfirmation.jsp" method="post">
                    <label for="checkIn">Check-in Date:</label>
                    <input type="date" id="checkIn" name="checkIn" required>
                    <label for="checkOut">Check-out Date:</label>
                    <input type="date" id="checkOut" name="checkOut" required>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="female">Female</option>
                        <option value="male">Male</option>
                    </select>
                    <!-- Add more guest details fields as needed -->
                    <button type="submit">Book Now</button>
                </form>
            </div>
            <button>Book Room 201</button>
        </div>
    </div>
<%
        } else {
%>
    <p>No room details available for the selected room.</p>
<%
        }
    } else {
%>
    <p>No room selected.</p>
<%
    }
%>

</body>
</html>
