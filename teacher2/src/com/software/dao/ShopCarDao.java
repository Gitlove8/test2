package com.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.software.domain.ShopCar;
import com.software.utils.JDBCUtils;

public class ShopCarDao {
	Connection conn = null;
	Statement stm = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;

	public void insert(ShopCar shopCar) {
		try {
			conn = JDBCUtils.getConn();
			String sql = "insert into shopCar(username,goodsId,buyNum) values(?,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, shopCar.getUsername());
			pstm.setInt(2, shopCar.getGoodsId());
			pstm.setInt(3, shopCar.getBuyNum());
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			JDBCUtils.close(rs, stm, conn);
		}
	}

	public List<ShopCar> findByUsername(String username) {
		List<ShopCar> shopCarList = new ArrayList<ShopCar>();
		try {
			conn = JDBCUtils.getConn();
			String sql = "select * from shopCar,goods where username=? and shopCar.goodsId=goods.id";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, username);
			rs = pstm.executeQuery();
			while (rs.next()) {
				ShopCar shopCar = new ShopCar();
				shopCar.setId(rs.getInt("id"));
				shopCar.setUsername(rs.getString("username"));
				shopCar.setGoodsId(rs.getInt("goodsId"));
				shopCar.setBuyNum(rs.getInt("buyNum"));
				shopCar.setGoodsName(rs.getString("name"));
				shopCarList.add(shopCar);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			JDBCUtils.close(rs, stm, conn);
		}
		return shopCarList;
	}
	public boolean findByUnameAndGid(String username,int goodsId) {
		try {
			conn = JDBCUtils.getConn();
			String sql = "select * from shopCar where username=? and goodsId=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, username);
			pstm.setInt(2, goodsId);
			rs = pstm.executeQuery();
			if (rs.next()) {
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			JDBCUtils.close(rs, stm, conn);
		}
	}

	public void updateByUnameAndGid(ShopCar shopCar) {
		try {
			conn = JDBCUtils.getConn();
			String sql = "update shopCar set buyNum=buyNum+? where username=? and goodsId=?";
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, shopCar.getBuyNum());
			pstm.setString(2, shopCar.getUsername());
			pstm.setInt(3, shopCar.getGoodsId());
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			JDBCUtils.close(rs, stm, conn);
		}
	}
}
