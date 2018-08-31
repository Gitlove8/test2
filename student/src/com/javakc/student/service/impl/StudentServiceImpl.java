package com.javakc.student.service.impl;

import java.util.List;

import com.javakc.student.dao.StudentDao;
import com.javakc.student.dao.impl.StudentDaoImpl;
import com.javakc.student.service.StudentService;
import com.javakc.student.vo.StudentModel;

public class StudentServiceImpl implements StudentService{
	StudentDao dao = new StudentDaoImpl();

	@Override
	public List query() {
		
		return dao.query();
	}

	@Override
	public void create(StudentModel sm) {
		dao.create(sm);
	}

	@Override
	public StudentModel load(String id) {
		// TODO Auto-generated method stub
		return dao.load(id);
	}

	@Override
	public void update(StudentModel sm) {
		// TODO Auto-generated method stub
		dao.update(sm); 
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}
	
	
}
