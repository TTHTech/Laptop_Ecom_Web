package dao;

import context.DBContext;
import entity.Item;
import entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class itemDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // Lấy giỏ hàng của người dùng theo userID
    public Cart getCartByUserID(int userID) {
        Cart cart = null;
        String query = "SELECT cartID, userID FROM Cart WHERE userID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            if (rs.next()) {
                cart = new Cart();
                cart.setCartID(rs.getInt("cartID"));
                cart.setUserID(rs.getInt("userID"));
                cart.setItems(getItemsByCartID(cart.getCartID()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return cart;
    }

    // Lấy danh sách item trong giỏ hàng theo cartID
    public List<Item> getItemsByCartID(int cartID) {
        List<Item> list = new ArrayList<>();
        String query = "SELECT cartID, productID, quantity FROM Item WHERE cartID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cartID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Item(rs.getInt("cartID"), rs.getInt("productID"), rs.getInt("quantity")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return list;
    }

    // Thêm sản phẩm vào giỏ hàng
    public void insertProductToCart(int userID, String productID, String quantity) {
        String query = "INSERT INTO Item(cartID, productID, quantity) VALUES ((SELECT cartID FROM Cart WHERE userID = ?), ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setString(2, productID);
            ps.setString(3, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
    }

    // Xóa sản phẩm khỏi giỏ hàng
    public void deleteProductFromCart(int userID, String productID) {
        String query = "DELETE FROM Item WHERE productID = ? AND cartID = (SELECT cartID FROM Cart WHERE userID = ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            ps.setInt(2, userID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
    }

    // Cập nhật số lượng sản phẩm trong giỏ hàng
    public void updateProductInCart(int userID, String productID, String quantity) {
        String query = "UPDATE Item SET quantity = ? WHERE productID = ? AND cartID = (SELECT cartID FROM Cart WHERE userID = ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, quantity);
            ps.setString(2, productID);
            ps.setInt(3, userID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
    }

    // Đóng các tài nguyên sau khi sử dụng
    private void closeResources() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
