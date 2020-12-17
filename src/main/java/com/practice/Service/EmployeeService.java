package com.practice.Service;

import com.practice.Model.Employee;
import com.practice.Repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


public interface EmployeeService {


    List<Employee> ListEmployee();

    void save(Employee employee);

    Employee getEmployeeById(Long id);

    void delete(Long id);


}
