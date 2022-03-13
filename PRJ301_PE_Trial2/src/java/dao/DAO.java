/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Message;
import entity.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tuan anh
 */
public class DAO {

    private Connection con;

    public DAO(Connection con) {
        this.con = con;
    }

    public User login(String uid, String pass) {

        User u = null;

        try {

            String sql = "select * from [UserTBL] where userid = ? and password = ?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, uid);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                u = new User(rs.getString("userid"), rs.getString("password"));
                System.out.println(u);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return u;
    }

    public List<Message> getAllInboxByName(String name) {

        List<Message> listM = new ArrayList<>();

        try {

            String sql = "select * from [MessageTBL] where [to] = ?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                listM.add(new Message(rs.getInt("messageid"), rs.getString("messagetitle"), rs.getString("messagetime"), rs.getString("from"), rs.getString("to"), rs.getString("messagecontent"), rs.getBoolean("isread")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listM;
    }

    public Message getMessByTitle(int mid) {

        Message m = null;

        try {

            String sql = "select * from [MessageTBL] where [messageid] = ?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, mid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                m = new Message(rs.getInt("messageid"), rs.getString("messagetitle"), rs.getString("messagetime"), rs.getString("from"), rs.getString("to"), rs.getString("messagecontent"), rs.getBoolean("isread"));

            }
            System.out.println(m);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return m;
    }

}
