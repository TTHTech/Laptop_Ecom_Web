package entity;

public class Item {
    public int cartID;
    public int productID;
    public int quantity;

    public Item() {
    }

    public Item(int cartID, int productID, int quantity) {
        this.cartID = cartID;
        this.productID = productID;
        this.quantity = quantity;
    }

    // Getters and Setters
    public int getCartItemID() {
        return cartID;
    }

    public void setCartItemID(int cartID) {
        this.cartID = cartID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Item{" +
                "cartItemID=" + cartID +
                ", product=" + productID +
                ", quantity=" + quantity +
                '}';
    }
}
