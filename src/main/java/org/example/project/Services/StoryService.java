package org.example.project.Services;

import org.example.project.DAO.IStoryDAO;
import org.example.project.DAO.StoryDAO;
import org.example.project.Model.Story;

import java.util.List;

public class StoryService implements IStoryService{
    IStoryDAO storyDAO = new StoryDAO();
    @Override
    public List<Story> findAll() {
        return storyDAO.findAll();
    }

    @Override
    public List<Story> findAll(int limit, int offSet) {
        return null;
    }

    @Override
    public int save(Story story) {
        return 0;
    }

    @Override
    public boolean update(Story story) {
        return false;
    }

    @Override
    public Story findStoryById(int id) {
        return storyDAO.findStoryById(id);
    }

    public int totalRecord() {
        return findAll().size();
    }
}
