package dao;
import context.DBContext;
import entity.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class accountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Account checkAccountExist(String email) {
        String query = "SELECT * FROM Account WHERE email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public Account login(String email, String password) {
        String query = "SELECT * FROM Account WHERE email = ? AND password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public void signup(String email, String password) {
        String query = "INSERT INTO Account (email, password) VALUES (?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}

