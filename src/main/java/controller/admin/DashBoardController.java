package controller.admin;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;
import dao.GalleryDAO;
import dao.ProductVariantDAO;
import dao.ColorDAO;
import dao.SizeDAO;
import model.Color;
import model.Gallery;
import model.ProductVariant;
import model.Size;

// 1. Thêm import cho WebServlet
import jakarta.servlet.annotation.WebServlet;

// 2. Thêm Annotation để bắt tất cả URL /dashboard/*
@WebServlet(name = "DashBoardController", urlPatterns = {"/dashboard/*"})
public class DashBoardController extends HttpServlet {

    @Override
    public void init() throws ServletException {
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 3. Lấy phần đường dẫn con (ví dụ: /product, /order)
        String path = request.getPathInfo();

        
        if (path == null || path.equals("/")) {
            // Hiển thị trang dashboard chính
            request.getRequestDispatcher("/view/admin/dashboard.jsp").forward(request, response);
        } else {
            // 5. Điều hướng dựa trên đường dẫn con
            switch (path) {
                case "/product":
                    
                    // Chuyển hướng đến trang quản lý sản phẩm
                    request.getRequestDispatcher("/view/admin/product-management.jsp").forward(request, response);
                    break;
                
                case "/order":
                    // TODO: Thêm logic lấy danh sách đơn hàng từ DAO tại đây
                    
                    // Chuyển hướng đến trang quản lý đơn hàng
                    request.getRequestDispatcher("/view/admin/order-management.jsp").forward(request, response);
                    break;
                    
                case "/account":
                    // TODO: Thêm logic lấy danh sách tài khoản từ DAO tại đây
                    
                    // Chuyển hướng đến trang quản lý tài khoản
                    request.getRequestDispatcher("/view/admin/account-management.jsp").forward(request, response);
                    break;
                    
                default:
                    // Nếu không khớp, quay về trang dashboard chính
                    response.sendRedirect(request.getContextPath() + "/dashboard");
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}