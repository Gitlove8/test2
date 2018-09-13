package com.software.dao;

import com.software.domain.BuildingType;
import com.software.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class BuildingTypeDao {
    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    Statement stmt = null;

    public BuildingType findTheProductHouseTypeByHouseTypeID(int product_house_type_id) {
        BuildingType buildingType = new BuildingType();
        try {
            conn = JDBCUtils.getConnnection();
            String sql = "select * from building_type where product_house_type_id = ?";

            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, product_house_type_id);

            rs = pstm.executeQuery();
            if (rs.next()) {
                buildingType.setProduct_house_type(rs.getString("product_house_type"));
                buildingType.setProduct_house_type_id(rs.getInt("product_house_type_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, pstm, conn);
        }
        return buildingType;
    }
    
    public ArrayList returnAllBuildingType() {
        ArrayList<BuildingType> buildingTypesList = new ArrayList<>();
        try {
            conn = JDBCUtils.getConnnection();
            String sql = "select * from building_type";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                buildingTypesList.add(new BuildingType(rs.getString("product_house_type"), rs.getInt("product_house_type_id")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
        return buildingTypesList;
    }

}
