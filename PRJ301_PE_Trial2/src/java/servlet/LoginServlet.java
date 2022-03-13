/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
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
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        response.sendRedirect("login.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        DAO dao = new DAO(DBConnect.getConnection());

        String uid = request.getParameter("username");
        String pass = request.getParameter("password");
        System.out.println(uid + "" + pass);
        String MsgSuccess = "";
        String MsgFail = "";
        User u = dao.login(uid, pass);

        if (u != null) {

            HttpSession session = request.getSession();

            MsgSuccess = "Login Successfull!";
            session.setAttribute("currentUser", u);

            request.setAttribute("msgS", MsgSuccess);
            request.getRequestDispatcher("login.jsp").forward(request, response);

        } else {

            MsgFail = "Username or Password invalid!";
            request.setAttribute("msgF", MsgFail);
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }

    }
}
