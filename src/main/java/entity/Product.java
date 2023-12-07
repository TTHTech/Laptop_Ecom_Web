package entity;

public class Product {
    public int productID;
    public String title;
    public double price;
    private String description;
    private int brandID;
    public String color;
    private int productDetailID;
    public String url1;
    private String url2;
    private String url3;
    private String url4;
    private String processor;
    public String ram;
    private String storage;
    private String graphicsCard;
    private String operatingSystem;
    private String prdescription;

    // Constructor mặc định
    public Product() {
    }

    // Constructor với tất cả các thuộc tính
    public Product(int productID, String title, double price, String description, int brandID, String color, int productDetailID, String URL1,String URL2, String URL3, String URL4, String Processor, String Ram, String Storage, String GraphicsCard, String OperatingSystem, String Description) {
        this.productID = productID;
        this.title = title;
        this.price = price;
        this.description = description;
        this.brandID = brandID;
        this.color = color;
        this.productDetailID = productDetailID;
        this.url1 = URL1;
        this.url2 = URL2;
        this.url3 = URL3;
        this.url4 = URL4;
        this.processor = Processor;
        this.ram = Ram;
        this.storage = Storage;
        this.graphicsCard = GraphicsCard;
        this.operatingSystem = OperatingSystem;
        this.prdescription = Description;
    }

    // Getter và Setter cho productID
    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    // Getter và Setter cho title
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    // Getter và Setter cho price
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    // Getter và Setter cho description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Getter và Setter cho brandID
    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    // Getter và Setter cho color
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    // Getter và Setter cho productDetailID
    public int getProductDetailID() {
        return productDetailID;
    }

    public void setProductDetailID(int productDetailID) {
        this.productDetailID = productDetailID;
    }
    public String getUrl1(){return url1; }
    public void setUrl1(String URL1){this.url1 = URL1; }
    public String getUrl2(){return url2; }
    public void setUrl2(String URL2){this.url2 = URL2; }
    public String getUrl3(){return url3; }
    public void setUrl3(String URL3){this.url3 = URL3; }
    public String getUrl4(){return url4; }
    public void setUrl4(String URL4){this.url4 = URL4; }
    public String getProcessor(){return processor; }
    public void setProcessor(String Processor){this.processor = Processor; }
    public String getRam(){return ram; }
    public void setRam(String Ram){this.ram = Ram; }
    public String getStorage(){return storage; }
    public void setStorage(String Storage){this.storage = Storage; }
    public String getGraphicsCard(){return graphicsCard; }
    public void setGraphicsCard(String GraphicsCard){this.graphicsCard = GraphicsCard; }
    public String getOperatingSystem(){return operatingSystem; }
    public void setOperatingSystem(String OperatingSystem){this.operatingSystem = OperatingSystem; }
    public String getPrdescription(){return prdescription; }
    public void setPrdescription(String Prdescription){this.prdescription = Prdescription; }

    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", brandID=" + brandID +
                ", color='" + color + '\'' +
                ", productDetailID=" + productDetailID +
                ", url1='" + url1 + '\'' +
                ", url2='" + url2 + '\'' +
                ", url3='" + url3 + '\'' +
                ", url4='" + url4 + '\'' +
                ", processor='" + processor + '\'' +
                ", ram='" + ram + '\'' +
                ", storage='" + storage + '\'' +
                ", graphicsCard='" + graphicsCard + '\'' +
                ", operatingSystem='" + operatingSystem + '\'' +
                ", prdescription='" + prdescription + '\'' +
                '}';
    }
}
