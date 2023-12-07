package dao;
import context.DBContext;
import entity.Item;
import entity.Product;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class itemDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Item> getItemByCardID(String cartID) {
        List<Item> list = new ArrayList<>();
        String query = "SELECT cartID, productID, quantity FROM Item WHERE cartID = ?;\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,cartID);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Item(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void insertProductToCart(String productID, String cartID, String quantity) {
//        String queryinsertProductToCart = "INSERT INTO Item (cartID, productID, quantity)\n" +
//                "VALUES ('"+cartID+"', '"+productID+"', '"+quantity+"')\n" +
//                "ON DUPLICATE KEY UPDATE quantity = quantity + VALUES(quantity)";
        String queryinsertProductToCart = "INSERT INTO Item(cartID, productID, quantity) VALUES ('"+cartID+"','"+productID+"','"+quantity+"')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryinsertProductToCart);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteProductToCart(String productID, String cartID) {
        String queryinsertProductToCart = "DELETE FROM Item WHERE productID='"+productID+"' AND  cartID='"+cartID+"'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryinsertProductToCart);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void updateProductToCart(String productID, String cartID, String quantity) {
        String queryupdateProductToCart = "UPDATE Item SET quantity = '"+quantity+"' WHERE cartID = '"+cartID+"' AND productID = '"+productID+"')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryupdateProductToCart);
            ps.setString(1, quantity);
            ps.setString(2, cartID);
            ps.setString(3, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args){
        itemDAO dao = new itemDAO();
        productDAO daopro = new productDAO();
        String cartID = "1";
        List<Item> listItem = dao.getItemByCardID(cartID);
        System.out.println(listItem);
//        List<Product> listproduct = new ArrayList<>();
//        for (Item I : listItem){
//            String idpro = String.valueOf(I.productID);
//            Product p = daopro.getProductByID(idpro);
//            listproduct.add(p);
//        }
//        System.out.println("Danh sách sản phẩm sau khi thêm:");
//        for (Product product : listproduct) {
//            System.out.println(product);
//        }
    }
}
