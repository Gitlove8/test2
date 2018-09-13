package com.software.domain;

public class Products { //产品
    private String product_name; //产品名称
    private String product_publish_time; //发布时间
    private String product_info; //产品简介
    private  String product_picture_path; //产品图片路径
    private int product_build_style_id; //建筑风格id
    private int product_area_id; //建筑面积id
    private int product_house_type_id; //户型id
    private int product_id; //产品id
    private int product_stage_id; //产品所在阶段id
    private String product_city; //所在城市

    public Products(){
        super();
    }

//    有产品id
    public Products(String product_name, String product_publish_time, String product_info, String product_picture_path, int product_build_style_id, int product_area_id, int product_house_type_id, int product_id, int product_stage_id, String product_city) {
        this.product_name = product_name;
        this.product_publish_time = product_publish_time;
        this.product_info = product_info;
        this.product_picture_path = product_picture_path;
        this.product_build_style_id = product_build_style_id;
        this.product_area_id = product_area_id;
        this.product_house_type_id = product_house_type_id;
        this.product_id = product_id;
        this.product_stage_id = product_stage_id;
        this.product_city = product_city;
    }

//    没产品id
    public Products(String product_name, String product_publish_time, String product_info, String product_picture_path, int product_build_style_id, int product_area_id, int product_house_type_id, int product_stage_id, String product_city) {
        this.product_name = product_name;
        this.product_publish_time = product_publish_time;
        this.product_info = product_info;
        this.product_picture_path = product_picture_path;
        this.product_build_style_id = product_build_style_id;
        this.product_area_id = product_area_id;
        this.product_house_type_id = product_house_type_id;
        this.product_stage_id = product_stage_id;
        this.product_city = product_city;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_publish_time() {
        return product_publish_time;
    }

    public void setProduct_publish_time(String product_publish_time) {
        this.product_publish_time = product_publish_time;
    }

    public String getProduct_info() {
        return product_info;
    }

    public void setProduct_info(String product_info) {
        this.product_info = product_info;
    }

    public String getProduct_picture_path() {
        return product_picture_path;
    }

    public void setProduct_picture_path(String product_picture_path) {
        this.product_picture_path = product_picture_path;
    }

    public int getProduct_build_style_id() {
        return product_build_style_id;
    }

    public void setProduct_build_style_id(int product_build_style_id) {
        this.product_build_style_id = product_build_style_id;
    }

    public int getProduct_area_id() {
        return product_area_id;
    }

    public void setProduct_area_id(int product_area_id) {
        this.product_area_id = product_area_id;
    }

    public int getProduct_house_type_id() {
        return product_house_type_id;
    }

    public void setProduct_house_type_id(int product_house_type_id) {
        this.product_house_type_id = product_house_type_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getProduct_stage_id() {
        return product_stage_id;
    }

    public void setProduct_stage_id(int product_stage_id) {
        this.product_stage_id = product_stage_id;
    }

    public String getProduct_city() {
        return product_city;
    }

    public void setProduct_city(String product_city) {
        this.product_city = product_city;
    }
}
