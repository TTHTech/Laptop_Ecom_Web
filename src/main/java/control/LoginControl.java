package control;

import entity.Account;
import dao.accountDAO;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Kiểm tra đầu vào rỗng
        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            request.setAttribute("loginError", "Email và mật khẩu là bắt buộc");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }

        // Kiểm tra tài khoản admin cụ thể
        if (email.equals("admin@gmail.com") && password.equals("123")) {
            HttpSession session = request.getSession();
            // Sử dụng constructor của lớp Account với thông tin cụ thể
            Account adminAccount = new Account(
                    1, // Giả sử accountID là 1 cho admin
                    "admin", // userName cho admin
                    email,
                    hashPassword(password),
                    1, // Giả sử userID là 1 cho admin
                    1 // role cho admin
            );
            session.setAttribute("acc", adminAccount);
            session.setAttribute("userID", adminAccount.getUserID());
            response.sendRedirect("admin");
            return;
        }

        // Mã hóa mật khẩu
        String encryptedPassword = hashPassword(password);

        accountDAO dao = new accountDAO();
        Account a = dao.login(email, encryptedPassword);

        if (a == null) {
            request.setAttribute("loginError", "Email hoặc mật khẩu không đúng");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            session.setAttribute("userID", a.getUserID()); // Giả sử userID là thuộc tính của đối tượng Account

            // Kiểm tra vai trò của người dùng
            if (a.getRole() == 1) {
                response.sendRedirect("admin");
            } else {
                response.sendRedirect("home");
            }
        }
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
