package org.example.project.RowMaper;

import org.example.project.Model.Comment;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CommentMaper implements RowMapper<Comment> {

    @Override
    public Comment map(ResultSet r) {
        Comment comment =  new Comment();
        try {
            comment.setStoryId(r.getInt(CommentColumn.STORY_ID.name()));
            comment.setUserId(r.getInt(CommentColumn.USER_ID.name()));
            comment.setCommentContent(r.getString(CommentColumn.COMMENT_CONTENT.name()));
            comment.setCommentDate(r.getTimestamp(CommentColumn.COMMENT_DATE.name()));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return comment;
    }
}
