/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author lenovo
 */
public class Order {

    private int orderId;
    private int accountId;
    private int hotelId;
    private String address;
    private String check_in;
    private String check_out;
    private int guests;
    private int rooms;
    private double price;

    public Order() {

    }

    public Order(int orderId, int accountId, int hotelId, String address, String check_in, String check_out, int guests, int rooms, double price) {
        this.orderId = orderId;
        this.accountId = accountId;
        this.hotelId = hotelId;
        this.address = address;
        this.check_in = check_in;
        this.check_out = check_out;
        this.guests = guests;
        this.rooms = rooms;
        this.price = price;
    }

    public Order(int accountId, int hotelId, String address, String check_in, String check_out, int guests, int rooms, double price) {
        this.accountId = accountId;
        this.hotelId = hotelId;
        this.address = address;
        this.check_in = check_in;
        this.check_out = check_out;
        this.guests = guests;
        this.rooms = rooms;
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCheck_in() {
        return check_in;
    }

    public void setCheck_in(String check_in) {
        this.check_in = check_in;
    }

    public String getCheck_out() {
        return check_out;
    }

    public void setCheck_out(String check_out) {
        this.check_out = check_out;
    }

    public int getGuests() {
        return guests;
    }

    public void setGuests(int guests) {
        this.guests = guests;
    }

    public int getRooms() {
        return rooms;
    }

    public void setRooms(int rooms) {
        this.rooms = rooms;
    }

    @java.lang.Override
    public java.lang.String toString() {
        return "Order{"
                + "orderId=" + orderId
                + ", accountId=" + accountId
                + ", hotelId=" + hotelId
                + ", address='" + address + '\''
                + ", check_in='" + check_in + '\''
                + ", check_out='" + check_out + '\''
                + ", guests=" + guests
                + ", rooms=" + rooms
                + '}';
    }

}
