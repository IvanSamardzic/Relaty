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
    private int age;
    private String email;
    private String password;

    public EmployeeItem(String name, String surname, int age, String jobTitle, String email,String password) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.jobTitle = jobTitle;
        this.email = email;
        this.password = password;
    }
}
