<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hotel.Room" %>
<%@ page import="com.hotel.RoomDatabase" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rent a Room</title>
    <style>
        /* Updated Styles with Enhanced Look */
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
            margin: 50px auto;
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            background: linear-gradient(to right, #2f952b, #14838b);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color: #fdf9f9;
        }

        h1, h2 {
            margin-top: 0;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color: #fdf9f9;
        }

        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        li {
            width: 30%;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
            position: relative;
            background-color: #fff;
        }

        li:hover {
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .room-info {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .room-image {
            width: 100%;
            height: auto;
            margin-bottom: 10px;
            border-radius: 5px;
        }

        .room-description {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: center;
        }

        .room-rate {
            font-size: 16px;
            color: #666;
        }

        .show-amenities {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
            margin-top: 10px;
        }

        .amenities {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #f9f9f9;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            z-index: 1;
        }

        .amenities ul {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        .amenities li {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Rent a Room</h1>
        <!-- Search form for destination -->
        <form action="rentRoom.jsp" method="get">
            <label for="destination">Enter Destination:</label>
            <input type="text" id="destination" name="destination" required>
            <button type="submit">Search</button>
        </form>
        
        <!-- Display search results -->
        <%
            String destination = request.getParameter("destination");
            if (destination != null && !destination.isEmpty()) {
                // Perform room search based on destination
                List<Room> rooms = RoomDatabase.searchRoomsByDestination(destination);
        %>
                <h2>Available Rooms in <%= destination %></h2>
                <% if (rooms.isEmpty()) { %>
                    <p>No rooms available in <%= destination %> at the moment.</p>
                <% } else { %>
                    <ul>
                        <% for (Room room : rooms) { %>
                            <li>
                                <div class="room-info">
                                    <img class="room-image" src="image/home.jpeg" alt="Room Image">
                                    <div class="room-description"><%= room.getDescription() %></div>
                                    <div class="room-rate">Rate: $<%= room.getRate() %> per night</div>
                                    <!-- Button to redirect to rentroomdata page -->
                                    <a href="rentroomdata.jsp?roomId=<%= room.getId() %>">
                                        <button class="show-amenities">Rent This Room</button>
                                    </a>
                                    <button class="show-amenities">Show Amenities</button>
                                    <div class="amenities">
                                        <p>Amenities:</p>
                                        <ul>
                                            <li>WiFi</li>
                                            <li>Heater</li>
                                            <li>TV</li>
                                            <!-- Add more amenities as needed -->
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        <% } %>
                    </ul>
                <% } %>
        <%
            }
        %>
        
        <script>
            // JavaScript to toggle visibility of amenities section
            const showButtons = document.querySelectorAll('.show-amenities');
            showButtons.forEach(button => {
                button.addEventListener('click', function() {
                    const amenities = this.nextElementSibling;
                    amenities.style.display = amenities.style.display === 'block' ? 'none' : 'block';
                });
            });
        </script>
    </div>
</body>
</html>
