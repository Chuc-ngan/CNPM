package org.example.project.Services;

import org.example.project.DAO.ICommentDAO;
import org.example.project.Model.Comment;

import java.util.List;

public class CommentServices implements ICommentServices{
    ICommentDAO commentDAO;

    @Override
    public List<Comment> findAll() {
        return commentDAO.findAll();
    }

    @Override
    public List<Comment> findAll(int limit, int offSet) {
        return null;
    }

    @Override
    public int save(Comment comment) {
        return commentDAO.save(comment);
    }

    @Override
    public boolean update(Comment comment) {
        return commentDAO.update(comment);
    }
}
