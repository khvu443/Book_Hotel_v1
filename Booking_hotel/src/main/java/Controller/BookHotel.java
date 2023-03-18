/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.*;
import Service.*;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lenovo
 */
@WebServlet(name = "BookHotel", urlPatterns = {"/BookHotel"})
public class BookHotel extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
//            Controller dùng để đặt phòng

            OrderService service = new OrderService();
            HotelService hService = new HotelService();

            HttpSession session = request.getSession();
            //Lấy thông tin của khách sạn
            Hotel h = (Hotel) session.getAttribute("hotel");
            //Lấy thông tin của customer
            Account user = (Account) session.getAttribute("user");
            //lấy thông tin từ form đặt
            String check_in = request.getParameter("check-in");
            String check_out = request.getParameter("check-out");
            int rooms = Integer.parseInt(request.getParameter("rooms"));
            int guests = Integer.parseInt(request.getParameter("guests"));

            //nếu như save hoàn tất
            if (service.saveOrder(user.getID(), h.getHotelID(), h.getAddress(), check_in, check_out, guests, rooms, h.getAmount())) {
                System.out.println("true - save");
                //số phòng của hotel sẽ giảm
                hService.updateHotel(h.getHotelID(), h.getName_hotel(), h.getAddress(), h.getNumber_room() - rooms, h.getAmount(), h.getType(), h.getImage());
                //trả về lại trang home
                response.sendRedirect("HomePage");
            } else {
                System.out.println("false - not save");
                //nếu lỗi thì sẽ có thông báo rồi trả về trang detail
                request.setAttribute("bookError", "Book fail!");
                RequestDispatcher rd = request.getRequestDispatcher("DetailHotel?hotelId=" + h.getHotelID());
                rd.include(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(BookHotel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(BookHotel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
