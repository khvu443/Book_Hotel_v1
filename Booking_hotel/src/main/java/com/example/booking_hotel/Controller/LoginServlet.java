package com.example.booking_hotel.Controller;

import com.example.booking_hotel.DAO.AccountDAO.AccountDAO;
import com.example.booking_hotel.Model.Account;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        AccountDAO dao = new AccountDAO();
        boolean isValid = dao.checkLogin(username, password);
        Account account = dao.getUserInfo(username,password);

        if (isValid) {
            if (account.getRoleID() == 2) {
                System.out.println("vao admin");
                HttpSession session = request.getSession();
                session.setAttribute("NAME", username);
                response.sendRedirect("AdminHomePage");
            } else if (account.getRoleID() == 1) {
                HttpSession session = request.getSession();
                session.setAttribute("NAME", username);
                response.sendRedirect("UserHomePage");
            }
        } else {
            System.out.println("sai mk");
            request.setAttribute("MESSAGE", "LOGIN FAIL! Sai tên tài khoản hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    public static void main(String[] args) {
        String username = "admin";
        String password = "admin";
        AccountDAO dao = new AccountDAO();
        boolean isValid = dao.checkLogin(username, password);
        System.out.println(isValid);
        Account account = dao.getUserInfo(username,password);
        System.out.println(dao.getUserInfo(username,password).getRoleID());
        System.out.println(username + " - " + password);
    }
}
