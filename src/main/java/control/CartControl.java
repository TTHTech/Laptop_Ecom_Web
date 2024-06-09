package control;

import entity.ItemOnCart;
import entity.Product;
import dao.productDAO;
import dao.itemDAO;
import entity.Cart;
import entity.Item;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CartControl", urlPatterns = {"/cart"})
public class CartControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        int userID = (int) session.getAttribute("userID"); // Giả sử userID được lưu trong session khi đăng nhập

        itemDAO dao = new itemDAO();
        productDAO daopro = new productDAO();

        int totalPrice = 0;
        Cart cart = dao.getCartByUserID(userID); // Sử dụng userID để lấy giỏ hàng của người dùng
        List<Item> listItem = cart.getItems();
        List<Product> listproduct = new ArrayList<>();
        List<ItemOnCart> listItemOnCart = new ArrayList<>();

        for (Item I : listItem) {
            String idpro = String.valueOf(I.getProductID());
            Product p = daopro.getProductByID(idpro);
            ItemOnCart item = new ItemOnCart();
            if (p != null) {
                listproduct.add(p);
                item.setProductID(p.getProductID());
                item.setTitle(p.getTitle());
                item.setPrice(p.getPrice() * I.getQuantity());
                totalPrice += item.getPrice();
                item.setColor(p.getColor());
                item.setRam(p.getRam());
                item.setUrl(p.getUrl1());
                item.setQuantity(I.getQuantity());
                listItemOnCart.add(item);
            } else {
                Product pro = new Product();
                pro.setProductID(I.getProductID());
                pro.setTitle("Sản phẩm đã hết hàng hoặc đã bị xóa khỏi danh sách sản phẩm.");
                pro.setUrl1("image/hethang.png");
                item.setProductID(pro.getProductID());
                item.setUrl(pro.getUrl1());
                item.setTitle(pro.getTitle());
                item.setQuantity(0);
                listproduct.add(pro);
                listItemOnCart.add(item);
            }
        }
        request.setAttribute("listpro", listItemOnCart);
        request.setAttribute("total", totalPrice);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
