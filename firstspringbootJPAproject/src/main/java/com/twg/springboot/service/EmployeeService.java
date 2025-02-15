package com.twg.springboot.service;

import com.twg.springboot.entity.Employee;
import java.util.List;

public interface EmployeeService {
    Employee saveEmployee(Employee employee);
    Employee updateEmployee(Employee employee);
    void deleteEmployee(Employee employee);
    Employee findById(long id);
    List<Employee> findAll();
}
