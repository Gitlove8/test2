package com.tools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JDBCutils {
	/**
	 * 获取数据库连接
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static Connection getConn() throws Exception {
		ComboPooledDataSource source = new ComboPooledDataSource();
		Connection conn = source.getConnection();
		return conn;
	}
	/**
	 * 关闭数据库资源
	 * @param rs
	 * @param stm
	 * @param con
	 */
	public static void closeA(ResultSet rs, Statement stm, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
		if (stm != null) {
			try {
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
	}
	
	public static void closeB(ResultSet rs, PreparedStatement stm, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
		if (stm != null) {
			try {
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
	}
	/*public static void main(String[] args) throws Exception{
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
//		conn = JDBCutils.getConn();
//		String sql = "select * from user where uname = ? and pwd = ?";
//		
//		ps = conn.prepareStatement(sql);
//		ps.setString(1, "qwe");
//		ps.setString(2, "qwe");
////		rs = stm.executeQuery("select * from user");
//		ResultSet re = ps.executeQuery();
//		while (re.next()) {
//			System.out.println();
//			System.out.println(6);
//		}
		conn = JDBCutils.getConn();
		stm = conn.createStatement();
		
		String sql = "Select * from user where uname = ? and pwd = ?";
		
		ps = conn.prepareStatement(sql);
		ps.setString(1,"asdasa");
		ps.setString(2,"asdfasdf");
		
		 rs = ps.executeQuery();
		
		if(rs.next())
			System.out.println(3);
		System.out.println(6);
		JDBCutils.closeA(rs, stm, conn);
	}*/
}
