package dao;
import context.DBContext;
import entity.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.nio.charset.StandardCharsets;

public class accountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkAccountExist(String email) {
        String query = "SELECT Account.*, User.email " +
                "FROM Account " +
                "INNER JOIN User ON Account.userID = User.userID " +
                "WHERE User.email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new Account(
                        rs.getInt("accountID"),
                        rs.getString("userName"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getInt("userID"),
                        rs.getInt("role")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Account login(String email, String password) {
        String query = "SELECT Account.*, User.email " +
                "FROM Account " +
                "INNER JOIN User ON Account.userID = User.userID " +
                "WHERE User.email = ? AND Account.password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new Account(
                        rs.getInt("accountID"),
                        rs.getString("userName"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getInt("userID"),
                        rs.getInt("role")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Account signup(String userName, String email, String password) {
        String userQuery = "INSERT INTO User (fullName, email, created_at) VALUES (?, ?, ?)";
        String accountQuery = "INSERT INTO Account (userName, email, password, userID, role) VALUES (?, ?, ?, ?, ?)";
        String cartQuery = "INSERT INTO Cart (userID) VALUES (?)";

        try {
            conn = new DBContext().getConnection();

            // Lấy ngày hiện tại
            java.util.Date currentDate = new java.util.Date();
            java.sql.Date createdAt = new java.sql.Date(currentDate.getTime());

            // Thực hiện chèn thông tin người dùng vào bảng User
            ps = conn.prepareStatement(userQuery, Statement.RETURN_GENERATED_KEYS);
            ps = conn.prepareStatement(accountQuery, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, userName);
            ps.setString(2, email);
            ps.setDate(3, createdAt); // Chèn ngày tạo vào bảng User
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                // Lấy userID được tạo ra từ chèn vào bảng User
                ResultSet generatedKeys = ps.getGeneratedKeys();
                int userID = -1;
                if (generatedKeys.next()) {
                    userID = generatedKeys.getInt(1);
                }
                generatedKeys.close();

                // Mã hóa mật khẩu trước khi lưu
                String encryptedPassword = hashPassword(password);

                // Chèn thông tin tài khoản vào bảng Account với userID tương ứng
                ps = conn.prepareStatement(accountQuery);
                ps.setString(1, userName);
                ps.setString(2, email);
                ps.setString(3, encryptedPassword);
                ps.setInt(4, userID);
                ps.setInt(5, 0); // Giả sử mặc định vai trò là 0 (USER)
                ps.executeUpdate();

                // Tạo giỏ hàng cho người dùng
                ps = conn.prepareStatement(cartQuery);
                ps.setInt(1, userID);
                ps.executeUpdate();

                return new Account(
                        -1, // Chưa có accountID ở thời điểm này
                        userName,
                        email,
                        encryptedPassword,
                        userID,
                        0 // Giả sử vai trò mặc định là 0
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashInBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : hashInBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
