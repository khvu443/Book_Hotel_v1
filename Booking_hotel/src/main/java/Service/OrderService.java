/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DAO.OrderDAO.OrderDAO;
import Model.Order;
import java.util.List;

public class OrderService {
    private OrderDAO dao = new OrderDAO();
    
    public List<Order> displayAllOrders()
    {
        return dao.viewAllOrder();
    }
    
    public List<Order> displayOrdersByID(int id)
    {
        return dao.viewOrderByAccID(id);
    }
    
    public boolean deleteOrder(String id)
    {
        return dao.deleteOrder(id);
    }
    
    public boolean saveOrder(Order o)
    {
        return dao.saveOrder(o);
    }
}
