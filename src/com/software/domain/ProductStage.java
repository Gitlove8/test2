package com.software.domain;

public class ProductStage { //产品所在阶段
    private String product_stage; //产品所在阶段
    private int product_stage_id; //阶段id

    public ProductStage(){
        super();
    }

    public ProductStage(String product_stage, int product_stage_id){
        this.product_stage = product_stage;
        this.product_stage_id = product_stage_id;
    }

    public String getProduct_stage() {
        return product_stage;
    }

    public void setProduct_stage(String product_stage) {
        this.product_stage = product_stage;
    }

    public int getProduct_stage_id() {
        return product_stage_id;
    }

    public void setProduct_stage_id(int product_stage_id) {
        this.product_stage_id = product_stage_id;
    }

}
