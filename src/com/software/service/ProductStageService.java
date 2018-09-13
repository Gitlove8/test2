package com.software.service;

import com.software.dao.ProductStageDao;
import com.software.domain.ProductStage;

public class ProductStageService {
    ProductStageDao productStageDao = new ProductStageDao();

    public ProductStage getTheProductStageByStageID(int product_stage_id) {
        return productStageDao.findTheProductStageByStageID(product_stage_id);
    }
}
