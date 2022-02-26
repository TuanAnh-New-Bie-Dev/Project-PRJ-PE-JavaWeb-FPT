/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author tuan anh
 */
public class Entries {

    private int EntryID;
    private String title;
    private String content;
    private Date dateModified;

    public Entries() {
    }

    public Entries(int EntryID, String title, String content, Date dateModified) {
        this.EntryID = EntryID;
        this.title = title;
        this.content = content;
        this.dateModified = dateModified;
    }

    public int getEntryID() {
        return EntryID;
    }

    public void setEntryID(int EntryID) {
        this.EntryID = EntryID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDateModified() {
        return dateModified;
    }

    public void setDateModified(Date dateModified) {
        this.dateModified = dateModified;
    }

    @Override
    public String toString() {
        return "Entries{" + "EntryID=" + EntryID + ", title=" + title + ", content=" + content + ", dateModified=" + dateModified + '}';
    }

}
