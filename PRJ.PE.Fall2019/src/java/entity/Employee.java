/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author tuan anh
 */
public class Employee {

    private int id;
    private String name;
    private Date dob;
    private boolean gender;
    private int did;

    public Employee() {
    }

    public Employee(int id, String name, Date dob, boolean gender, int did) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.did = did;
    }

    public Employee(String name, Date dob, boolean gender, int did) {
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.did = did;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public String nameDepart() {
        String nameD = "";
        switch (did) {
            case 1:
                nameD = "Infomation System";
                break;
            case 2:
                nameD = "Computer Science";
                break;
            case 3:
                nameD = "Accounting";
                break;
            default:
                break;
        }
        return nameD;
    }

    public String getDateFormat() {
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        return df.format(dob);
    }

    @Override
    public String toString() {
        return "Employee{" + "id=" + id + ", name=" + name + ", dob=" + dob + ", gender=" + gender + ", did=" + did + '}';
    }

}
