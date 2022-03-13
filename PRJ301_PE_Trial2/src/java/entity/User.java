/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author tuan anh
 */
public class User {

    private String uid;
    private String upass;

    public User() {
    }

    public User(String uid, String upass) {
        this.uid = uid;
        this.upass = upass;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    @Override
    public String toString() {
        return "User{" + "uid=" + uid + ", upass=" + upass + '}';
    }

}
