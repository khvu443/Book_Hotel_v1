/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.*;
import Service.AccountService;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

            AccountService service = new AccountService();

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            System.out.println("username: " + username + "\npassword: " + password);

            Account account = service.getAcount(username, password);
            HttpSession session = request.getSession();

            //kiểm tra xem account có tồn tại ko
            if (account.getUsername() != null) {
                //kiểm tra xem account có bị lock ko
                if (account.getStatusAcc() == 1) {
                    session.setAttribute("user", account);
                    response.sendRedirect("HomePage");
                } else {
                    //trả về thông báo bên login
                    session.setAttribute("NOTICE_LOGIN", "text-danger");
                    session.setAttribute("MESSAGE_LOGIN", "YOUR ACCOUNT HAS LOCKED!");
                    response.sendRedirect("./Authenticate/Login.jsp");
                }
            } else {
                //trả về thông báo bên login
                session.setAttribute("NOTICE_LOGIN", "text-danger");
                session.setAttribute("MESSAGE_LOGIN", "LOGIN FAIL!");
                response.sendRedirect("./Authenticate/Login.jsp");
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
