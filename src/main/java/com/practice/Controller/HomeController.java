package com.practice.Controller;

import com.practice.Model.Employee;
import com.practice.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String home(Model model)
    {
        List<Employee> employees = employeeService.ListEmployee();

        model.addAttribute("employeeList",employees);
        return "home";
    }

    @RequestMapping("/add")
    public String addEmployee(Model model)
    {
        Employee employee = new Employee();
        model.addAttribute("employee",employee);

        return "new_employee";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveEmployee(@ModelAttribute("employee")Employee employee)
    {
        employeeService.save(employee);

        return "redirect:/";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String updateEmployee(@RequestParam Long id, Model model)
    {
        Employee employee = employeeService.getEmployeeById(id);
        model.addAttribute("employee",employee);

        return "update_employee";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteEmployee(@RequestParam Long id)
    {

        employeeService.delete(id);

        return "redirect:/";
    }
}
