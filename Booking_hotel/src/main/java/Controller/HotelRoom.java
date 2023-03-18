/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Hotel;
import Service.HotelService;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

@WebServlet(name = "HotelRoom", urlPatterns = {"/HotelRoom"})
public class HotelRoom extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            HotelService service = new HotelService();

            //lấy location và số phòng mà muốn check thử xem có khách sạn nào đạt ko
            String loc = request.getParameter("location");
            int rooms = Integer.parseInt(request.getParameter("rooms"));

            System.out.println("loc: " + loc + "\nrooms: " + rooms );

            HttpSession session = request.getSession();
            
            //lấy danh sách làm phân trang
            ArrayList<Hotel> hotels = service.displayHotelsByAddress(loc, rooms);
            //nếu như mà list ko có thì page size sẽ là 0 
            int page = 0;
            if (hotels != null) {
                page = hotels.size() / 4;
                // nếu như ra dư thì sẽ công thêm vào size vd: 5%4 = 1 thì sẽ có 2 trang
                if (page % 4 != 0) {
                    page++;
                }
            }

            //page hiện tại là 1
            int curPage = 1;
            // nếu như page get từ request ko có thì giữ nguyên giá trị
            if (request.getParameter("page") != null) {
                //page sẽ thay đổi nếu ko null
                curPage = Integer.parseInt(request.getParameter("page"));
            }

            //lấy danh sách dựa vào location, số phòng và offset sẽ là bao nhiều
            ArrayList<Hotel> list = service.paginationHotel(loc, rooms, (curPage - 1) * 4);

            //dùng để gắn giá trị vào pagination -> dùng để chuyển trang
            request.setAttribute("location", loc);
            request.setAttribute("rooms", rooms);
            
            // Để page kiểm tra xem đang ở vị trí bao nhiêu
            request.setAttribute("curPage", curPage);
            //size của page
            request.setAttribute("page", page);
            //danh sách hotel trang đó
            request.setAttribute("listHotel", list);
            request.getRequestDispatcher("hotels.jsp").include(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
