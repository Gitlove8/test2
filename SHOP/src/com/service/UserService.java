																																																																																									package com.service;

import com.dao.UserDao;
import com.domain.User;


public class UserService {
	UserDao dao = new UserDao();
	public int CreatUser(User user){
		if(dao.add(user)==0)
			return 0;
		return 1;
	}
	
	public int LoginUser(User user){
		if(dao.find(user)==0)
			return 0;
		return 1;
	}
}
