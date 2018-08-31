package com.javakc.student.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javakc.student.dao.StudentDao;
import com.javakc.student.vo.StudentModel;

public class StudentDaoImpl implements StudentDao {

	@Override
	public List<StudentModel> query() {
		/**
		 * 连接数据库
		 */
		Connection conn = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sun"; 
			conn = DriverManager.getConnection(url, "root", "root");
			
			String sql = "Select id,name,age,sex from student ";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			
			
			ResultSet rs = pstmt.executeQuery();
			return this.resultSet2List(rs);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(conn!=null){
					conn.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			
		}
		return null;
	}

	

	@Override
	public void create(StudentModel sm) {
		Connection conn = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sun?useUnicode=true&characterEncoding=utf-8"; 
			conn = DriverManager.getConnection(url, "root", "root");
			
			String sql = "insert into student(name,age,sex) values(?,?,?)  ";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, sm.getName());
			pstmt.setInt(2, sm.getAge());
			pstmt.setString(3, sm.getSex());
			
			pstmt.executeUpdate();
			
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(conn!=null){
					conn.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			
		}
		
	}

	@Override
	public StudentModel load(String id) {
		/**
		 * 连接数据库
		 */
		Connection conn = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sun"; 
			conn = DriverManager.getConnection(url, "root", "root");
			
			String sql = "Select id,name,age,sex from student where id =?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			List list = this.resultSet2List(rs);
			
			
			return (StudentModel) list.get(0);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(conn!=null){
					conn.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			
		}
		return null;
	}
	
	private List<StudentModel> resultSet2List(ResultSet rs) throws SQLException{
		List<StudentModel> list = new ArrayList<StudentModel>();
		while(rs.next()){
			StudentModel sm = new StudentModel();
			sm.setId(rs.getString("id"));
			sm.setName(rs.getString("name"));
			sm.setAge(rs.getInt("age"));
			sm.setSex(rs.getString("sex"));
			list.add(sm);
		}
		return list;
		
	}
	
	public void update(StudentModel sm) {
		Connection conn = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sun"; 
			conn = DriverManager.getConnection(url, "root", "root");
			
			String sql = "update  student set name=?,sex = ? ,age=? where id = ?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, sm.getName());
			pstmt.setString(2, sm.getSex());
			pstmt.setInt(3, sm.getAge());
			pstmt.setString(4, sm.getId());
			
			pstmt.executeUpdate();
			
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(conn!=null){
					conn.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			
		}
		
	}



	@Override
	public void delete(String id) {
		Connection conn = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sun"; 
			conn = DriverManager.getConnection(url, "root", "root");
			
			String sql = "delete from student  where id = ?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(conn!=null){
					conn.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			
		}
		
		
	}
}
