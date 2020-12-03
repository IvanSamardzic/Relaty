package academy.learnprogramming.service;

import academy.learnprogramming.model.ProjectData;
import academy.learnprogramming.model.ProjectItem;
import lombok.Getter;
import org.springframework.stereotype.Service;

@Service
public class ProjectItemServiceImpl implements ProjectItemService{

    // == fields ==
    @Getter
    private final ProjectData data = new ProjectData();


    @Override
    public void addProject(ProjectItem toAdd) {
        data.addProject(toAdd);
    }

    @Override
    public void removeProject(int id) {
        data.removeProject(id);
    }

    @Override
    public ProjectItem getProject(int id) {
        return data.getProject(id);
    }

    @Override
    public void updateProject(ProjectItem toUpdate) {
        data.updateProject(toUpdate);
    }
}
