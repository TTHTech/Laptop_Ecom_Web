package control;

import dao.itemDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "DeleteProductInCart", urlPatterns = {"/deleteproductincart"})
public class DeleteProductInCart extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        int userID = (int) session.getAttribute("userID"); // Giả sử userID được lưu trong session khi đăng nhập
        String productID = request.getParameter("delete");

        itemDAO dao = new itemDAO();
        dao.deleteProductFromCart(userID, productID); // Sử dụng userID để xóa sản phẩm

        request.getRequestDispatcher("cart").forward(request, response);
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
