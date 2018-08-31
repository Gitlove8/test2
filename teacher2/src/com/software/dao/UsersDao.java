package com.software.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.software.domain.Users;
import com.software.utils.JDBCUtils;

public class UsersDao {

	Connection conn = null;	
	PreparedStatement pstm = null;
	ResultSet rs = null;
	public Users findUserByUNameAndPwd(String username,String password){
		Users user = null;
		try {
			conn = JDBCUtils.getConn();
			String sql = "select * from users where username=? and password=?";
			pstm =conn.prepareStatement(sql);
			pstm.setString(1, username);
			pstm.setString(2, password);
			rs = pstm.executeQuery();
			if (rs.next()) {
				user = new Users();
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.close(rs, pstm, conn);
		}
		return user;
	}
	public boolean findUserByUName(String username) {
		try {
			conn = JDBCUtils.getConn();
			String sql = "select * from users where username=?";
			pstm =conn.prepareStatement(sql);
			pstm.setString(1, username);
			rs = pstm.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.close(rs, pstm, conn);
		}
		return false;
	}

}
