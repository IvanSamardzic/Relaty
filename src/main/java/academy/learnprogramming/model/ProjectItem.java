package academy.learnprogramming.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="id")
public class ProjectItem {
    // == fields
    private int id;
    private String name;
    private String employee;

    public ProjectItem(String name, String employee) {
        this.name = name;
        this.employee = employee;
    }
}
