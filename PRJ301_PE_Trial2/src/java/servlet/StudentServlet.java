/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tuan anh
 */
public class StudentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String sid = request.getParameter("sid");
        String sname = request.getParameter("sname");
        String dob = request.getParameter("sdob");
        String gender = request.getParameter("sgender");
        String Scholar = request.getParameter("scheck");
        String isScholar = "";
        
        String date[] = dob.split("-");
        
        String year = date[0];
        String day = date[1];
        String month = date[2];
        
        if (Scholar.equals("on")) {

            isScholar = "Yes";

        } else {

            isScholar = "No";

        }

        out.println("<table>\n"
                + "                <tbody>\n"
                + "                    <tr>\n"
                + "                        <td>StudentID: " + sid + "</td>\n"
                + "                    </tr>\n"
                + "                    <tr>\n"
                + "                        <td>Student Name: " + sname + " (" + gender + ") </td>\n"
                + "                    </tr>\n"
                + "                    <tr>\n"
                + "                        <td>DOB: " + day + "/" + month + "/" + year + " </td>\n"
                + "                    </tr>\n"
                + "                    <tr>\n"
                + "                        <td>Sholarship Student : " + isScholar + "\n"
                + "                    </tr>\n"
                + "                </tbody>\n"
                + "            </table>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
    }
}
