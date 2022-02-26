/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
import entity.Account;
import entity.Event;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.DBConnect;

/**
 *
 * @author tuan anh
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        request.getRequestDispatcher("login.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String alert = "";
        
        System.out.println(username + " | " + password);
        
        DAO dao = new DAO(DBConnect.getConnection());
        
        Account acc = dao.login(username, password);
        List<Event> listE = dao.getEventByUser(username);
        
        System.out.println(acc);
        
        if(acc != null) {
            
            HttpSession session = request.getSession();
            alert = "Login Successful!";
            
            session.setAttribute("acc", acc);
            request.setAttribute("listE", listE);
            request.setAttribute("alert", alert);
            
            request.getRequestDispatcher("account.jsp").forward(request, response);
            
        } else {
            
            alert = "Login Failed!";
            
            request.setAttribute("alert", alert);
            
            request.getRequestDispatcher("login.jsp").forward(request, response);
            
        }
        
    }

}
