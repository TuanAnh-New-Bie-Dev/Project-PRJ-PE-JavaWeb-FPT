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
public class Record {
    
    private int id;
    private String content;
    private int eid;

    public Record() {
    }

    public Record(int id, String content, int eid) {
        this.id = id;
        this.content = content;
        this.eid = eid;
    }

    public Record(String content, int eid) {
        this.content = content;
        this.eid = eid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    @Override
    public String toString() {
        return "Record{" + "id=" + id + ", content=" + content + ", eid=" + eid + '}';
    }
    

}
