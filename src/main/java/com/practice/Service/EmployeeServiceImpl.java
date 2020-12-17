package com.practice.Service;

import com.practice.Model.Employee;
import com.practice.Repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> ListEmployee()
    {
        return employeeRepository.findAll();
    }

    public void save(Employee employee)
    {
        employeeRepository.save(employee);
    }

    public Employee getEmployeeById(Long id)
    {
        Optional<Employee> result = employeeRepository.findById(id);

        return result.get();
    }

    public void delete(Long id)
    {
        Optional<Employee> result = employeeRepository.findById(id);
        employeeRepository.delete(result.get());
    }

}
