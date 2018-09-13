package com.software.service;

import com.software.dao.ProductsDao;
import com.software.domain.Products;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductsService {
    ProductsDao productsDao = new ProductsDao();
    public ArrayList getAllProductsList() {
        return productsDao.returnAllProducts();
    }

    public Products getTheProductByProductID(int productID) {
        return productsDao.findTheProductByProductID(productID);
    }

    public ArrayList getProductsListByProductName(String productName) {
        return productsDao.returnProductsByProductName(productName);
    }
    
    /**
     * 查询全部在建工地
     */
    public ArrayList returnAllIsBuilding() {
        return productsDao.returnAllIsBuilding();
    }


    /**
     * 查询部分在建工地
     * @return 
     */
	public ArrayList showSomeIsBuildingProducts(String s, String t, String a) {
		 return productsDao.showSomeIsBuildingProducts(s,t,a);
	}

	/**
	 * 根据名称查在建工地
	 * @param productName
	 * @return
	 */
	public ArrayList getBuildingProductsListByProductName(String productName) {
		return productsDao.returnBuildingProductsByProductName(productName);
	}

	/**
	 * 根据id删除一条在建工地条目
	 * @param i
	 */
	public void adminDelOneBuildingProducts(int i) {
		productsDao.adminDelOneBuildingProducts(i);
		
	}

	/*8
	 * 管理员批量删除在建工地
	 */
	public void adminDelBatchBuildingProducts(String buildArray) throws SQLException {
		productsDao.adminDelBatchBuildingProducts(buildArray);
	}

	/*管理员添加在建工地*/
	public void addBuildProduct(Products products) {
		productsDao.addBuildProduct(products);
	}

	/*管理员修改在建工地*/
	public void updateBuildProduct(Products products) {
		productsDao.updateBuildProduct(products);
	}

	//精确查找
	public ArrayList getBuildingProductsListByAllProductName(String product_name) {
		return productsDao.getBuildingProductsListByAllProductName(product_name);
	}
}
