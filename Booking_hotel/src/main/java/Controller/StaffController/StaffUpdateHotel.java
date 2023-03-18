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
@WebServlet(name = "StaffUpdateHotel", urlPatterns = {"/StaffUpdateHotel"})
public class StaffUpdateHotel extends HttpServlet {

    private HotelService service = new HotelService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //lấy thông tin của hotel muốn đổi và gắn nó trên form update
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("hotel", service.getHotelById(id));
        request.getRequestDispatcher("./StaffPage/StaffUpdateHotel.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //lay du lieu tu form
        String id = request.getParameter("id");
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

        Hotel h = new Hotel(name, address, "img/" + filename, rooms, amount, type);

        System.out.println(service.updateHotel(Integer.parseInt(id), name, address, rooms, amount, type, "img/"+filename));
        response.sendRedirect("StaffHotelTable");

    }

}
