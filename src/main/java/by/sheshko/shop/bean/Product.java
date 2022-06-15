package by.sheshko.shop.bean;

import java.io.Serializable;
import java.util.ArrayList;

public class Product implements Serializable {
    private static final long serialVersionUID = 574829538859146812L;
    private String title;
    private String description;
    private double price;
    private int availableQuantity;
    private int quantityInOrders;

    public Product() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAvailableQuantity() {
        return availableQuantity;
    }

    public void setAvailableQuantity(int availableQuantity) {
        this.availableQuantity = availableQuantity;
    }

    public int getQuantityInOrders() {
        return quantityInOrders;
    }

    public void setQuantityInOrders(int quantityInOrders) {
        this.quantityInOrders = quantityInOrders;
    }

}