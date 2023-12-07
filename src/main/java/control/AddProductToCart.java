package control;
import entity.Item;
import entity.Product;
import  dao.itemDAO;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "AddProductToCart", urlPatterns = {"/addproductstocart"})
public class AddProductToCart extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String productID = request.getParameter("add");
        String cartID = "1";
        String quantity = request.getParameter("quantity");

        int newquantity = Integer.parseInt(quantity);
        int cartIDValue = Integer.parseInt(cartID);
        int productIDValue = Integer.parseInt(productID);
        boolean itemFound = false;
        System.out.println(productID);
        itemDAO daoItem = new itemDAO();
        itemDAO dao = new itemDAO();
        List<Item> listItem = daoItem.getItemByCardID(cartID);
        for (Item I : listItem) {
            if (cartIDValue == I.cartID && productIDValue == I.productID) {
                int newquantity1 = newquantity + I.quantity;
                String quantity0 = String.valueOf(newquantity1);
                System.out.println(quantity0);
                dao.deleteProductToCart(productID, cartID);
                dao.insertProductToCart(productID, cartID, quantity0);
                itemFound = true;
            }
        }
        if (!itemFound) {
            dao.insertProductToCart(productID, cartID, quantity);
        }
        request.getRequestDispatcher("cart").forward(request, response);
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
