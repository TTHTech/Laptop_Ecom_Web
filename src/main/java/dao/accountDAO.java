package dao;
import context.DBContext;
import entity.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

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
                        rs.getString("password"),
                        rs.getString("role"),
                        rs.getInt("userID")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
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
                        rs.getString("password"),
                        rs.getString("role"),
                        rs.getInt("userID")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account signup(String userName, String email, String password) {
        String userQuery = "INSERT INTO User (email, created_at) VALUES (?, ?)";
        String accountQuery = "INSERT INTO Account (userName, password, userID) VALUES (?, ?, ?)";

        try {
            conn = new DBContext().getConnection();

            // Lấy ngày hiện tại
            java.util.Date currentDate = new java.util.Date();
            java.sql.Date createdAt = new java.sql.Date(currentDate.getTime());

            // Thực hiện chèn thông tin người dùng vào bảng User
            ps = conn.prepareStatement(userQuery, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, email);
            ps.setDate(2, createdAt); // Chèn ngày tạo vào bảng User
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                // Lấy userID được tạo ra từ chèn vào bảng User
                ResultSet generatedKeys = ps.getGeneratedKeys();
                int userID = -1;
                if (generatedKeys.next()) {
                    userID = generatedKeys.getInt(1);
                }
                generatedKeys.close();

                // Chèn thông tin tài khoản vào bảng Account với userID tương ứng
                ps = conn.prepareStatement(accountQuery);
                ps.setString(1, userName);
                ps.setString(2, password);
                ps.setInt(3, userID);
                ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public String getUserNameByEmail(String email) {
        String query = "SELECT userName FROM Account WHERE email = ?";
        String userName = null;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                userName = rs.getString("userName");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return userName;
    }
    public static void main(String[] args) {
        // Khởi tạo một instance của accountDAO
        accountDAO dao = new accountDAO();

        // Test với một email cụ thể
        String testEmail = "hoaidanghocbai@gmail.com";
        String userName = dao.getUserNameByEmail(testEmail);

        if (userName != null) {
            System.out.println("User name for email " + testEmail + " is: " + userName);
        } else {
            System.out.println("No user found for email " + testEmail);
        }

        // Thêm các test case khác nếu cần
    }
}

