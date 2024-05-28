package org.example.project.DAO;

import org.example.project.Model.Comment;
import org.example.project.Model.Story;
import org.example.project.RowMaper.CommentColumn;
import org.example.project.RowMaper.CommentMaper;
import org.example.project.RowMaper.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class CommentDAO extends AbtractDAO<Comment> implements ICommentDAO{

    @Override
    public List<Comment> findAll() {
        String sql = "SELECT * FROM comment";
        return querry(sql, new CommentMaper());
    }

    @Override
    public List<Comment> findCommentById(int id) {
        String sql = "SELECT * FROM comment WHERE comment_id = ?";
        return querry(sql, new CommentMaper(), id);
    }

    public List<Comment> findCommentsByStoryId(int storyId) {
        String sql = "SELECT * FROM comment WHERE story_id = ?";
        return querry(sql, new CommentMaper(), storyId);
    }

    @Override
    public int save(Comment comment) {
        if(isCommentExists(comment.getStoryId(), comment.getUserId())) return 0;
        String sql = "INSERT INTO comment(story_id, user_id,comment_content) VALUES (?,?,?)";
        return save(sql, comment.getStoryId(), comment.getUserId(), comment.getCommentContent());
    }

    @Override
    public boolean update(Comment comment) {
        String sql = "UPDATE comment SET comment_content = ? WHERE story_id = ? AND user_id = ?";
        return update(sql, comment.getCommentContent(), comment.getStoryId(), comment.getUserId());
    }

    //        9.	Vào database và kiểm tra kiểm tra xem có tồn tại bình luận đó không.
    @Override
    public boolean isCommentExists(int storyId, int userId) {
        String sql = "SELECT * FROM comment WHERE story_id = ? AND user_id = ?";
        RowMapper<Comment> reviewMapper = new RowMapper<Comment>() {
            @Override
            public Comment map(ResultSet r) {
                Comment comment = new Comment();
                try {
                    comment.setStoryId(r.getInt(CommentColumn.STORY_ID.name()));
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                return comment;
            }
        };
        List<Comment> reviews =querry(sql, reviewMapper,storyId,userId);
        return !reviews.isEmpty();
    }

    @Override
    public boolean isNotNegative(Comment comment) {
        Set<String> negativeWords = new HashSet<>(Arrays.asList(
                "xấu", "tồi tệ", "kinh khủng", "tệ nhất", "ghét", "khủng khiếp", "ghê tởm", "tiêu cực", "khó chịu"
        ));

        String contentLower = comment.getCommentContent().toLowerCase();

        for (String negativeWord : negativeWords) {
            if (contentLower.contains(negativeWord)) {
                return false;
            }
        }

        return true;
    }

    public static void main(String[] args) {
        CommentDAO commentDAO =  new CommentDAO();
        Comment comment = new Comment();
        comment.setStoryId(2);
        comment.setUserId(1);
        comment.setCommentContent("Amazing story!");

        System.out.println(commentDAO.findCommentsByStoryId(1));
    }
}
