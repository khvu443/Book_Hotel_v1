/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DAO.HotelDAO.HotelDAO;
import Model.Hotel;
import java.util.ArrayList;
import java.util.List;

public class HotelService {

    private HotelDAO dao = new HotelDAO();

    //Show all hotel
    public ArrayList<Hotel> displayAllHotels() {
        return dao.viewAllHotel();
    }

    //Show hotel that have address and the number of rooms that you want
    public ArrayList<Hotel> paginationHotel(String address, int rooms, int page) {
        ArrayList<Hotel> list = dao.paginationHotels(address, page, rooms).isEmpty() ? null : dao.paginationHotels(address, page, rooms);
        return list;
    }

    //Show hotel that have address and the number of rooms that you want
    public ArrayList<Hotel> displayHotelsByAddress(String address, int rooms) {
        ArrayList<Hotel> list = dao.viewAllHotelByAddress(address, rooms).isEmpty() ? null : dao.viewAllHotelByAddress(address, rooms);
        return list;
    }

    public boolean updateHotel(int id,
            String name, String address,
            int number_rooms, float amount,
            String type, String image) {
        return dao.updateHotel(new Hotel(id, name, address, image, number_rooms, amount, type));
    }

    public boolean addHotel(Hotel h) {
        return dao.addHotel(h);
    }
    
    public Hotel getHotelById(int id)
    {
        return dao.getHotel(id);
    }
}
