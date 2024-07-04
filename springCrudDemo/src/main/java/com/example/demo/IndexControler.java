package com.example.demo;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexControler {
	@Autowired
	StudentDb stddb;
	@RequestMapping("show")
	public ModelAndView index() {
		ModelAndView mv =new ModelAndView();
		mv.setViewName("welcom.jsp");
		return mv;
	}
	@RequestMapping("/addStudent")
	public ModelAndView add(Employee emp) {
		System.out.println(emp.getRoll_no());
		System.out.println(emp.getEmp_name());
		ModelAndView mv=new ModelAndView();
		mv.addObject("EmployeeDetails" ,emp);
		mv.setViewName("added.jsp");
		stddb.save(emp);
		return mv;
		
	}
	@RequestMapping("/viewStudent")
	public ModelAndView display(Employee emp) {
		Optional<Employee> op =stddb.findById(emp.getRoll_no());
		Employee employee = op.get();
		ModelAndView mv = new ModelAndView();
		mv.addObject("EmployeeDetails",employee);
		mv.setViewName("display.jsp");
		return mv;
	
	}
	@RequestMapping("deleteStudent")
	public ModelAndView deleteUser(Employee emp) {
		stddb.deleteById(emp.getRoll_no());
		ModelAndView mv = new ModelAndView();
		mv.addObject("EmployeeDetails",emp);
		mv.setViewName("deleted.jsp");
		return mv;
	}
	@RequestMapping("updateStudent")
	public ModelAndView updateUser(Employee emp) {
		stddb.updateStudent(emp.getEmp_name(), emp.getRoll_no());
		ModelAndView mv = new ModelAndView();
		mv.addObject("EmployeeDetails",emp);
		mv.setViewName("updated.jsp");
		return mv;	
	}
	
	
	

}

