package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Product;
import model.Category;

public class HomeController extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    CategoryDAO categoryDAO = new CategoryDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Lấy list toàn bộ sản phẩm và danh mục
        List<Product> listProduct = productDAO.findAll();
        List<Category> listCategory = categoryDAO.findAll();

        List<Category> rootCategories = new ArrayList<>(); // Danh mục cấp Cha
        List<Category> childCategories = new ArrayList<>(); // Danh mục cấp Con

        // tách danh sách
        for (Category category : listCategory) {
            if (category.getParentID() == null || category.getParentID() == 0) {
                rootCategories.add(category);
            } else {
                childCategories.add(category);
            }
        }

        // 2. Lấy đối tượng Session
        HttpSession session = request.getSession();

        // 3. Set hai list vào Session
        session.setAttribute("listProduct", listProduct);
        session.setAttribute("rootCategories", rootCategories);
        session.setAttribute("childCategories", childCategories);

        // 4. Forward sang trang JSP
        request.getRequestDispatcher("view/pages/homePage.jsp").forward(request, response);
    }

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
    }
}
