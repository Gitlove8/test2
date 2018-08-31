package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import com.domain.Goods;
import com.tools.JDBCutils;

public class GoodsDao {
	private Connection conn ;
	private ResultSet rs ;
	private PreparedStatement ps ;
	public Map<String, Goods> query(){
		try {
			conn = JDBCutils.getConn();
			String sql = "select * from goods";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			return this.turntomap(rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	private Map<String, Goods> turntomap(ResultSet rs2) {
		Map<String , Goods> map = new HashMap<String , Goods>();
		
		try {
			
			while(rs2.next()){
				Goods goods = new Goods();
				goods.setId(rs2.getString("id"));
				goods.setName(rs2.getString("name"));
				goods.setPrice(rs2.getInt("price"));
				goods.setDescription(rs2.getString("describe"));
				String i=rs2.getString("id");
				map.put(i, goods);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
}
