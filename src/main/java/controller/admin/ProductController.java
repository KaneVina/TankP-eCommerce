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

public class ProductController extends HttpServlet {
    private ProductDAO productDAO;
    private CategoryDAO categoryDAO;
    private GalleryDAO galleryDAO;
    private ProductVariantDAO variantDAO;
    private ColorDAO colorDAO;
    private SizeDAO sizeDAO;

    // Dùng init() để khởi tạo DAO (cách làm tốt nhất)
    @Override
    public void init() throws ServletException {
        try {
            // Đảm bảo tên hiển thị trong log khớp với Controller hiện tại
            productDAO = new ProductDAO();
            categoryDAO = new CategoryDAO();
            galleryDAO = new GalleryDAO();
            variantDAO = new ProductVariantDAO();
            colorDAO = new ColorDAO();
            sizeDAO = new SizeDAO();
            System.out.println(">>> ProductController - Khởi tạo DAO thành công.");
        } catch (Exception e) {
            System.err.println("LỖI KHỞI TẠO DAO TRONG ProductController");
            e.printStackTrace();
            throw new ServletException("Lỗi CSDL khi khởi tạo DAO trong ProductController.", e);
        }
    }

    /**
     * Tải dữ liệu cơ bản cần thiết cho trang Quản lý Sản phẩm (danh sách SP, Category, Color, Size).
     * @param request HttpServletRequest
     * @throws Exception 
     */
    private void loadBaseProductData(HttpServletRequest request) throws Exception {
        // 1. Tải danh sách sản phẩm chính
        List<Product> listProduct = productDAO.findAll();

        // 2. Tải danh sách Categories, Colors, Sizes (cho bộ lọc/modal)
        List<Category> listCategory = categoryDAO.findAll();
        List<Color> listColor = colorDAO.findAll();
        List<Size> listSize = sizeDAO.findAll();

        // 3. Tải dữ liệu con (Ảnh, Biến thể) cho mỗi sản phẩm
        if (listProduct != null && !listProduct.isEmpty()) {
            for (Product p : listProduct) {
                // Tải ảnh (dùng trong modal chi tiết hoặc hiển thị ảnh chính)
                List<Gallery> galleries = galleryDAO.findByProductId(p.getId());
                p.setGalleries(galleries);

                // Tải các biến thể (để tính tổng tồn kho và chi tiết)
                List<ProductVariant> variants = variantDAO.findByProductId(p.getId());
                p.setVariants(variants);
            }
        }

        // 4. Đặt dữ liệu vào REQUEST
        request.setAttribute("listProduct", listProduct);
        request.setAttribute("listCategory", listCategory);
        request.setAttribute("listColor", listColor);
        request.setAttribute("listSize", listSize);
    }
    
    /**
     * Handles the HTTP <code>GET</code> method.
     * Tối ưu: Phân tách logic dựa trên URL pathInfo
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy thông tin đường dẫn sau /dashboard/product (ví dụ: /add, /edit)
        String pathInfo = request.getPathInfo(); 

        try {
            if (pathInfo == null || pathInfo.equals("/")) {
                // Xử lý khi URL là: /dashboard/product HOẶC /dashboard/product/
                
                // Tải tất cả dữ liệu cần thiết cho trang danh sách
                loadBaseProductData(request); 
                
                // Chuyển hướng sang trang quản lý danh sách
                request.getRequestDispatcher("/view/admin/productManagement.jsp").forward(request, response);
                
            } else if (pathInfo.startsWith("/add")) {
                // Xử lý khi URL là: /dashboard/product/add
                handleProductAddGet(request, response);
                
            } else if (pathInfo.startsWith("/edit")) {
                // Xử lý khi URL là: /dashboard/product/edit
                handleProductEditGet(request, response);
                
            } else {
                // URL không hợp lệ
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Đường dẫn quản lý sản phẩm không hợp lệ.");
            }

        } catch (Exception e) {
            System.err.println("LỖI XỬ LÝ GET TRONG ProductController: " + e.getMessage());
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Không thể xử lý yêu cầu quản lý sản phẩm.");
        }
    }
    
    private void handleProductAddGet(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        request.setAttribute("listCategory", categoryDAO.findAll());
        request.setAttribute("listColor", colorDAO.findAll());
        request.setAttribute("listSize", sizeDAO.findAll());
        
        request.getRequestDispatcher("/view/admin/addProductForm.jsp").forward(request, response);
    }

    // Phương thức giả định (Cần được cài đặt logic)
    private void handleProductEditGet(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        
        request.getRequestDispatcher("/view/admin/editProductForm.jsp").forward(request, response);
    }


    /**
     * Handles the HTTP <code>POST</code> method.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String pathInfo = request.getPathInfo();
        
        try {
            if (pathInfo == null || pathInfo.equals("/")) {
                doGet(request, response); 
            } else if (pathInfo.startsWith("/add")) {
                handleProductAddPost(request, response);
            } else if (pathInfo.startsWith("/update")) {
                handleProductUpdatePost(request, response);
            } else if (pathInfo.startsWith("/delete")) {
                handleProductDeletePost(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Đường dẫn POST không hợp lệ.");
            }
        } catch (Exception e) {
            System.err.println("LỖI XỬ LÝ POST TRONG ProductController: " + e.getMessage());
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi xử lý POST quản lý sản phẩm.");
        }
    }
    
    // Phương thức giả định (Cần được cài đặt logic)
    private void handleProductAddPost(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        // ... logic nhận parameter, validation, gọi productDAO.save() ...
        response.sendRedirect(request.getContextPath() + "/dashboard/product?success=add"); 
    }
    
    // Phương thức giả định (Cần được cài đặt logic)
    private void handleProductUpdatePost(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        // ... logic nhận parameter, validation, gọi productDAO.update() ...
        response.sendRedirect(request.getContextPath() + "/dashboard/product?success=update");
    }
    
    // Phương thức giả định (Cần được cài đặt logic)
    private void handleProductDeletePost(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        response.sendRedirect(request.getContextPath() + "/dashboard/product?success=delete");
    }
}