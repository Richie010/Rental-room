<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process Dates</title>
</head>
<body>
    <h1>Selected Dates</h1>
    <%
        // Get selected dates
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        
        // Dummy data: Booked dates
        String bookedCheckin = "2024-04-20";
        String bookedCheckout = "2024-04-25";
        
        // Check if selected dates overlap with booked dates
        boolean isBooked = false;
        if (checkin != null && checkout != null) {
            if (checkin.compareTo(bookedCheckout) < 0 && checkout.compareTo(bookedCheckin) > 0) {
                // Selected dates overlap with booked dates
                isBooked = true;
            }
        }
    %>
    <p>Check-in Date: <%= checkin %></p>
    <p>Check-out Date: <%= checkout %></p>
    
    <% if (isBooked) { %>
        <p style="color: red;">Sorry, the selected dates are already booked. Please choose different dates.</p>
    <% } else { %>
        <p>The selected dates are available.</p>
        <!-- Your further processing logic goes here -->
    <% } %>
</body>
</html>
