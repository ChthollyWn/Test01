package com.example.Chenzhipeng;

public class javaBean {
    private String brand;
    private String name;
    private int price;
    public String getBrand() {
        return brand;
    }
    public void setBrand(String brand) {
        this.brand = brand;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public javaBean(){
        brand = "vivo-iqoo9pro";
        name = "手机";
        price = 5499;
    }
}
