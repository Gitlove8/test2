package com.software.domain;

public class BuildingArea { //建筑面积
    private String product_area; //建筑面积
    private int product_area_id; //建筑面积id

    public BuildingArea(){
        super();
    }

    public BuildingArea(String product_area, int product_area_id){
        this.product_area = product_area;
        this.product_area_id = product_area_id;
    }

    public String getProduct_area() {
        return product_area;
    }

    public void setProduct_area(String product_area) {
        this.product_area = product_area;
    }

    public int getProduct_area_id() {
        return product_area_id;
    }

    public void setProduct_area_id(int product_area_id) {
        this.product_area_id = product_area_id;
    }
}
