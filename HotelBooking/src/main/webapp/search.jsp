<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rent a Room</title>
</head>
<body>
    <h1>Rent a Room</h1>
    <form action="rentalConfirmation.jsp" method="post">
        <label for="homeDetails">Home Details:</label><br>
        <textarea id="homeDetails" name="homeDetails" rows="4" cols="50" required></textarea><br><br>
        
        <label for="amenities">Amenities Available:</label><br>
        <textarea id="amenities" name="amenities" rows="4" cols="50" required></textarea><br><br>
        
        <label for="rate">Rental Rate per night ($):</label><br>
        <input type="number" id="rate" name="rate" min="0" step="0.01" required><br><br>
        
        <label for="rentalDates">Dates Available for Rent:</label><br>
        <input type="text" id="rentalDates" name="rentalDates" required> <!-- Use a date picker library for selecting dates -->
        <br><br>
        
        <button type="submit">Submit</button>
    </form>
</body>
</html>
