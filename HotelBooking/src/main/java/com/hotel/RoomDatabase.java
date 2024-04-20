package com.hotel;

import java.util.ArrayList;
import java.util.List;

public class RoomDatabase {
    private static List<Room> rooms = new ArrayList<>();

    static {
        // Sample room data
        rooms.add(new Room("Room 1", "New York", 100.0));
        rooms.add(new Room("Room 2", "Los Angeles", 80.0));
        rooms.add(new Room("Room 3", "New York", 120.0));
        // Add sample rooms for Chennai
        rooms.add(new Room("Room 4", "Chennai", 90.0));
        rooms.add(new Room("Room 5", "Chennai", 110.0));
    }

    public static List<Room> searchRoomsByDestination(String destination) {
        List<Room> matchingRooms = new ArrayList<>();
        for (Room room : rooms) {
            if (room.getLocation().equalsIgnoreCase(destination)) {
                matchingRooms.add(room);
            }
        }
        return matchingRooms;
    }
}
