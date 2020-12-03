package academy.learnprogramming.service;

import academy.learnprogramming.model.ProjectItem;
import academy.learnprogramming.model.ProjectData;

public interface ProjectItemService {
    void addProject(ProjectItem toAdd);

    void removeProject(int id);

    ProjectItem getProject(int id);

    void updateProject(ProjectItem toUpdate);

    ProjectData getData();
}
