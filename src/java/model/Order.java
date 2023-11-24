/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hoang
 */
public class Order {
    /*
    [OrderID] [int] NOT NULL PRIMARY KEY,
[date] [date] NOT NULL,
[PersonID] [int] NOT NULL,
[totalmoney] [money] NULL,
    */
    private int OrderID;
    private String date;
    private int PersonID;
    private double totalmoney;

    public Order() {
    }

    public Order(int OrderID, String date, int PersonID, double totalmoney) {
        this.OrderID = OrderID;
        this.date = date;
        this.PersonID = PersonID;
        this.totalmoney = totalmoney;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getPersonID() {
        return PersonID;
    }

    public void setPersonID(int PersonID) {
        this.PersonID = PersonID;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

    @Override
    public String toString() {
        return "Order{" + "OrderID=" + OrderID + ", date=" + date + ", PersonID=" + PersonID + ", totalmoney=" + totalmoney + '}';
    }
    
}
