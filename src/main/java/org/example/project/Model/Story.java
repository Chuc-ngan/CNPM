package org.example.project.Model;

import org.example.project.DAO.CommentDAO;

import java.util.Date;
import java.util.List;

public class Story {
    private int id;
    private String title;
    private String content;
    private String author;
    private Date publishDate;
    List<Comment> comments;

    public Story() {
    }

    public Story(String title, String content, String author, Date publishDate) {
        this.title = title;
        this.content = content;
        this.author = author;
        this.publishDate = publishDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Story{" +
                "title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", author='" + author + '\'' +
                ", publishDate=" + publishDate +
                '}';
    }

    public void loadCommentsFromDatabase() {
        CommentDAO commentDAO = new CommentDAO();
        this.comments = commentDAO.findAll();
    }
}
