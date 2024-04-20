<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nearby Rental Places</title>
<style>    
    .place-list {
        list-style: none;
        padding: 0;
    }

    .place {
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 10px;
        cursor: pointer;
    }

    .place h2 {
        margin-top: 0;
        margin-bottom: 5px;
    }

    .place-details {
        display: none;
        margin-top: 10px;
    }

    .place-details p {
        margin: 5px 0;
    }
</style>
</head>
<body>
    <!-- Place List -->
    <h2>Nearby Rental Places</h2>
    <ul class="place-list" id="placeList">
        <!-- Rental places will be displayed here -->
    </ul>
    
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"></script>
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        // Initialize map and places service
        var map;
        var placesService;
        var mapCenter = { lat: YOUR_INITIAL_LATITUDE, lng: YOUR_INITIAL_LONGITUDE };
        map = new google.maps.Map(document.getElementById("map"), {
            center: mapCenter,
            zoom: 15
        });
        placesService = new google.maps.places.PlacesService(map);
        
        // Search for nearby rental places
        var request = {
            location: mapCenter,
            radius: '500',
            type: ['lodging']  // Specify the type as lodging for rental places
        };

        placesService.nearbySearch(request, function(results, status) {
            if (status === google.maps.places.PlacesServiceStatus.OK) {
                var placeList = document.getElementById("placeList");
                results.forEach(function(place) {
                    var placeHTML = "<li class='place' onclick='togglePlaceDetails(this)'>" +
                                        "<h2>" + place.name + "</h2>" +
                                        "<div class='place-details'>" +
                                            "<p>Name: " + place.name + "</p>" +
                                            "<p>Address: " + place.vicinity + "</p>" +
                                        "</div>" +
                                    "</li>";
                    placeList.insertAdjacentHTML("beforeend", placeHTML);
                });
            }
        });
    });

    function togglePlaceDetails(place) {
        var details = place.querySelector(".place-details");
        if (details.style.display === "none") {
            details.style.display = "block";
        } else {
            details.style.display = "none";
        }
    }
    </script>
</body>
</html>
