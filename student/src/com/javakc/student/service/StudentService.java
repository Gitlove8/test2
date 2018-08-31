package com.javakc.student.service;

import java.util.List;

import com.javakc.student.vo.StudentModel;

public interface StudentService {
	/**
	 * 取得所有的数据
	 * @return
	 */
	public List query();
	public void create(StudentModel sm);
	public StudentModel load(String id);
	public void update(StudentModel sm);
	public void delete(String id);
}
