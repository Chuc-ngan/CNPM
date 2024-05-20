package org.example.project.Model;

import java.sql.Timestamp;
import java.util.Date;

public class Comment {
    private int storyId;
    private int userId;
    private String commentContent;

    private Timestamp commentDate;

    public Comment() {
    }

    public Comment(int storyId, int userId, String commentContent) {
        this.storyId = storyId;
        this.userId = userId;
        this.commentContent = commentContent;
    }

    public int getStoryId() {
        return storyId;
    }

    public void setStoryId(int storyId) {
        this.storyId = storyId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public Timestamp getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Timestamp commentDate) {
        this.commentDate = commentDate;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "storyId=" + storyId +
                ", userId=" + userId +
                ", commentContent='" + commentContent + '\'' +
                ", commentDate=" + commentDate +
                '}';
    }
}
