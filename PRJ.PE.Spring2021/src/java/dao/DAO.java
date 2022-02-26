/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Account;
import entity.Event;
import entity.Event2;
import entity.Record;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
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

    public List<Event> getAllEvent() {

        List<Event> list = new ArrayList<>();

        try {

            String sql = "select * from Event";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                list.add(new Event(rs.getInt("id"), rs.getString("content"), rs.getDate("date"), rs.getBoolean("isEnabled"), rs.getString("created_by")));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public Account login(String aid, String password) {

        Account acc = null;

        try {

            String query = "select * from Account where accountid = ? and password = ?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, aid);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                acc = new Account();
                Event e = new Event();

                acc.setAccountid(rs.getString("accountid"));
                acc.setPassword(rs.getString("password"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return acc;
    }

    public List<Event> getEventByUser(String uid) {

        List<Event> listE = new ArrayList<>();

        try {

            String query = "select * from Event where created_by = ? ";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                listE.add(new Event(rs.getInt("id"), rs.getString("content"), rs.getDate("date"), rs.getBoolean("isEnabled"), rs.getString("created_by")));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return listE;
    }

    public List<Event2> getAllEvent2() {

        List<Event2> listE2 = new ArrayList<>();

        try {

            String sql = "select * from Event";

            DAO dao = new DAO(DBConnect.getConnection());

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                listE2.add(new Event2(rs.getInt("id"), rs.getString("content"), rs.getString("created_by"), dao.getRecordByEventId(rs.getInt("id"))));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return listE2;
    }

    public List<Record> getRecordByEventId(int eid) {

        List<Record> list = new ArrayList<>();

        try {
            String sql = "select * from Record where eid = ?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, eid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Record(rs.getInt("id"), rs.getString("content"), rs.getInt("eid")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean insertRecord(String content, int eid) {

        boolean f = false;
        
        try {
            String sql = "insert into Record values (? ,?)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, content);
            ps.setInt(2, eid);
            
            ps.executeUpdate();
            
            f = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }

}
