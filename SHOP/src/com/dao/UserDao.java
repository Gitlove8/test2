package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/*import java.sql.Statement;*/

import com.domain.User;
import com.tools.JDBCutils;

public class UserDao {
	private Connection conn ;
	/*private Statement stm = null;*/
	private ResultSet rs ;
	private PreparedStatement ps ;

	public int find(User user){
		
		try {
			conn = JDBCutils.getConn();
			/*stm = conn.createStatement();*/
			
			String sql = "Select * from user where uname = ? and pwd = ?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1,user.getName());
			ps.setString(2,user.getPwd());
			
			rs = ps.executeQuery();
			
			if(rs.next())
				return 0;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCutils.closeB(rs, ps, conn);
		}
		return 1;
	}
	
	public int  add(User user){
		try {
			conn = JDBCutils.getConn();
			String sql = "insert into user values(?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, user.getName());
			ps.setString(2, user.getPwd());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPhone());
			ps.setString(5, user.getAge());
			if(ps.executeUpdate()>-1){
				return 0;
			}else{
				return 1;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{ 
			JDBCutils.closeB(rs, ps, conn);
		}
		return 1;
	}
}
