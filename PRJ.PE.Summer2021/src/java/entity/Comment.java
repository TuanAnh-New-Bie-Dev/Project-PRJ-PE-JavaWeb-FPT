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
public class Comment {
    
    int CommentID;
    String CommentContent;
    Date DateCreated;
    Date DateModified;

    public Comment() {
    }

    public Comment(int CommentID, String CommentContent, Date DateCreated, Date DateModified) {
        this.CommentID = CommentID;
        this.CommentContent = CommentContent;
        this.DateCreated = DateCreated;
        this.DateModified = DateModified;
    }

    public int getCommentID() {
        return CommentID;
    }

    public void setCommentID(int CommentID) {
        this.CommentID = CommentID;
    }

    public String getCommentContent() {
        return CommentContent;
    }

    public void setCommentContent(String CommentContent) {
        this.CommentContent = CommentContent;
    }

    public Date getDateCreated() {
        return DateCreated;
    }

    public void setDateCreated(Date DateCreated) {
        this.DateCreated = DateCreated;
    }

    public Date getDateModified() {
        return DateModified;
    }

    public void setDateModified(Date DateModified) {
        this.DateModified = DateModified;
    }
    
    
    
}
