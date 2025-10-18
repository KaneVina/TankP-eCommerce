package controller;

import dao.ProductDAO;
import dao.CategoryDAO;
import dao.GalleryDAO; // THÊM
import dao.ProductVariantDAO; // THÊM
import dao.ColorDAO; // THÊM
import dao.SizeDAO; // THÊM
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import model.Category;
import model.Gallery; // THÊM
import model.ProductVariant; // THÊM

public class ProductDetailController extends HttpServlet {

    // Khởi tạo đối tượng DAO để tương tác với cơ sở dữ liệu
    private final ProductDAO productDAO = new ProductDAO();
    private final CategoryDAO categoryDAO = new CategoryDAO();
    private final GalleryDAO galleryDAO = new GalleryDAO(); // KHAI BÁO MỚI
    private final ProductVariantDAO productVariantDAO = new ProductVariantDAO(); // KHAI BÁO MỚI
    // Lưu ý: Không cần khai báo ColorDAO và SizeDAO ở đây, vì việc tích hợp Color/Size
    // nên được xử lý trong ProductVariantDAO hoặc DAO service (Nếu có). 
    // Tuy nhiên, để tuân thủ cấu trúc, ta sẽ load thủ công trong Controller.

    // Khai báo hằng số cho đường dẫn trang lỗi và trang chi tiết sản phẩm
    private static final String ERROR_PAGE = "view/pages/errorPage.jsp";
    private static final String PRODUCT_DETAIL_PAGE = "view/pages/productDetail.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");
        int productId;

        // 1. Xử lý lỗi: Thiếu tham số ID
        if (idParam == null || idParam.isEmpty()) {
            request.setAttribute("errorCode", 400);
            request.setAttribute("errorMessage", "Yêu cầu không hợp lệ. Thiếu tham số ID sản phẩm.");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
            return;
        }

        try {
            // Chuyển đổi ID sang số nguyên
            productId = Integer.parseInt(idParam);

            // 2. Tìm Product cơ bản
            Product tempProduct = new Product();
            tempProduct.setId(productId);
            // Phương thức findById(Product) trong ProductDAO
            Product productFound = productDAO.findById(tempProduct);

            // 2.1. Xử lý lỗi: Không tìm thấy sản phẩm
            if (productFound == null) {
                request.setAttribute("errorCode", 404);
                request.setAttribute("errorMessage", "Không tìm thấy sản phẩm có ID: " + productId);
                request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
                return;
            }

            // 3. Tích hợp Gallery (Ảnh)
            // findByProductId(int) trong GalleryDAO
            List<Gallery> galleries = galleryDAO.findByProductId(productId);
            productFound.setGalleries(galleries);

            // 4. Tích hợp ProductVariant (Biến thể)
            // findByProductId(int) trong ProductVariantDAO
            List<ProductVariant> variants = productVariantDAO.findByProductId(productId);
            
            // Lưu ý: Các biến thể (variants) đã được tích hợp sẵn Color và Size
            // trong ProductVariantDAO.findByProductId, nếu DAO này đã được viết đúng.
            // Nếu chưa, cần phải dùng ColorDAO và SizeDAO để load Color/Size cho từng Variant.
            
            productFound.setVariants(variants);


            // 5. Tích hợp Category
            Category categoryFound = null;
            if (productFound.getCategory_id() != 0) { // Sử dụng getCategory_id() từ Product.java
                // Sử dụng phương thức findById(int id) trong CategoryDAO
                categoryFound = categoryDAO.findById(productFound.getCategory_id());
            }

            // 6. Thành công: Đặt đối tượng Product và Category vào request scope
            request.setAttribute("product", productFound);
            request.setAttribute("category", categoryFound); 

            request.getRequestDispatcher(PRODUCT_DETAIL_PAGE).forward(request, response);

        } catch (NumberFormatException e) {
            // 7. Xử lý lỗi: ID không phải là số nguyên (HTTP 400 Bad Request)
            request.setAttribute("errorCode", 400);
            request.setAttribute("errorMessage", "Tham số ID sản phẩm không hợp lệ (phải là số nguyên).");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        } catch (Exception e) {
             // 8. Xử lý lỗi chung (Ví dụ: Lỗi DB)
            request.setAttribute("errorCode", 500);
            request.setAttribute("errorMessage", "Lỗi xử lý hệ thống khi lấy chi tiết sản phẩm: " + e.getMessage());
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}