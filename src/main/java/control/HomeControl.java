package control;

import entity.Brand;
import entity.Product;
import dao.productDAO;
import dao.brandDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        productDAO dao = new productDAO();
        brandDAO data = new brandDAO();
        List<Product> list = dao.getAllProduct();
        List<Product> firstHalf = new ArrayList<>(list.subList(0, 20));
        List<Product> secondHalf = new ArrayList<>(list.subList(20, 40));
        List<Product> lastfive = dao.getfiveLast();
        List<Product> on = dao.getone();
        List<Product> tw = dao.gettwo();
        List<Brand> listB =  data.getAllBrand();
        request.setAttribute("listP", list);
        request.setAttribute("firstHalf", firstHalf);
        request.setAttribute("secondHalf", secondHalf);
        request.setAttribute("five", lastfive);
        request.setAttribute("one", on);
        request.setAttribute("two", tw);
        request.setAttribute("listB", listB);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
