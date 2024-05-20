package org.example.project.DAO;


import org.example.project.Model.Comment;
import org.example.project.Model.Story;
import org.example.project.RowMaper.StoryMapper;

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

    public static void main(String[] args) {
        StoryDAO storyDAO = new StoryDAO();
        System.out.println(storyDAO.findStoryById(1));
    }
}
