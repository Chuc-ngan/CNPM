package org.example.project.DAO;

import org.example.project.Model.Story;

import java.util.List;

public interface IStoryDAO {
    List<Story> findAll();

    Story findStoryById(int id);
}
