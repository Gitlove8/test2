package com.software.utils;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JDBCUtils {
	private static ComboPooledDataSource source = new ComboPooledDataSource();
	/**
	 * 私有构造方法，说明本类不允许生成对象
	 */
	private JDBCUtils(){}
	/**
	 * 获取数据库连接
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws NamingException 
	 */
	public static Connection getConn() throws ClassNotFoundException, SQLException, NamingException{		
		Connection conn = source.getConnection();

		return conn;
	}
	/**
	 * 关闭数据库资源
	 * @param rs
	 * @param stm
	 * @param con
	 */
	public static void close(ResultSet rs,Statement stm,Connection conn){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				rs = null;
			}
		}
		if(stm!=null){
			try {
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				rs = null;
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				rs = null;
			}
		}
	}
}
