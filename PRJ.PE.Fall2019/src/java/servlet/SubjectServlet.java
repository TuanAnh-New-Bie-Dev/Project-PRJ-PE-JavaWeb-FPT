/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entity.Material;
import entity.Subject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tuan anh
 */
public class SubjectServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        int num = Integer.parseInt(request.getParameter("num"));

        System.out.println(num);

        List<Subject> listS = new ArrayList<>();

        for (int i = 0; i < num; i++) {
            String title = "Subject " + (i + 1);
            int level = rLevel();
            List<Material> listM = rListMaterial();
            Subject s = new Subject();
            s.setTitle(title);
            s.setLevel(level);
            s.setMaterials(listM);
            listS.add(s);
        }
        
        HttpSession session = request.getSession();

        session.setAttribute("data", listS);
        request.getRequestDispatcher("subject.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    }

    public boolean rCurriculum() {
        Random random = new Random();
        return random.nextBoolean();
    }

    public int rLevel() {
        Random random = new Random();
        return random.nextInt(9) + 1;
    }

    public int rLenghtMaterial(int start, int end) {
        Random random = new Random();
        return start + random.nextInt(end - start) + 1;
    }

    public String rContent() {
        Random random = new Random();
        return "Book ";
    }
    
    public List<Material> rListMaterial() {
        Random random = new Random();
        List<Material> listM = new ArrayList<>();
        for (int i = 0; i < rLenghtMaterial(2, 5); i++) {
            String content = rContent() + (i + 1);
            Boolean isCurriculum = rCurriculum();
            listM.add(new Material(content, isCurriculum));
        }
        return listM;
    }

}
