package org.example.project.DAO;

import org.example.project.Model.Comment;
import org.example.project.Model.Story;

import java.util.List;

public interface ICommentDAO {
    List<Comment> findAll();
    List<Comment> findCommentById(int id);

    List<Comment> findCommentsByStoryId(int storyId);
    int save (Comment comment);
    boolean update (Comment comment);
    boolean isCommentExists(int storyId,int userId);
    boolean isNotNegative(Comment comment);
}
