package academy.learnprogramming.model;

import lombok.NonNull;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

public class ProjectData {
    // == fields ==
    private static int idValue = 1;
    private final List<ProjectItem> items = new ArrayList<>();

    // == constructors ==
    public ProjectData() {
        addProject(new ProjectItem("Split Parking", "Luka Pervan"));
        addProject(new ProjectItem("Medikol InfoSystem", "Petar Perkovic"));
    }

    // == public methods ==
    public List<ProjectItem> getItems(){
        return Collections.unmodifiableList(items);
    }

    public void addProject(ProjectItem toAdd){
        toAdd.setId(idValue);
        items.add(toAdd);
        idValue++;
    }

    public void removeProject(int id){
        ListIterator<ProjectItem> listIterator = items.listIterator();
        while(listIterator.hasNext()){
            ProjectItem item = listIterator.next();

            if(item.getId() == id){
                listIterator.remove();
                break;
            }
        }
    }

    public ProjectItem getProject(int id){
        for (ProjectItem item: items) {

            if(item.getId() == id){
                return item;
            }
        }
        return null;
    }

    public void updateProject(@NonNull ProjectItem toUpdate){
        ListIterator<ProjectItem> listIterator = items.listIterator();
        while(listIterator.hasNext()){
            ProjectItem item = listIterator.next();

            if(item.equals(toUpdate)){
                listIterator.set(toUpdate);
                break;
            }
        }
    }
}
