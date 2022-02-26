/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DAO;
import entity.Comment;
import entity.Entries;
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
public class EntryDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAO dao = new DAO(DBConnect.getConnection());

        String id = request.getParameter("ID");
        HttpSession session = request.getSession();
        session.setAttribute("did", id);

        Entries e = dao.getEntriesById(id);

        List<Comment> list = dao.getCommentByEid(id);

        request.setAttribute("e", e);
        request.setAttribute("listC", list);
        request.getRequestDispatcher("detail.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
