package academy.learnprogramming.service;

import academy.learnprogramming.model.EmployeeData;
import academy.learnprogramming.model.EmployeeItem;

public interface EmployeeItemService {
    void addEmployee(EmployeeItem toAdd);

    void removeEmployee(int id);

    EmployeeItem getEmployee(int id);

    void updateEmployee(EmployeeItem toUpdate);

    EmployeeData getData();
}
