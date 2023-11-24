/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hoang
 */
public class Product {

    private int productID;
    private String name;
    private String image;
    private double listPrice;
    private String sellStartDate;
    private String description;
    private int typeID;
    private int sellID;
    private int quantity;

    public Product() {
    }

    public Product(int productID, String name, String image, double listPrice, String sellStartDate, String description, int typeID, int sellID, int quantity) {
        this.productID = productID;
        this.name = name;
        this.image = image;
        this.listPrice = listPrice;
        this.sellStartDate = sellStartDate;
        this.description = description;
        this.typeID = typeID;
        this.sellID = sellID;
        this.quantity = quantity;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getListPrice() {
        return listPrice;
    }

    public void setListPrice(double listPrice) {
        this.listPrice = listPrice;
    }

    public String getSellStartDate() {
        return sellStartDate;
    }

    public void setSellStartDate(String sellStartDate) {
        this.sellStartDate = sellStartDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getTypeID() {
        return typeID;
    }

    public void setTypeID(int typeID) {
        this.typeID = typeID;
    }

    public int getSellID() {
        return sellID;
    }

    public void setSellID(int sellID) {
        this.sellID = sellID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", name=" + name + ", image=" + image + ", listPrice=" + listPrice + ", sellStartDate=" + sellStartDate + ", description=" + description + ", typeID=" + typeID + ", sellID=" + sellID + ", quantity=" + quantity + '}';
    }

   
}
