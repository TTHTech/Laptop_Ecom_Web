/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;


import entity.ItemOnCart;
import entity.Product;
import dao.productDAO;
import dao.itemDAO;
import entity.Item;
import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author trinh
 */
@WebServlet(name = "CartControl", urlPatterns = {"/cart"})
public class CartControl extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        itemDAO dao = new itemDAO();
        productDAO daopro = new productDAO();
        String cardID = "1";

        int totalPrice = 0;
        List<Item> listItem = dao.getItemByCardID(cardID);
        List<Product> listproduct = new ArrayList<>();
        List<ItemOnCart> listItemOnCart = new ArrayList<>();
        for (Item I : listItem){
            String idpro = String.valueOf(I.productID);
            Product p = daopro.getProductByID(idpro);
            ItemOnCart item = new ItemOnCart();
            if(p != null) {
                listproduct.add(p);
                item.productID = p.productID;
                item.title = p.title;
                item.price = p.price * I.quantity;
                totalPrice += item.price;
                item.color = p.color;
                item.ram = p.ram;
                item.url = p.url1;
                item.quantity = I.quantity;
                listItemOnCart.add(item);
            }
            else {
                Product pro = new Product();
                pro.productID = I.productID;
                pro.title = "Sản phẩm đã hết hàng hoặc đã bị xóa khỏi danh sách sản phẩm.";
                pro.url1 = "image/hethang.png";
                item.productID = pro.productID;
                item.url = pro.url1;
                item.title = pro.title;
                item.quantity = 0;
                listproduct.add(pro);
                listItemOnCart.add(item);
            }
        }
        request.setAttribute("listpro", listItemOnCart);

        request.setAttribute("total", totalPrice);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);

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
