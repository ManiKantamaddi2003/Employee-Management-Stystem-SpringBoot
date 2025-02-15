package com.twg.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.twg.springboot.entity.Employee;
import com.twg.springboot.service.EmployeeService;

import java.util.List;

@Controller
public class HomeController {
    
    @Autowired
    private EmployeeService employeeService;

    // Welcome Page
    @GetMapping("/")
    public String homePage(Model model) {
        String message = "Welcome to the Employee Management System!";
        model.addAttribute("message", message);
        return "home"; // Ensure the "home.jsp" template is present
    }

    // Show Add Employee Form
    @GetMapping("/add_employee")
    public String showAddEmployeeForm() {
        return "add_employee"; // Ensure "add_employee.jsp" exists
    }

    // Handle Employee Form Submission
    @PostMapping("/add_employee")
    public String addEmployee(
            @RequestParam String name,
            @RequestParam String department,
            @RequestParam String designation,
            @RequestParam int exp,
            Model model) {

        Employee employee = new Employee();
        employee.setName(name);
        employee.setDepartment(department);
        employee.setDesignation(designation);
        employee.setExp(exp);

        Employee savedEmployee = employeeService.saveEmployee(employee);
        model.addAttribute("message", "Employee " + savedEmployee.getId() + " added successfully.");

        return "redirect:/employee_list"; // Redirect to employee list
    }

    // View All Employees
    @GetMapping("/employee_list")
    public String getAllEmployees(Model model) {
        List<Employee> employees = employeeService.findAll();
        model.addAttribute("employees", employees);
        return "employee_list"; // Ensure the "employee_list.jsp" template is present
    }

    // Find Employee by ID
    @GetMapping("/employee/{id}")
    public String getEmployeeById(@PathVariable long id, Model model) {
        Employee employee = employeeService.findById(id);
        model.addAttribute("employee", employee);
        return "employee_detail"; // Ensure the "employee_detail.jsp" template is present
    }

    // Update Employee
    @PostMapping("/employee/update")
    public String updateEmployee(
            @RequestParam long id,
            @RequestParam String name,
            @RequestParam String department,
            @RequestParam String designation,
            @RequestParam int exp,
            Model model) {

        Employee employee = employeeService.findById(id);
        employee.setName(name);
        employee.setDepartment(department);
        employee.setDesignation(designation);
        employee.setExp(exp);
        Employee updatedEmployee = employeeService.updateEmployee(employee);

        model.addAttribute("employee", updatedEmployee);
        model.addAttribute("message", "Employee " + updatedEmployee.getId() + " updated successfully.");
        return "employee_detail"; // Return updated employee details page
    }

    // Delete Employee
    @PostMapping("/employee/delete")
    public String deleteEmployee(@RequestParam long id, Model model) {
        Employee employee = employeeService.findById(id);
        employeeService.deleteEmployee(employee);
        model.addAttribute("message", "Employee " + id + " deleted successfully.");
        return "redirect:/employee_list"; // Redirect to the employees list page
    }
}