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
    public ArrayList<Hotel> displayHotelsByAddress(String address, int rooms) {
        ArrayList<Hotel> list = new ArrayList<>();
        if (!dao.viewAllHotelByAddress(address).isEmpty()) {
            for (int i = 0; i < dao.viewAllHotelByAddress(address).size(); i++) {
                if (dao.viewAllHotelByAddress(address).get(i).getNumber_room() >= rooms) {
                    list.add(dao.viewAllHotelByAddress(address).get(i));
                }
            }
        }
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
}
