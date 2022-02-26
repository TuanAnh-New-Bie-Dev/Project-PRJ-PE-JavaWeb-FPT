/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entity.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tuan anh
 */
public class AddEmployeeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession hs = request.getSession();
            List<Employee> listS = (List<Employee>) hs.getAttribute("listS"); //
            
            if (listS != null) {

                String alert2 = "List of employees: <br>";
                request.setAttribute("alert2", alert2);

                hs.setAttribute("listS", listS);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                String alert = "There are no employees on the list yet";
                request.setAttribute("alert", alert);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();
            List<Employee> listS = (List<Employee>) session.getAttribute("listS") == null ? new ArrayList<>() : (List<Employee>) session.getAttribute("listS");

            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            listS.add(new Employee(name, gender));
            session.setAttribute("listS", listS);
            response.sendRedirect("employees");
        }
    }

}
