package com.practice.Repository;

import com.practice.Model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee,Long> {
}
