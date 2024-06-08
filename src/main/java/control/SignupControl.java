package control;

import entity.Account;
import dao.accountDAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SignupControl", urlPatterns = {"/signup"})
public class SignupControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        // Kiểm tra đầu vào rỗng
        if (userName == null || email == null || password == null || repassword == null ||
                userName.isEmpty() || email.isEmpty() || password.isEmpty() || repassword.isEmpty()) {
            request.setAttribute("signupError", "All fields are required");
            request.getRequestDispatcher("Login1.jsp").forward(request, response);
            return;
        }

        // Kiểm tra mật khẩu có trùng khớp
        if (!password.equals(repassword)) {
            request.setAttribute("signupError", "Passwords do not match");
            request.getRequestDispatcher("Login1.jsp").forward(request, response);
            return;
        }

        accountDAO dao = new accountDAO();
        Account existingAccount = dao.checkAccountExist(email);

        // Kiểm tra email đã tồn tại chưa
        if (existingAccount == null) {
            dao.signup(userName, email, password);
            response.sendRedirect("login.jsp"); // Chuyển hướng về trang đăng nhập sau khi đăng ký thành công
        } else {
            request.setAttribute("signupError", "Email already exists");
            request.getRequestDispatcher("Login1.jsp").forward(request, response);
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


