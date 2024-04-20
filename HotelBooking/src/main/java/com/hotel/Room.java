package com.hotel;

public class Room {
	  private int id;
    private String description;
    private String location;
    private double rate;

    public Room(String description, String location, double rate) {
        this.description = description;
        this.location = location;
        this.rate = rate;
    }

    // Getters for room attributes
    public String getDescription() {
        return description;
    }

    public String getLocation() {
        return location;
    }

    public double getRate() {
        return rate;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
