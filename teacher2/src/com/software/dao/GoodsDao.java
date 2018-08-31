package com.software.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.software.domain.Goods;
import com.software.utils.JDBCUtils;

public class GoodsDao {

	Connection conn = null;	
	Statement stm = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	public List<Goods> findAll(){
		List<Goods> goodsList = new ArrayList<Goods>();
		try {
			conn = JDBCUtils.getConn();
			String sql = "select * from goods";
			stm =conn.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				Goods goods = new Goods();
				goods.setId(rs.getInt("id"));
				goods.setName(rs.getString("name"));
				goods.setPrice(rs.getFloat("price"));
				goods.setNum(rs.getInt("num"));
				goodsList.add(goods);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JDBCUtils.close(rs, stm, conn);
		}
		return goodsList;
	}

	public Goods findGoodsById(int id) {
		Goods goods = new Goods();
		try {
			conn = JDBCUtils.getConn();
			String sql = "select * from goods where id=?";
			pstm =conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rs = pstm.executeQuery();
			if (rs.next()) {
				goods.setId(rs.getInt("id"));
				goods.setName(rs.getString("name"));
				goods.setPrice(rs.getFloat("price"));
				goods.setNum(rs.getInt("num"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.close(rs, stm, conn);
		}
		return goods;
	}
}
