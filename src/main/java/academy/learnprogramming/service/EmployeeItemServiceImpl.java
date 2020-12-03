package academy.learnprogramming.service;

import academy.learnprogramming.model.EmployeeData;
import academy.learnprogramming.model.EmployeeItem;
import lombok.Getter;
import org.springframework.stereotype.Service;

@Service
public class EmployeeItemServiceImpl implements EmployeeItemService{

    // == fields ==
    @Getter
    private final EmployeeData data = new EmployeeData();

    // == public methods ==
    @Override
    public void addEmployee(EmployeeItem toAdd) {
        data.addEmployee(toAdd);
    }

    @Override
    public void removeEmployee(int id) {
        data.removeEmployee(id);
    }

    @Override
    public EmployeeItem getEmployee(int id) {
        return data.getEmployee(id);
    }

    @Override
    public void updateEmployee(EmployeeItem toUpdate) {
        data.updateEmployee(toUpdate);
    }
}
