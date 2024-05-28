package org.example.project.DAO;


import org.example.project.Model.Comment;
import org.example.project.Model.Story;
import org.example.project.RowMaper.StoryColumn;
import org.example.project.RowMaper.StoryMapper;
import org.example.project.Utils.JDBCConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StoryDAO extends AbtractDAO<Story> implements IStoryDAO{
    ICommentDAO commentDAO = new CommentDAO();
    @Override
    public List<Story> findAll() {
        String sql = "SELECT * FROM story";
        return querry(sql,new StoryMapper());
    }

    @Override
    public Story findStoryById(int id) {
        String sql = "SELECT * FROM story WHERE story_id= ?";
        List<Story> list = querry(sql, new StoryMapper(), id);

        Story story = !list.isEmpty() ? list.get(0) : null;
        if (story != null) {
            List<Comment> comments = commentDAO.findCommentsByStoryId(story.getId());
            story.setComments(comments);
        }
        return story;
//        List<Story> stories = (List<Story>) querry(sql, new StoryMapper(), id);
//        if (!stories.isEmpty()) {
//            return stories.get(0); // Trả về phần tử đầu tiên từ danh sách
//        } else {
//            return null; // Hoặc trả về null nếu danh sách rỗng
//        }
    }

    public List<Story> findByTitleOrAuthor(String query) {
        List<Story> stories = new ArrayList<>();
        String sql = "SELECT * FROM story WHERE title LIKE ? OR author LIKE ?";
        try (Connection conn = JDBCConnector.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            String searchPattern = "%" + query + "%";
            ps.setString(1, searchPattern);
            ps.setString(2, searchPattern);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Story story = new Story();
                    story.setId(rs.getInt(StoryColumn.STORY_ID.name()));
                    story.setTitle(rs.getString(StoryColumn.TITLE.name()));
                    story.setContent(rs.getString(StoryColumn.CONTENT.name()));
                    story.setAuthor(rs.getString(StoryColumn.AUTHOR.name()));
                    story.setPublishDate(rs.getDate(StoryColumn.PUBLISH_DATE.name()));
                    stories.add(story);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCConnector.closeConnect();
        }
        return stories;
    }

    public static void main(String[] args) {
        StoryDAO storyDAO = new StoryDAO();
        System.out.println(storyDAO.findStoryById(1));
    }
}
