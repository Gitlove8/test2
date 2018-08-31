package com.domain;

public class Goods {
	private String id;//产品id
    private String name;//产品名称    
    private String description;//产品描述  
    private double price;//产品价格  
          
    public Goods(){}  
    public Goods(String id,String name,String description,double price){  
        this.id = id;  
        this.name = name;  
        this.description = description;  
        this.price = (float) price;  
    }  
          
    public void setId(String id){  
        this.id = id;  
    }  
    public void setName(String name){  
        this.name = name;  
    }  
    public void setDescription(String description){  
        this.description = description;  
    }  
    public void setPrice(double price){  
        this.price = (float) price;  
    }  
          
    public String getId(){  
        return this.id;  
    }  
    public String getName(){  
        return this.name;  
    }  
    public String getDescription(){  
        return this.description;  
    }  
    public double getPrice(){  
        return this.price;  
    }  
}
