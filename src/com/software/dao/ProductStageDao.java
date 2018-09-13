package com.software.dao;

import com.software.domain.ProductStage;
import com.software.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class ProductStageDao {
    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    Statement stmt = null;

    public ProductStage findTheProductStageByStageID(int product_stage_id) {
        ProductStage productStage = new ProductStage();

        try {
            conn = JDBCUtils.getConnnection();
            String sql = "select * from product_stage where product_stage_id = ?";

            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, product_stage_id);

            rs = pstm.executeQuery();
            if (rs.next()) {
                productStage.setProduct_stage(rs.getString("product_stage"));
                productStage.setProduct_stage_id(rs.getInt("product_stage_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, pstm, conn);
        }
        return productStage;
    }
}
