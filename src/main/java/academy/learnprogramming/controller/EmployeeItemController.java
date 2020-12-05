package academy.learnprogramming.controller;

import academy.learnprogramming.model.EmployeeData;
import academy.learnprogramming.model.EmployeeItem;
import academy.learnprogramming.service.EmployeeItemService;
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

import java.time.LocalDate;
import java.util.Map;

@Slf4j
@Controller
public class EmployeeItemController {
    // == fields ==
    private final EmployeeItemService employeeItemService;

    // == constructors ==
    @Autowired
    public EmployeeItemController(EmployeeItemService employeeItemService) {
        this.employeeItemService = employeeItemService;
    }

    // == model attributes ==
    @ModelAttribute
    public EmployeeData employeeData(){
        return employeeItemService.getData();
    }

    @GetMapping(Mappings.EMPLOYEES)
    public String items(){
        return ViewNames.EMPLOYEES;
    }

    @GetMapping(Mappings.HOME)
    public String home(){
        return ViewNames.HOME;
    }

    @GetMapping(Mappings.ADD_EMPLOYEE)
    public String addEditEmployee(@RequestParam(required = false, defaultValue = "-1") int id,
                                  Model model){
        log.info("editing id = {}", id);
        EmployeeItem employeeItem = employeeItemService.getEmployee(id);
        if(employeeItem == null){
            employeeItem = new EmployeeItem("", "", 0,"", "", "");
        }
        model.addAttribute(AttributeNames.EMPLOYEE_ITEM, employeeItem);
        return ViewNames.ADD_EMPLOYEE;
    }
    @PostMapping(Mappings.ADD_EMPLOYEE)
    public String processEmployee(@ModelAttribute (AttributeNames.EMPLOYEE_ITEM) EmployeeItem employeeItem){
        log.info("employeeItem from from = {}", employeeItem);
        if(employeeItem.getId() == 0){
            employeeItemService.addEmployee(employeeItem);
        }
        else {
            employeeItemService.updateEmployee(employeeItem);
        }
        return "redirect:/" + Mappings.EMPLOYEES;
    }

    @PostMapping()
    public String loginEmployee(@ModelAttribute(AttributeNames.LOGIN_ITEM) EmployeeItem employeeItem){
        log.info("employeeItem with id={} wants to log into server", employeeItem);
        if(employeeItem.getId() != 0){
            return "redirect:/" + Mappings.EMPLOYEES;
        }
        else{
            return "redirect:/" + Mappings.HOME;
        }
    }
    @GetMapping(Mappings.DELETE_EMPLOYEE)
    public String deleteEmployee(@RequestParam int id){
        log.info("Deleting id ={}", id);
        employeeItemService.removeEmployee(id);
        return "redirect:/" + Mappings.EMPLOYEES;
    }

    @GetMapping(Mappings.VIEW_EMPLOYEE)
    public  String viewEmployee(@RequestParam int id, Model model){
        EmployeeItem employeeItem = employeeItemService.getEmployee(id);
        model.addAttribute(AttributeNames.EMPLOYEE_ITEM, employeeItem);
        return ViewNames.VIEW_EMPLOYEE;
    }
}
