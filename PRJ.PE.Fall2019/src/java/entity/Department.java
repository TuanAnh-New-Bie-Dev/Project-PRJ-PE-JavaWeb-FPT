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
public class Department {

    private int idd;
    private String dname;

    public Department() {
    }

    public Department(int idd, String dname) {
        this.idd = idd;
        this.dname = dname;
    }

    public Department(String name) {
        this.dname = dname;
    }

    public int getIdd() {
        return idd;
    }

    public void setIdd(int idd) {
        this.idd = idd;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    @Override
    public String toString() {
        return "Department{" + "idd=" + idd + ", dname=" + dname + '}';
    }

}
