/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Event;
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
    
    public List<Event> getAllEvent() {
        
        List<Event> list = new ArrayList<>();
        
        try {
            
            String sql = "select * from Event";
            
            PreparedStatement ps = con.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                
                list.add( new Event(rs.getInt("id"), rs.getString("content"), rs.getDate("date"), rs.getBoolean("isEnabled"), rs.getString("created_by")));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
}
