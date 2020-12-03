package academy.learnprogramming.model;

import lombok.NonNull;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

public class EmployeeData {
    // == fields
    private static int idValue = 1;
    private final List<EmployeeItem> items = new ArrayList<>();

    // == constructors
    public EmployeeData(){
        addEmployee(new EmployeeItem("Neno", "Zidic", "Frontend Developer", "nzidic00@gmail.com",
                "abc123"));
        addEmployee(new EmployeeItem("Igor", "Ujevic", "Frontend Developer", "iujevic00@gmail.com",
                "abc123"));
    }

    // == public methods
    public List<EmployeeItem> getItems(){
        return Collections.unmodifiableList(items);
    }

    public void addEmployee(@NonNull EmployeeItem toAdd){
        toAdd.setId(idValue);
        items.add(toAdd);
        idValue++;
    }

    public void removeEmployee(int id){
        ListIterator<EmployeeItem> itemListIterator = items.listIterator();
        while(itemListIterator.hasNext()){
            EmployeeItem item = itemListIterator.next();

            if(item.getId() == id){
                itemListIterator.remove();
                break;
            }
        }
    }

    public EmployeeItem getEmployee(int id){
        for(EmployeeItem item:items){
            if(item.getId() == id){
                return  item;
            }
        }
        return  null;
    }

    public void updateEmployee(@NonNull EmployeeItem toUpdate){
        ListIterator<EmployeeItem> itemListIterator = items.listIterator();
        while(itemListIterator.hasNext()){
            EmployeeItem item = itemListIterator.next();

            if(item.equals(toUpdate)){
                itemListIterator.set(toUpdate);
                break;
            }
        }
    }
}
