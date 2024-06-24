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
// cai nay can chinh sua thu 2 bat dau code tiep hom nay ve tre qua
@WebServlet(name = "UpdateProductToCart", urlPatterns = {"/updateproducttocart"})
public class UpdateProductToCart extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        String userID = (String) session.getAttribute("userID");

        if (userID == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        String productID = request.getParameter("productID");
        String quantity = request.getParameter("quantity");
        String price = request.getParameter("price");

        int newQuantity = Integer.parseInt(quantity);
        int productIDValue = Integer.parseInt(productID);
        double priceValue = Double.parseDouble(price);
        boolean itemFound = false;

        itemDAO dao = new itemDAO();
        Cart cart = dao.getCartByUserID(Integer.parseInt(userID));
        List<Item> listItem = cart.getItems();
        for (Item I : listItem) {
            if (productIDValue == I.getProductID()) {
                int newQuantity1 = newQuantity + I.getQuantity();
                String quantity0 = String.valueOf(newQuantity1);
                dao.deleteProductFromCart(Integer.parseInt(userID), productID);
                dao.insertProductToCart(Integer.parseInt(userID), productID, quantity0);
                itemFound = true;
                break;
            }
        }
        if (!itemFound) {
            dao.insertProductToCart(Integer.parseInt(userID), productID, quantity);
        }

        response.sendRedirect("product?id=" + productID);
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
