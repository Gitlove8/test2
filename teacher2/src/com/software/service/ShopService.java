package com.software.service;

import java.util.List;

import com.software.dao.GoodsDao;
import com.software.dao.ShopCarDao;
import com.software.domain.Goods;
import com.software.domain.ShopCar;

public class ShopService {
	GoodsDao goodsDao = new GoodsDao();
	ShopCarDao shopCarDao = new ShopCarDao();
	public List<Goods> findAll() {
		return goodsDao.findAll();
	}
	public Goods findGoodsById(int id) {
		return goodsDao.findGoodsById(id);
	}
	public void addGoods(ShopCar shopCar) {
		if(shopCarDao.findByUnameAndGid(shopCar.getUsername(), shopCar.getGoodsId())){
			shopCarDao.updateByUnameAndGid(shopCar);
		}else{
			shopCarDao.insert(shopCar);		
		}
	}
	public List<ShopCar> findShopCarByUsername(String username) {
		return shopCarDao.findByUsername(username);
	}
}
