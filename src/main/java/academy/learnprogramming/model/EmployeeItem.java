package academy.learnprogramming.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Objects;

@Data
@EqualsAndHashCode(of = "id")
public class EmployeeItem {
    // == fields
    private int id;
    private String name;
    private String surname;
    private String jobTitle;
    private String email;
    private String password;

    public EmployeeItem(String name, String surname, String jobTitle, String email,String password) {
        this.name = name;
        this.surname = surname;
        this.jobTitle = jobTitle;
        this.email = email;
        this.password = password;
    }
}
