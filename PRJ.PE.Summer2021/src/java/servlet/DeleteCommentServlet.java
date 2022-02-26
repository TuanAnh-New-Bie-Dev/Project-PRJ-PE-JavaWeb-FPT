/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
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
public class DeleteCommentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        
        DAO dao = new DAO(DBConnect.getConnection());

        boolean f = dao.deleteCommentByCid(request.getParameter("cid"));

        HttpSession session = request.getSession();
        
        String did = (String) session.getAttribute("did");
        
        if (f == true) {
            out.println("success");
        } else {
            out.println("fail");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
