package dao;
import context.DBContext;
import entity.Customer;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class customerDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Customer> getAllCustomer() {
        List<Customer> list = new ArrayList<>();
        String query = "SELECT fullName, email, phone, address, created_at\n" +
                "FROM User;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Customer(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void deleteCustomer(String ID){
        String queryProduct = "DELETE FROM Account WHERE userID='"+ID+"'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(queryProduct);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args){
        customerDAO dao = new customerDAO();
        List<Customer> lists = dao.getAllCustomer();
        for (Customer o : lists){
            System.out.println(o);
        }
    }
}
