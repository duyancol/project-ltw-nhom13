package com.example.demo11.model;

import com.example.demo11.Sevice.CommentService;
import com.example.demo11.dao.CommentDao;

import java.util.ArrayList;
import java.util.List;

public class Comment {
    private String commentid;
    private String content;
    private String id;
    private String username;
    public Comment() {
    }

    public Comment(String commentid, String content, String id, String username) {
        this.commentid = commentid;
        this.content = content;
        this.id = id;
        this.username = username;
    }

    public String getCommentid() {
        return commentid;
    }

    public void setCommentid(String commentid) {
        this.commentid = commentid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


}