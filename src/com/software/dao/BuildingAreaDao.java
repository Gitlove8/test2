package com.software.dao;

import com.software.domain.BuildingArea;
import com.software.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class BuildingAreaDao {
    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    Statement stmt = null;

    public BuildingArea findTheProductAreaByAreaID(int product_area_id) {
        BuildingArea buildingArea = new BuildingArea();
        try {
            conn = JDBCUtils.getConnnection();
            String sql = "select * from building_area where product_area_id = ?";

            pstm = conn.prepareStatement(sql);
            pstm.setInt(1,product_area_id);

            rs = pstm.executeQuery();
            if (rs.next()) {
                buildingArea.setProduct_area(rs.getString("product_area"));
                buildingArea.setProduct_area_id(rs.getInt("product_area_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, pstm, conn);
        }
        return buildingArea;

    }
}
