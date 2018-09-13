package com.software.service;

import java.util.ArrayList;

import com.software.dao.BuildingTypeDao;
import com.software.domain.BuildingType;

public class BuildingTypeService {
    BuildingTypeDao buildingTypeDao = new BuildingTypeDao();
    public BuildingType getTheProductHouseTypeByHouseTypeID(int product_house_type_id) {
        return buildingTypeDao.findTheProductHouseTypeByHouseTypeID(product_house_type_id);
    }
    
    public  ArrayList returnAllBuildingType() {
        return buildingTypeDao.returnAllBuildingType();
    }
}
