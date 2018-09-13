package com.software.service;

import com.software.dao.BuildingAreaDao;
import com.software.domain.BuildingArea;

public class BuildingAreaService {
    BuildingAreaDao buildingAreaDao = new BuildingAreaDao();

    public BuildingArea getTheProductAreaByAreaID(int product_area_id) {
        return buildingAreaDao.findTheProductAreaByAreaID(product_area_id);
    }
}
