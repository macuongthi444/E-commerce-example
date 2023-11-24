/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hoang
 */
public class OrderLine {
    /*
    [OrderID] [int] NOT NULL,
[ProductID] [int] NOT NULL,
[quantity] [float] NOT NULL,
[price] [float] NOT NULL,
    */
    private int OrderID;
    private int ProductID;
    private int quantity;
    private double price;

    public OrderLine() {
    }

    public OrderLine(int OrderID, int ProductID, int quantity, double price) {
        this.OrderID = OrderID;
        this.ProductID = ProductID;
        this.quantity = quantity;
        this.price = price;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
}
