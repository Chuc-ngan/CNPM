package org.example.project.Services;

import org.example.project.Model.Story;

public interface IStoryService  extends IGenericService<Story>{
    Story findStoryById(int id);

}
