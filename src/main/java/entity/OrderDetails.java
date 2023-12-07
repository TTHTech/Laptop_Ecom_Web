package entity;

public class OrderDetails {

    private int orderDetailID;

    private int quantity;

    private double totalPrice;

    private String note;

    private Order order;


    private Product product;

    // Constructors
    public OrderDetails() {
    }

    public OrderDetails(int quantity, double totalPrice, String note, Order order, Product product) {
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.note = note;
        this.order = order;
        this.product = product;
    }

    // Getters and Setters
    public int getOrderDetailID() {
        return orderDetailID;
    }

    public void setOrderDetailID(int orderDetailID) {
        this.orderDetailID = orderDetailID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    // toString method for debugging
    @Override
    public String toString() {
        return "OrderDetails{" +
                "orderDetailID=" + orderDetailID +
                ", quantity=" + quantity +
                ", totalPrice=" + totalPrice +
                ", note='" + note + '\'' +
                ", order=" + order +
                ", product=" + product +
                '}';
    }
}
