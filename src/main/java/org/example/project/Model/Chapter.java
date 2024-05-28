package org.example.project.Model;

import com.google.gson.JsonObject;

import java.util.Date;
import java.util.List;

public class Chapter {
    private int id;
    private String chapterNumber;
    private String name;
    private int storyID;
    private Date createdDate;
    private List<String> imageURLs;

    public Chapter(int id, String chapterNumber, String name, int storyID, Date createdDate, List<String> imageURLs) {
        this.id = id;
        this.chapterNumber = chapterNumber;
        this.name = name;
        this.storyID = storyID;
        this.createdDate = createdDate;
        this.imageURLs = imageURLs;
    }

    public Chapter() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getChapterNumber() {
        return chapterNumber;
    }

    public void setChapterNumber(String chapterNumber) {
        this.chapterNumber = chapterNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getImageURLs() {
        return imageURLs;
    }

    public void setImageURLs(List<String> imageURLs) {
        this.imageURLs = imageURLs;
    }

    public int getStoryID() {
        return storyID;
    }

    public void setStoryID(int storyID) {
        this.storyID = storyID;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public JsonObject toJsonObject() {
        JsonObject result = new JsonObject();
        result.addProperty("id", id);
        result.addProperty("chapterNumber", chapterNumber);
        result.addProperty("name", name);
        result.addProperty("storyId", storyID);
        result.addProperty("createdDate", createdDate.toString());
        return result;
    }
}
