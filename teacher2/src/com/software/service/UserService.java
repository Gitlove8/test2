package com.software.service;

import com.software.dao.UsersDao;
import com.software.domain.Users;

public class UserService {
	UsersDao dao = new UsersDao();
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public Users login(String username,String password) {
		return dao.findUserByUNameAndPwd(username,password);
	}
	/**
	 * 验证用户名是否重复
	 * @param username
	 */
	public boolean validate(String username) {
		return dao.findUserByUName(username);
		
	}
}
