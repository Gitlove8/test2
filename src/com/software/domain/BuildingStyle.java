package com.software.domain;

public class BuildingStyle { //建筑风格
    private String product_build_style; //建筑风格
    private int product_build_style_id; //建筑风格id

    public BuildingStyle(){
        super();
    }

    public BuildingStyle(String product_build_style, int product_build_style_id){
        this.product_build_style = product_build_style;
        this.product_build_style_id = product_build_style_id;
    }

    public String getProduct_build_style() {
        return product_build_style;
    }

    public void setProduct_build_style(String product_build_style) {
        this.product_build_style = product_build_style;
    }

    public int getProduct_build_style_id() {
        return product_build_style_id;
    }

    public void setProduct_build_style_id(int product_build_style_id) {
        this.product_build_style_id = product_build_style_id;
    }
}
