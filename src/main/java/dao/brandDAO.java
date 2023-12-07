package dao;
import context.DBContext;
import entity.Brand;
import entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class brandDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Brand> getAllBrand() {
        List<Brand> list = new ArrayList<>();
        String query = "select * from Brand";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Brand(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {

        }
        return list;
    }
}
