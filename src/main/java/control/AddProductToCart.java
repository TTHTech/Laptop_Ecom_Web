package control;

import entity.Cart;
import entity.Item;
import dao.itemDAO;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AddProductToCart", urlPatterns = {"/addproductstocart"})
public class AddProductToCart extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(false); // Get the session if it exists
        if (session == null || session.getAttribute("userID") == null) {
            response.sendRedirect("Login.jsp"); // Redirect to login page if not logged in
            return;
        }

        int userID = (int) session.getAttribute("userID"); // Get userID from session
        String productID = request.getParameter("add");
        String quantity = request.getParameter("quantity");

        int newQuantity = Integer.parseInt(quantity);
        boolean itemFound = false;

        itemDAO dao = new itemDAO();
        Cart cart = dao.getCartByUserID(userID); // Get user's cart
        List<Item> listItem = cart.getItems(); // Get list of items in the cart

        for (Item item : listItem) {
            if (productID.equals(String.valueOf(item.getProductID()))) {
                int updatedQuantity = newQuantity + item.getQuantity();
                dao.updateProductInCart(userID, productID, String.valueOf(updatedQuantity));
                itemFound = true;
                break;
            }
        }

        if (!itemFound) {
            dao.insertProductToCart(userID, productID, quantity);
        }

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
