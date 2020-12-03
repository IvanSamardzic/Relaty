package academy.learnprogramming.controller;
import academy.learnprogramming.model.EmployeeItem;
import academy.learnprogramming.model.ProjectData;
import academy.learnprogramming.model.ProjectItem;
import academy.learnprogramming.service.ProjectItemService;
import academy.learnprogramming.util.AttributeNames;
import academy.learnprogramming.util.Mappings;
import academy.learnprogramming.util.ViewNames;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
public class ProjectItemController {

    // == fields ==
    private final ProjectItemService projectItemService;

    // == constructors ==
    @Autowired
    public ProjectItemController(ProjectItemService projectItemService) {
        this.projectItemService = projectItemService;
    }

    @ModelAttribute
    public ProjectData projectData(){
        return projectItemService.getData();
    }

    @GetMapping(Mappings.PROJECTS)
    public String projects(){
        return ViewNames.PROJECTS;
    }

    @GetMapping(Mappings.ADD_PROJECT)
    public String addEditProject(@RequestParam(required = false, defaultValue = "-1") int id,
                                  Model model){
        log.info("editing id = {}", id);

        ProjectItem projectItem = projectItemService.getProject(id);
        if(projectItem == null){
            projectItem = new ProjectItem("", "");
        }
        model.addAttribute(AttributeNames.PROJECT_ITEM, projectItem);
        return ViewNames.ADD_PROJECT;
    }

    @PostMapping(Mappings.ADD_PROJECT)
    public String processProject(@ModelAttribute(AttributeNames.PROJECT_ITEM) ProjectItem projectItem){
        log.info("projectItem from from = {}", projectItem);
        if(projectItem.getId() == 0){
            projectItemService.addProject(projectItem);
        }
        else {
            projectItemService.updateProject(projectItem);
        }
        return "redirect:/" + Mappings.PROJECTS;
    }

    @GetMapping(Mappings.DELETE_PROJECT)
    public String deleteProject(@RequestParam int id){
        log.info("Deleting id ={}", id);
        projectItemService.removeProject(id);
        return "redirect:/" + Mappings.PROJECTS;
    }

    @GetMapping(Mappings.VIEW_PROJECT)
    public String viewProject(@RequestParam int id, Model model){
        ProjectItem projectItem = projectItemService.getProject(id);
        model.addAttribute(AttributeNames.PROJECT_ITEM, projectItem);
        return ViewNames.VIEW_PROJECT;
    }
}
