package org.example.project.Services;

import org.apache.commons.io.FilenameUtils;
import org.example.project.Model.Chapter;
import org.example.project.Utils.JDBCConnector;

import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class ChapterService {
    public List<Chapter> findAll(int storyId){
        try {
            List<Chapter> chapters = new ArrayList<>();
            String query = "SELECT * FROM chapter WHERE storyID = ?";
            PreparedStatement statement = JDBCConnector.getConnection().prepareStatement(query);
            statement.setInt(1, storyId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                Chapter chapter = new Chapter();
                chapter.setId(rs.getInt("id"));
                chapter.setChapterNumber(rs.getString("chapterNumber"));
                chapter.setName(rs.getString("name"));
                chapter.setStoryID(rs.getInt("storyID"));
                chapter.setCreatedDate(rs.getDate("createdDate"));
                chapters.add(chapter);
            }
            return chapters;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Chapter getById(int chapterId){
        try {
            Chapter chapter = new Chapter();
            String query = "SELECT * FROM chapter WHERE id = ?";
            PreparedStatement statement = JDBCConnector.getConnection().prepareStatement(query);
            statement.setInt(1, chapterId);
            ResultSet rs = statement.executeQuery();
            int countResult = 0;
            while (rs.next()){
                chapter.setId(rs.getInt("id"));
                chapter.setChapterNumber(rs.getString("chapterNumber"));
                chapter.setName(rs.getString("name"));
                chapter.setStoryID(rs.getInt("storyID"));
                chapter.setImageURLs(getImageURLs(rs.getInt("id")));
                countResult++;
            }
            return (countResult == 1) ? chapter : null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<String> getImageURLs(int chapterId){
        try {
            List<String> result = new ArrayList<>();
            String query = "SELECT url FROM chapter_image WHERE chapterID = ? ORDER BY placement ASC";
            PreparedStatement statement = JDBCConnector.getConnection().prepareStatement(query);
            statement.setInt(1, chapterId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                result.add(rs.getString("url"));
            }
            return result;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void insert(Chapter chapter, Collection<Part> parts, String sourcePath){
        try {
            String query = "INSERT INTO chapter(chapterNumber, name, storyID, createdDate) VALUES(?,?,?,?)";
            PreparedStatement statement = JDBCConnector.getConnection().prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            statement.setString(1, chapter.getChapterNumber());
            statement.setString(2, chapter.getName());
            statement.setInt(3, chapter.getStoryID());
            statement.setString(4, LocalDateTime.now().toString());
            statement.executeUpdate();
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            saveImages(rs.getInt(1), parts, sourcePath);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void saveImages(int chapterId, Collection<Part> parts, String sourcePath) throws IOException, SQLException {
        File dir = new File(sourcePath + "/img/chapter/" + chapterId);
        dir.mkdir();
        int count = 1;
        for (Part part : parts){
            String originalName = part.getSubmittedFileName();
            if(originalName == null) continue;
            String extension = "." + FilenameUtils.getExtension(originalName);
            String finalName = chapterId + "-" + count + extension;
            part.write(sourcePath + "/img/chapter/" + chapterId + "/" + finalName);
            String query = "INSERT INTO chapter_image VALUES(?,?,?)";
            PreparedStatement statement = JDBCConnector.getConnection().prepareStatement(query);
            statement.setInt(1, chapterId);
            statement.setString(2, finalName);
            statement.setInt(3, count);
            statement.executeUpdate();
            count++;
        }
    }
}
