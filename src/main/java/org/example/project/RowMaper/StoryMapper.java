package org.example.project.RowMaper;

import org.example.project.Model.Story;

import java.sql.ResultSet;
import java.sql.SQLException;

public class StoryMapper implements RowMapper<Story>{
    @Override
    public Story map(ResultSet r) {
        Story story = new Story();
        try {
            story.setId(r.getInt(StoryColumn.STORY_ID.name()));
            story.setTitle(r.getString(StoryColumn.TITLE.name()));
            story.setContent(r.getString(StoryColumn.CONTENT.name()));
            story.setAuthor(r.getString(StoryColumn.AUTHOR.name()));
            story.setPublishDate(r.getDate(StoryColumn.PUBLISH_DATE.name()));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return story;
    }
}
