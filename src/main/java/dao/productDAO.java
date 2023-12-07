package dao;
import context.DBContext;
import entity.Brand;
import entity.Item;
import entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class productDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //lấy dữ liệu product từ database
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    //lấy dữu liệu productdetail từ database
    // lấy dữ liệu brand từ database


    public List<Product> getfiveLast() {
        List<Product> products = new ArrayList<>();
        // Giả sử 'releaseDate' là cột mà bạn sử dụng để xác định sản phẩm mới nhất
        // Hoặc thay 'releaseDate' bằng cột ID nếu bạn muốn sử dụng ID để sắp xếp
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID \n" +
                "ORDER BY productID DESC LIMIT 5;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ ở đây
        }
        return products;
    }
    public List<Product> getone() {
        List<Product> products = new ArrayList<>();
        // Giả sử 'releaseDate' là cột mà bạn sử dụng để xác định sản phẩm mới nhất
        // Hoặc thay 'releaseDate' bằng cột ID nếu bạn muốn sử dụng ID để sắp xếp
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID \n" +
                "ORDER BY RAND() LIMIT 5;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ ở đây
        }
        return products;
    }
    public List<Product> gettwo() {
        List<Product> products = new ArrayList<>();
        // Giả sử 'releaseDate' là cột mà bạn sử dụng để xác định sản phẩm mới nhất
        // Hoặc thay 'releaseDate' bằng cột ID nếu bạn muốn sử dụng ID để sắp xếp
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID \n" +
                "ORDER BY RAND() LIMIT 5;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ ở đây
        }
        return products;
    }
    //lấy product theo Brand tương ứng
    public List<Product> getProductByBrand(String brandID) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID AND p.brandID =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,brandID);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    public Product getProductByID(String productID) {
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "\tg.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID AND p.productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17));
            }
        } catch (Exception e) {

        }
        return null;
    }
    public void insertGallery(String url1, String url2, String url3, String url4){
        String queryGallery = "INSERT INTO Gallery (imageURL1, imageURL2, imageURL3, imageURL4) VALUES (N'"+url1+"',N'"+url2+"',N'"+url3+"',N'"+url4+"')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryGallery);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteGalley(int ID){
        String queryGallery = "DELETE FROM Gallery WHERE galleryID='"+ID+"'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryGallery);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void insertProductDetail(String processor, String ram, String storage, String graphicsCard, String operatingSystem, String prdescription, Double discount){
        String queryProductDetail = "INSERT INTO ProductDetail (processor, ram, storage, graphicsCard, operatingSystem, description, discount) VALUES(N'"+processor+"', N'"+ram+"', N'"+storage+"', N'"+graphicsCard+"', N'"+operatingSystem+"', N'"+prdescription+"','"+discount+"')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryProductDetail);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteProductDetail(int ID){
        String queryProductDetail = "DELETE FROM ProductDetail WHERE productDetailID='"+ID+"'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryProductDetail);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void insertProduct(String title, Double price, String description, Double brandID, String color, String productDetailID){
        String queryProduct = "INSERT INTO Product (title, price, description, brandID, color, productDetailID) VALUES(N'"+title+"','"+price+"',N'"+description+"','"+brandID+"',N'"+color+"','"+productDetailID+"')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryProduct);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteProduct(int ID){
        String queryProduct = "DELETE FROM Product WHERE productID='"+ID+"'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryProduct);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        productDAO yourObject = new productDAO(); // Thay thế YourClassNameHere bằng tên lớp của bạn
        List<Product> randomProducts = yourObject.getone();

        if (randomProducts.isEmpty()) {
            System.out.println("Không có sản phẩm nào được tìm thấy.");
        } else {
            for (Product product : randomProducts) {
                System.out.println("Product ID: " + product.getProductID());
                System.out.println("Title: " + product.getTitle());
                System.out.println("Price: " + product.getPrice());
                // In ra các thuộc tính khác của sản phẩm nếu bạn muốn...
            }
        }
    }
}
