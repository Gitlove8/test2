package com.software.service;

import com.software.dao.CategoryDao;

public class CategoryService {
	private CategoryDao categoryDao = new CategoryDao();
	public void addCategory(String id, String name) {
		categoryDao.addCategory(id,name);
	}
	public void del(String id, String son) {
		categoryDao.del(id,son);
	}
	public void update(String id, String son, String newname) {
		categoryDao.update(id,son,newname);
	}
    
	
}
