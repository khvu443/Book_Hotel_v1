/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.*;
import Service.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.*;

@WebServlet(name = "UpdateAccount", urlPatterns = {"/UpdateAccount"})
public class UpdateAccount extends HttpServlet {

    AccountService service = new AccountService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("re-pass");
        
        HttpSession session = request.getSession();
        //Check update có thành cồn hay ko
        if (service.updateAccount(Integer.parseInt(id), pass, re_pass, name)) {
            //update thành công thì sẽ thay đổi dữ liệu session cũ của user
            session.setAttribute("user", service.getAcountById(Integer.parseInt(id)));
            System.out.println("success");
        } else {
            System.out.println("error");
        }
        response.sendRedirect("HomePage");
    }

}
