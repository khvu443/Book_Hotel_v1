/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.StaffController;

import Service.*;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;

@MultipartConfig
@WebServlet(name = "StaffAddHotel", urlPatterns = {"/StaffAddHotel"})
public class StaffAddHotel extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            //lay du lieu tu form
            String name = request.getParameter("hotelname");
            String address = request.getParameter("address");
            //lay anh hotel 
            Part part = request.getPart("image");
            float amount = Float.parseFloat(request.getParameter("amount"));
            int rooms = Integer.parseInt(request.getParameter("rooms"));
            String type = request.getParameter("type");

            //xu ly anh upload roi luu vao DB
            String photoPath = request.getServletContext().getRealPath("/img");

            String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
            if (!Files.exists(Path.of(photoPath))) {
                Files.createDirectories(Path.of(photoPath));
            }
            part.write(photoPath + "/" + filename);
            
            HotelService service = new HotelService();
            
            //lưu ảnh với đg dẫn là folder lưu ảnh + tên ảnh
            Hotel h = new Hotel(name, address, "img/" + filename, rooms, amount, type);
            
            System.out.println(service.addHotel(h));
            response.sendRedirect("StaffHotelTable");
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
