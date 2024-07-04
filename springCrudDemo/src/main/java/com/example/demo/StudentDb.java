package com.example.demo;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jakarta.transaction.Transactional;

public interface StudentDb extends CrudRepository<Employee, Integer> {
	@Transactional
	@Modifying
	@Query("update Employee emp set emp.Emp_name=?1 where emp.Roll_no=?2")
	void updateStudent(String Emp_name , int Roll_no);

}
