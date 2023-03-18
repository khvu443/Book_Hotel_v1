/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DAO.HotelDAO.HotelDAO;
import DAO.OrderDAO.*;
import Model.*;
import java.text.ParseException;
import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderService {

    private OrderDAO dao = new OrderDAO();
    private HotelDAO hDao = new HotelDAO();

    public List<Order> displayAllOrders() {
        return dao.viewAllOrder();
    }

    public List<Order> displayOrdersByID(int id) {
        return dao.viewOrderByAccID(id);
    }

    public boolean deleteOrder(int id) {
        //lấy thông tin order dựa vào id
        Order list = dao.viewOrderByOrderID(id);
        //lấy thông tin của hotel dựa vào id có trong order
        Hotel h = hDao.getHotel(list.getHotelId());

        //Khi hủy hóa đơn thì số phòng sẽ tăng lại về ban đầu
        h.setNumber_room(h.getNumber_room() + list.getRooms());
        hDao.updateHotel(h);
        return dao.deleteOrder(id);
    }

    public boolean saveOrder(int accountId, int hotelId, String address, String check_in, String check_out, int guests, int rooms, double price) throws ParseException {

        //String date trả về của check in và check out là -> YYYY - MM - DD
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-DD");

        //Format string về kiểu date
        Date inDate = format.parse(check_in);
        Date outDate = format.parse(check_out);

        //tính giá tiền phòng dựa vào số ngày * số phòng *  giá
        double cost = (((outDate.getTime() - inDate.getTime()) //tính ra được số ngày đặt -> trả về dưới dạng miliseconds
                / (1000 * 60 * 60 * 24)) % 365) // chuyển về ngày
                * price * rooms;

        System.out.println("cost: " + cost);
        System.out.println("in: " + check_in + "\nout: " + check_out);

        //Check thử xem ngày check in < check out ko
        // compareTo trả về 0 -> cùng ngày
        // compareTo trả về 1 -> check in > check out
        // compareTo trả về -1 -> check in < check out
        if (check_in.compareTo(check_out) >= 0) {
            return false;
        } else {
            return dao.saveOrder(new Order(accountId, hotelId, address, check_in, check_out, guests, rooms, cost));
        }

    }
}
