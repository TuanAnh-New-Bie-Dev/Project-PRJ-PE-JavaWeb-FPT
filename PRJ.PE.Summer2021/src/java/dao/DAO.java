/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Account;
import entity.Comment;
import entity.Entries;
import jdbc.DBConnect;
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
    
    public Account checkLogin(String username, String password) {
        
        Account account = null;
        
        try {
            
            String sql = "select * from Account where username = ? and password = ?";
            
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, username);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                
                account = new Account();
                
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                
            }
                        
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return account;
    }
    
    public List<Entries> getAllEntries() {
        
        List<Entries> list = new ArrayList<>();
        
        try {
            
            String sql = "select * from Entries";
            
            PreparedStatement ps = con.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                
                list.add(new Entries(rs.getInt("EntryID"), rs.getString("Title"), rs.getString("EntryContent"), rs.getDate("DateModified")));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public Entries getEntriesById(String id) {
        
        Entries entry = null;
        
        try {
            
            String sql = "select * from Entries where EntryID = ?";
            
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                
                entry = new Entries(rs.getInt("EntryID"), rs.getString("Title"), rs.getString("EntryContent"), rs.getDate("DateModified"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return entry;
    }
    
    public List<Comment> getCommentByEid(String eid) {
        
        List<Comment> list = new ArrayList<>();
        
        try {
            
            String sql = " select * from Comments where EntryID = ?";
            
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, eid);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                
                list.add(new Comment(rs.getInt("CommentID"), rs.getString("CommentContent"), rs.getDate("DateCreated"), rs.getDate("DateModified")));               
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public boolean deleteCommentByCid(String cid) {
        
        boolean f = false;
        
        try {
            
            String sql = "delete from Comments where CommentID = ?";
            
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, cid);
            
            ps.executeUpdate();
            
            f = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
    
}
