package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. GỌI HÀM LỌC: Lấy list sản phẩm đã được lọc/tìm kiếm
        List<Product> searchResultProduct = findProductDoGet(request);

        // Lấy kết quả tìm kiếm/lọc gán vào listProduct (KHÔNG KHAI BÁO LẠI)
        List<Product> listProduct = searchResultProduct;

        // 2. Lấy list Category
        List<Category> listCategory = categoryDAO.findAll();

        List<Category> rootCategories = new ArrayList<>(); // Danh mục cấp Cha
        List<Category> childCategories = new ArrayList<>(); // Danh mục cấp Con

        // tách danh sách
        for (Category category : listCategory) {
            // Đảm bảo getParentID() trả về Integer (đã kiểm tra trong Category.java)
            if (category.getParentID() == null || category.getParentID() == 0) {
                rootCategories.add(category);
            } else {
                childCategories.add(category);
            }
        }

        // 3. Lấy đối tượng Session
        HttpSession session = request.getSession();

        // 4. Set các list vào Session
        session.setAttribute("listProduct", listProduct);
        session.setAttribute("rootCategories", rootCategories);
        session.setAttribute("childCategories", childCategories);

        // 5. Forward sang trang JSP
        request.getRequestDispatcher("view/pages/homePage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Giữ nguyên logic cũ
        // processRequest(request, response); 
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

    private List<Product> findProductDoGet(HttpServletRequest request) {
        //get ve search
        String actionSearch = request.getParameter("search") == null
                ? "default"
                : request.getParameter("search");

        //get list product dao
        List<Product> listProduct;
        switch (actionSearch) {
            case "category":
                // Fix Lỗi CÚ PHÁP: Bỏ "name:"
                String categoryId = request.getParameter("categoryId");
                listProduct = productDAO.findByCategory(categoryId);
                break;
            case "searchByName":
                String keyword = request.getParameter("keyword");
                listProduct = productDAO.findByName(keyword);
                break;

            default:
                listProduct = productDAO.findAll();
        }
        return listProduct;
    }
}
