package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//Test database
public class DBContext {

    public static void main(String[] args) {
        Connection conn = getConnection();
        
        if (conn != null) {
            System.out.println("Kết nối thành công đến cơ sở dữ liệu MySQL!");

            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Không thể kết nối đến cơ sở dữ liệu.");
        }
    }

    public static Connection getConnection() {
        try {

            String url = "jdbc:mysql://localhost:3306/TUTORIALSPOINT";
            String user = "root";
            String password = "123456";
            // Tải MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Tạo kết nối đến cơ sở dữ liệu
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("Không tìm thấy MySQL JDBC Driver. Hãy chắc chắn bạn đã thêm nó vào classpath.");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Lỗi kết nối đến cơ sở dữ liệu. Hãy kiểm tra thông tin kết nối.");
        }
        return null;
    }

}
