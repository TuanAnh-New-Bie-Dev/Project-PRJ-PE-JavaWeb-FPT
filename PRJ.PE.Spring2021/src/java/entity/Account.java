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
public class Account {
    
    private String accountid;
    private String password;

    public Account() {
    }

    public Account(String accountid, String password) {
        this.accountid = accountid;
        this.password = password;
    }

    public String getAccountid() {
        return accountid;
    }

    public void setAccountid(String accountid) {
        this.accountid = accountid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" + "accountid=" + accountid + ", password=" + password + '}';
    }
    
}
