package com.software.service;

import java.util.ArrayList;

import com.software.dao.BuildingStyleDao;
import com.software.domain.BuildingStyle;

public class BuildingStyleService {
    BuildingStyleDao buildingStyleDao = new BuildingStyleDao();

    public BuildingStyle getTheProductBuildStyleByStyleID(int product_build_style_id) {
        return buildingStyleDao.findTheProductBuildStyleByStyleID(product_build_style_id);
    }
    
    public  ArrayList returnAllBuildingStyle() {
        return buildingStyleDao.returnAllBuildingStyle();
    }
}
