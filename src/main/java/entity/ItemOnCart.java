package entity;

public class ItemOnCart {
    public int productID;
    public String title;
    public double price;
    public String color;
    public String url;
    public String ram;
    public int quantity;

    public ItemOnCart(){
    }
    public ItemOnCart(int productID, String title, double price, String color, String url, String ram, int quantity){
        this.productID = productID;
        this.title = title;
        this.price = price;
        this.color = color;
        this.url = url;
        this.ram = ram;
        this.quantity = quantity;
    }
    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    public String getUrl(){return url; }
    public void setUrl(String URL){this.url = URL; }
    public String getRam(){return ram; }
    public void setRam(String Ram){this.ram = Ram; }
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
