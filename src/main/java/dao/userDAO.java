package dao;
import context.DBContext;
import entity.Brand;
import entity.Product;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class userDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String query = "SELECT\n" +
                "    User.userID,\n" +
                "    User.fullName,\n" +
                "    User.email AS user_email,\n" +
                "    User.phone,\n" +
                "    User.address,\n" +
                "    User.created_at AS user_created_at,\n" +
                "    User.updated_at AS user_updated_at,\n" +
                "    Account.userName,\n" +
                "    Account.email AS account_email,\n" +
                "    Account.password,\n" +
                "    Account.role\n" +
                "FROM\n" +
                "    User\n" +
                "JOIN\n" +
                "    Account ON User.userID = Account.userID;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getDate(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args){
        userDAO dao = new userDAO();
        List<User> lists = dao.getAllUser();
        for (User o : lists){
             System.out.println(o);
        }
    }
}
