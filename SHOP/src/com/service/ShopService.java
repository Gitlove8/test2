package com.service;

import com.dao.GoodsDao;
import com.domain.Goods;

public class ShopService {
	GoodsDao dao = new GoodsDao();
	public void query(Goods goods){
		dao.query();
	}
}
