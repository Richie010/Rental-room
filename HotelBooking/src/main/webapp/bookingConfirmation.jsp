<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9; /* Light gray background */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.5s ease-in-out; /* Fade-in animation */
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .booking-details {
            margin-top: 30px;
        }
        .booking-details p {
            margin: 10px 0;
            font-size: 18px;
            color: #555; /* Darker text color */
        }
        .booking-details h2 {
            color: #007bff;
        }
        .booking-details table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .booking-details th, .booking-details td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        .booking-details th {
            background-color: #f2f2f2;
        }
        .button-container {
            text-align: center;
            margin-top: 30px;
        }
        .button-container button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-right: 10px;
            animation: bounce 0.5s infinite alternate; /* Bouncing animation */
        }
        @keyframes bounce {
            to {
                transform: translateY(-5px);
            }
        }
        .button-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Booking Confirmation</h1>
        <div class="booking-details">
            <h2>User Profile</h2>
            <p><strong>Name:</strong> <%= request.getParameter("name") %></p>
            <p><strong>Gender:</strong> <%= request.getParameter("gender") %></p>
            <h2>Room Booking Details</h2>
            <table>
                <tr>
                    <th>Room Number</th>
                    <th>Check-in Date</th>
                    <th>Check-out Date</th>
                </tr>
                <tr>
                    <td>101</td>
                    <td><%= request.getParameter("checkIn") %></td>
                    <td><%= request.getParameter("checkOut") %></td>
                </tr>
                <!-- Add more rows for additional room bookings if needed -->
            </table>
        </div>
        <div class="button-container">
            <button onclick="window.print()">Print Confirmation</button>
            <button onclick="window.location.href='shareRoom.jsp'">Back to Share Room</button>
        </div>
    </div>
</body>
</html>
