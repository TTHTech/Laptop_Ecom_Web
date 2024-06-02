//package control;
//
//import entity.Item;
//import entity.Product;
//import dao.itemDAO;
//
//import java.io.IOException;
//import java.util.List;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet(name = "UpdateProductToCart", urlPatterns = {"/updateproducttocart"})
//public class UpdateProductToCart extends HttpServlet {
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//
//        String productID = request.getParameter("productID");
//        String cartID = "1";
//        String quantity = request.getParameter("quantity");
//        String price = request.getParameter("price");
//
//        int newQuantity = Integer.parseInt(quantity);
//        int cartIDValue = Integer.parseInt(cartID);
//        int productIDValue = Integer.parseInt(productID);
//        double priceValue = Double.parseDouble(price);
//        boolean itemFound = false;
//
//        itemDAO dao = new itemDAO();
//        List<Item> listItem = dao.getItemByCardID(cartID);
//        for (Item I : listItem) {
//            if (cartIDValue == I.getCartItemID() && productIDValue == I.getProductID()) {
//                int newQuantity1 = newQuantity + I.getQuantity();
//                String quantity0 = String.valueOf(newQuantity1);
//                dao.deleteProductToCart(productID, cartID);
//                dao.insertProductToCart(productID, cartID, quantity0, priceValue);
//                itemFound = true;
//            }
//        }
//        if (!itemFound) {
//            dao.insertProductToCart(productID, cartID, quantity, priceValue);
//        }
//
//        response.sendRedirect("product?id=" + productID);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }
//}
