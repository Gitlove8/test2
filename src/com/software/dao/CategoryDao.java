package com.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.software.utils.JDBCUtils;

public class CategoryDao {

	Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    Statement stmt = null;
    
	
	public void addCategory(String id, String name) {
		try {
			conn = JDBCUtils.getConnnection();
			String sql = null;
			if (id.equals("1")) {
				sql = "insert into building_style(product_build_style,product_build_style_id) values(?,null) ";
			} else if (id.equals("2")) {
				sql = "insert into building_type(product_house_type,product_house_type_id) values(?,null) ";
			}
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(pstm, conn);
		}
	}


	public void del(String id, String son) {
		try {
			conn = JDBCUtils.getConnnection();
			String sql = null;
			if (id.equals("2")) {
				sql = "DELETE FROM building_type  WHERE product_house_type_id =  ?";
				pstm = conn.prepareStatement(sql);
				pstm.setString(1, son);
				pstm.executeUpdate();
				typeupdatenull(son);
			} else if (id.equals("1")) {
				sql = "DELETE FROM building_style WHERE product_build_style_id = ?";
				pstm = conn.prepareStatement(sql);
				pstm.setString(1, son);
				pstm.executeUpdate();
				styleupdatenull(son);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(pstm, conn);
		}
	}

	public void styleupdatenull(String son){
		try {
			conn = JDBCUtils.getConnnection();
			String sql = null;
			sql = "UPDATE products SET product_build_style_id = NULL  WHERE product_build_style_id = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, son);
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(pstm, conn);
		}
	}
	public void typeupdatenull(String son){
		try {
			conn = JDBCUtils.getConnnection();
			String sql = null;
			sql = "UPDATE products SET product_house_type_id = NULL   WHERE product_house_type_id = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, son);
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(pstm, conn);
		}
	}

	public void update(String id, String son, String newname) {
		try {
			conn = JDBCUtils.getConnnection();
			String sql = null;
			if (id.equals("2")) {
				sql = "UPDATE building_type SET product_house_type = ? WHERE product_house_type_id = ? ";
			} else if (id.equals("1")) {
				sql = "UPDATE building_style SET product_build_style = ? WHERE product_build_style_id = ? ";
			}
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, newname);
			pstm.setString(2, son);
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(pstm, conn);
		}
	}

}
