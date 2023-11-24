/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hoang
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> item) {
        this.items = item;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public int getQuantityByID(int id) {
        return getItemByID(id).getQuantity();
    }

    private Item getItemByID(int id) {
        for (Item item1 : items) {
            if (item1.getProduct().getProductID()== id) {
                return item1;
            }
        }
        return null;
    }

    //lay so luong
    //add vao cart
    public void addItem(Item item) {
        if (getItemByID(item.getProduct().getProductID()) != null) {
            Item i = getItemByID(item.getProduct().getProductID());
            i.setQuantity(i.getQuantity() + item.getQuantity());
        } else {
            items.add(item);
        }
    }

    public void removeItem(int id) {
        if (getItemByID(id) != null) {
            items.remove(getItemByID(id));
        }
    }

    public double getTotal() {
        double total = 0;
        for (Item item : items) {
            total += item.getQuantity() * item.getPrice();
        }
        return total;
    }
}
