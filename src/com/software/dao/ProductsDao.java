package com.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.software.domain.Products;
import com.software.utils.JDBCUtils;

public class ProductsDao {
    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    Statement stmt = null;
    

    /**
     * 查询部分在建工地
     * @param s
     * @param t
     * @param a
     * @return
     */
    public ArrayList showSomeIsBuildingProducts(String s, String t, String a) {
    	
    	ArrayList<Products> isBuildingProductsList = new ArrayList<>();
    	try {
            conn = JDBCUtils.getConnnection();
            if ((s.equals("all"))&&(t.equals("all"))&&(a.equals("all"))) {
            	String sql = "select * from products where product_stage_id <> 9";  
            	stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                while (rs.next()) {
                	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
                }
			} else if ((!s.equals("all"))&&(t.equals("all"))&&(a.equals("all"))) {
				int is = Integer.parseInt(s);
				String sql = "select * from products where product_stage_id <> 9 and product_stage_id = ?";
				pstm = conn.prepareStatement(sql);
		        pstm.setInt(1, is);
		        rs = pstm.executeQuery();
		        while (rs.next()) {
		        	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
			} else if((!t.equals("all"))&&s.equals("all")&&a.equals("all")) {
		    	int it = Integer.parseInt(t);
				String sql = "select * from products where product_stage_id <> 9 and product_house_type_id = ?";
				pstm = conn.prepareStatement(sql);
		        pstm.setInt(1, it);
		        rs = pstm.executeQuery();
		        while (rs.next()) {
		        	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
			} else if((!a.equals("all"))&&s.equals("all")&&t.equals("all")) {
		    	int ia = Integer.parseInt(a);
				String sql="select * from products where product_stage_id <> 9 and product_area_id = ?";
				pstm = conn.prepareStatement(sql);
		        pstm.setInt(1, ia);
		        rs = pstm.executeQuery();
		        while (rs.next()) {
		        	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
			} else if((!a.equals("all"))&&(!s.equals("all"))&&t.equals("all")) {
				int is = Integer.parseInt(s);
		    	int ia = Integer.parseInt(a);
				String sql="select * from products where product_stage_id <> 9 and product_area_id = ? and product_stage_id = ?";
				pstm = conn.prepareStatement(sql);
		        pstm.setInt(1, ia);
		        pstm.setInt(2, is);
		        rs = pstm.executeQuery();
		        while (rs.next()) {
		        	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
			} else if((!t.equals("all"))&&(!s.equals("all"))&&a.equals("all")){
				int is = Integer.parseInt(s);
		    	int it = Integer.parseInt(t);
				String sql="select * from products where product_stage_id <> 9 and product_stage_id = ? and product_house_type_id = ?";
				pstm = conn.prepareStatement(sql);
		        pstm.setInt(1, is);
		        pstm.setInt(2, it);
		        rs = pstm.executeQuery();
		        while (rs.next()) {
		        	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
			} else if((!a.equals("all"))&&(!t.equals("all"))&&s.equals("all")){
		    	int it = Integer.parseInt(t);
		    	int ia = Integer.parseInt(a);
				String sql="select * from products where product_stage_id <> 9 and product_area_id = ? and product_house_type_id = ?";
				pstm = conn.prepareStatement(sql);
		        pstm.setInt(1, ia);
		        pstm.setInt(2, it);
		        rs = pstm.executeQuery();
		        while (rs.next()) {
		        	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
			} else if((!a.equals("all"))&&(!s.equals("all"))&&(!t.equals("all"))){
				int is = Integer.parseInt(s);
		    	int it = Integer.parseInt(t);
		    	int ia = Integer.parseInt(a);
				String sql="select * from products where product_stage_id <> 9 and product_area_id = ? and product_house_type_id = ? and product_stage_id = ?";
				pstm = conn.prepareStatement(sql);
		        pstm.setInt(1, ia);
		        pstm.setInt(2, it);
		        pstm.setInt(3, is);
		        rs = pstm.executeQuery();
		        while (rs.next()) {
		        	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
			}
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
    	System.out.println(isBuildingProductsList.size());
        return isBuildingProductsList;
	}
    
    
    /**
     * 查询全部的在建工地
     * @return
     */
    public ArrayList returnAllIsBuilding() {
    	ArrayList<Products> isBuildingProductsList = new ArrayList<>();
    	try {
            conn = JDBCUtils.getConnnection();
            String sql = "select * from products where product_stage_id <> 9 and product_stage_id <> 500";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
            	isBuildingProductsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
        return isBuildingProductsList;
    }
    
    
    
    public ArrayList returnAllProducts() {
        ArrayList<Products> productsList = new ArrayList<>();
        try {
            conn = JDBCUtils.getConnnection();
            String sql = "select * from products";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                productsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
        return productsList;
    }

    public Products findTheProductByProductID(int productID) {

        Products product = new Products();
        try {
            conn = JDBCUtils.getConnnection();
            String sql = "select * from products where product_id = ?";

            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, productID);

            rs = pstm.executeQuery();
            if (rs.next()) {
                Products pro = new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city"));
                product = pro;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, pstm, conn);
        }
        return product;
    }

    public ArrayList returnProductsByProductName(String productName) {
        ArrayList<Products> productsList = new ArrayList<>();
        try {
            conn = JDBCUtils.getConnnection();
            String sql ="select * from products where product_name like '%" + productName + "%'";

            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                productsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
        return productsList;
    }


	public ArrayList returnBuildingProductsByProductName(String productName) {
		 ArrayList<Products> productsList = new ArrayList<>();
	        try {
	            conn = JDBCUtils.getConnnection();
	            String sql ="select * from products where product_name like '%" + productName + "%' and product_stage_id <> 9";

	            stmt = conn.createStatement();
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                productsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            JDBCUtils.release(rs, stmt, conn);
	        }
	        return productsList;
	}


	/**
	 * 根据id删除一条在建工地条目
	 * @param i
	 */
	public void adminDelOneBuildingProducts(int i) {
		Products product = new Products();
        try {
            conn = JDBCUtils.getConnnection();
            String sql = "update  products set product_stage_id = 500 where product_id = ?";

            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, i);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, pstm, conn);
        }
	}

	/**
	 * 转成sql语句
	 */
	private String toWhereSql(int len) {
		StringBuilder sb = new StringBuilder("product_id in (");
		for(int i = 0;i<len;i++) {
			sb.append("?");
			if(i<len-1) {
				sb.append(",");
			}
		}
		sb.append(")");
		return sb.toString();
	}

	
	/*8
	 * 批量删除
	 */
	public void adminDelBatchBuildingProducts(String buildArray) throws SQLException {
		
		 try {
			    String[] cartItemIdArray = buildArray.split(",");
	            conn = JDBCUtils.getConnnection();
	            String whereSql = toWhereSql(cartItemIdArray.length);
	    		String sql = "update  products set product_stage_id = 500 where " + whereSql;

	            pstm = conn.prepareStatement(sql);
	            for (int i = 1; i <= cartItemIdArray.length; i++) {
	    			pstm.setString(i, cartItemIdArray[i-1]);
	    			System.out.println(cartItemIdArray[i-1]);
	    		}
	            pstm.executeUpdate();
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            JDBCUtils.release(rs, pstm, conn);
	        }
	}


	/*管理员添加在建工地*/
	public void addBuildProduct(Products products) {
		try {
			conn = JDBCUtils.getConnnection();
			String sql = "insert into products(product_name,product_publish_time,product_info,product_picture_path,product_area_id,product_house_type_id,product_stage_id,product_city,product_build_style_id) values(?,?,?,?,?,?,?,?,?) "; 
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, products.getProduct_name());
			pstm.setString(2, products.getProduct_publish_time());
			pstm.setString(3, products.getProduct_info());
			pstm.setString(4, products.getProduct_picture_path());
			pstm.setInt(5, products.getProduct_area_id());
			pstm.setInt(6,products.getProduct_house_type_id());
			pstm.setInt(7, products.getProduct_stage_id());
			pstm.setString(8, products.getProduct_city());
			pstm.setInt(9, products.getProduct_build_style_id());
			System.out.println(products.getProduct_build_style_id());
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(pstm, conn);
		}
	}


	//精确查找
	public ArrayList getBuildingProductsListByAllProductName(String product_name) {
		ArrayList<Products> productsList = new ArrayList<>();
        try {
            conn = JDBCUtils.getConnnection();
            String sql ="select * from products where product_name like '%" + product_name + "%'";

            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                productsList.add(new Products(rs.getString("product_name"), rs.getString("product_publish_time"), rs.getString("product_info"), rs.getString("product_picture_path"), rs.getInt("product_build_style_id"), rs.getInt("product_area_id"), rs.getInt("product_house_type_id"), rs.getInt("product_id"), rs.getInt("product_stage_id"), rs.getString("product_city")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
        return productsList;
	}


	//修改在建工地
	public void updateBuildProduct(Products products) {
		try {
			conn = JDBCUtils.getConnnection();
			String sql = "update  products set product_name = ? , product_info = ? , product_picture_path = ? "
					+ ", product_area_id = ? ,  product_house_type_id = ? "
					+ ", product_stage_id = ? , product_city = ? WHERE product_id = ? "; 
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, products.getProduct_name());
			pstm.setString(2, products.getProduct_info());
			pstm.setString(3, products.getProduct_picture_path());
			pstm.setInt(4, products.getProduct_area_id());
			pstm.setInt(5,products.getProduct_house_type_id());
			pstm.setInt(6, products.getProduct_stage_id());
			pstm.setString(7, products.getProduct_city());
			pstm.setInt(8, products.getProduct_id());
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(pstm, conn);
		}
	}

}
