package com.javakc.student.dao;

import java.util.List;

import com.javakc.student.vo.StudentModel;

public interface StudentDao {
	public List query();

	public void create(StudentModel sm);

	public StudentModel load(String id);
	
	public void update(StudentModel sm);
	public void delete(String id);
}
 