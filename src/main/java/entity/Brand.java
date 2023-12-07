package entity;

public class Brand {
    private int brandID;
    private String brandName;

    // Constructor mặc định
    public Brand() {
    }

    // Constructor với tất cả các thuộc tính
    public Brand(int brandID, String brandName) {
        this.brandID = brandID;
        this.brandName = brandName;
    }

    // Getter và Setter cho brandID
    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    // Getter và Setter cho brandName
    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    // Phương thức toString() (tùy chọn)
    @Override
    public String toString() {
        return "Brand{" +
                "brandID=" + brandID +
                ", brandName='" + brandName + '\'' +
                '}';
    }
}
