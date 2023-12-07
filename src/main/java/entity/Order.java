package entity;

import java.util.Date;

public class Order {
    private int orderID;

    private Date orderDate;

    private String address;

    private String note;

    private int status;

    private double totalPrice;

    private User user;

    // Constructors
    public Order() {
    }

    public Order(Date orderDate, String address, String note, int status, double totalPrice, User user) {
        this.orderDate = orderDate;
        this.address = address;
        this.note = note;
        this.status = status;
        this.totalPrice = totalPrice;
        this.user = user;
    }

    // Getters and Setters
    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    // toString method for debugging
    @Override
    public String toString() {
        return "Order{" +
                "orderID=" + orderID +
                ", orderDate=" + orderDate +
                ", address='" + address + '\'' +
                ", note='" + note + '\'' +
                ", status=" + status +
                ", totalPrice=" + totalPrice +
                ", user=" + user +
                '}';
    }
}
