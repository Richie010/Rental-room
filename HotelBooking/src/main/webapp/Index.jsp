<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rental Confirmation</title>
</head>
<body>
    <h1>Rental Confirmation</h1>
    <p>Thank you for your rental request! We have received the following information:</p>
    <ul>
        <li><strong>Home Details:</strong> <%= request.getParameter("homeDetails") %></li>
        <li><strong>Amenities Available:</strong> <%= request.getParameter("amenities") %></li>
        <li><strong>Rental Rate per night:</strong> $<%= request.getParameter("rate") %></li>
        <li><strong>Dates Available for Rent:</strong> <%= request.getParameter("rentalDates") %></li>
    </ul>
    <!-- Here you can add logic to process the rental request, such as adding it to a database -->
</body>
</html>
