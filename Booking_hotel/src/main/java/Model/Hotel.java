/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author lenovo
 */
public class Hotel {

    private int hotelID;
    private String name_hotel;
    private String address;
    private String image;
    private int number_room;
    private float amount;
    private String type;

    public Hotel() {

    }

    public Hotel(int hotelID, String name_hotel, String address, String image, int number_room, float amount, String type) {
        this.hotelID = hotelID;
        this.name_hotel = name_hotel;
        this.address = address;
        this.image = image;
        this.number_room = number_room;
        this.amount = amount;
        this.type = type;
    }

    public Hotel( String name_hotel, String address, String image, int number_room, float amount, String type) {
        this.name_hotel = name_hotel;
        this.address = address;
        this.image = image;
        this.number_room = number_room;
        this.amount = amount;
        this.type = type;
    }

    public int getHotelID() {
        return hotelID;
    }

    public void setHotelID(int hotelID) {
        this.hotelID = hotelID;
    }

    public String getName_hotel() {
        return name_hotel;
    }

    public void setName_hotel(String name_hotel) {
        this.name_hotel = name_hotel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getNumber_room() {
        return number_room;
    }

    @java.lang.Override
    public java.lang.String toString() {
        return "Hotel{"
                + "hotelID=" + hotelID
                + ", name_hotel='" + name_hotel + '\''
                + ", address='" + address + '\''
                + ", image='" + image + '\''
                + ", number_room=" + number_room
                + ", amount=" + amount
                + ", type='" + type + '\''
                + '}';
    }

    public void setNumber_room(int number_room) {
        this.number_room = number_room;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
