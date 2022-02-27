/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Department;
import entity.Employee;
import java.sql.*;
import java.util.*;
import jdbc.DBConnect;

/**
 *
 * @author tuan anh
 */
public class DAO {

    private Connection con;

    public DAO(Connection con) {
        this.con = con;
    }

    public List<Employee> getAllEmployee() {

        List<Employee> listE = new ArrayList<>();

        try {

            String sql = "select * from Employee";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                DAO dao = new DAO(DBConnect.getConnection());

                listE.add(new Employee(rs.getInt("id"), rs.getString("name"), rs.getDate("dob"), rs.getBoolean("gender"), rs.getInt("did")));

            }
            System.out.println(listE);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listE;
    }

}
