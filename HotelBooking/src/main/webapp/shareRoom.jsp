<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Share Room</title>
    <link rel="stylesheet" type="text/css" href="sroom.css">
   <script>
    function showRooms() {
        var destination = document.getElementById("destination").value;
        var roomContainer = document.getElementById("roomContainer");
        // Clear previous rooms
        roomContainer.innerHTML = "";
        // Simulate fetching rooms from the server based on destination
        // Replace this with actual logic to fetch room data from the server
        if (destination.trim() !== "") {
            // Assuming room data is fetched based on the destination
            var rooms = getRoomsByDestination(destination);
            if (rooms.length > 0) {
                rooms.forEach(function(room) {
                    var roomDiv = document.createElement("div");
                    roomDiv.classList.add("room");

                    // Room image (placeholder)
                    var roomImg = document.createElement("img");
                    roomImg.src = "image/room.jpg";
                    roomDiv.appendChild(roomImg);

                    var roomDetails = document.createElement("div");
                    roomDetails.classList.add("room-details");
                    roomDetails.innerHTML = "<h3>Room " + room.id + "</h3>" +
                                            "<p>Description: " + room.description + "</p>" +
                                            "<p>Rate: $" + room.rate + " per Person</p>";

                    // Create a button element
                    var button = document.createElement("button");
                    button.textContent = "Book Now";
                    button.classList.add("book-now-btn");
                    // Attach click event to redirect to roomDetails.jsp with room ID
                    button.addEventListener("click", function() {
                        window.location.href = "shareRoomDetails.jsp?roomId=" + room.id;
                    });

                    // Append button to room details
                    roomDetails.appendChild(button);

                    // Append room details to room div
                    roomDiv.appendChild(roomDetails);

                    // Append room div to roomContainer
                    roomContainer.appendChild(roomDiv);
                });
            } else {
                roomContainer.innerHTML = "<p>No rooms available for " + destination + " at the moment.</p>";
            }
        }
    }

    // Function to fetch rooms based on destination (Replace with actual logic)
    function getRoomsByDestination(destination) {
        // Sample room data for demonstration
        var rooms = [];
        if (destination === "New York") {
            rooms.push({ id: 101, description: "Room with a view", rate: 100 });
            rooms.push({ id: 102, description: "Cozy single room", rate: 80 });
        } else if (destination === "Los Angeles") {
            rooms.push({ id: 201, description: "Luxury suite", rate: 200 });
        }
        return rooms;
    }
</script>

</head>
<body>
    <div class="container">
        <h1>Share Room</h1>
        <form>
            <label for="destination">Enter Destination:</label>
            <input type="text" id="destination" name="destination" required>
            <button type="button" onclick="showRooms()">Search</button>
        </form>
        <div id="roomContainer" class="room-container">
            <!-- Room details will be displayed here -->
        </div>
    </div>
</body>
</html>
