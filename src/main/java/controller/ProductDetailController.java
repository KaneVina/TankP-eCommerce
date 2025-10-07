package controller;

import dao.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

public class ProductDetailController extends HttpServlet {

    // Khởi tạo đối tượng DAO để tương tác với cơ sở dữ liệu
    private final ProductDAO productDAO = new ProductDAO();

    // Khai báo hằng số cho đường dẫn trang lỗi và trang chi tiết sản phẩm
    private static final String ERROR_PAGE = "view/pages/errorPage.jsp";
    private static final String PRODUCT_DETAIL_PAGE = "view/pages/productDetail.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        // --- BỔ SUNG DEBUGGING START ---
        System.out.println("--- PRODUCT DETAIL DEBUG ---");
        System.out.println("DEBUG: Nhận tham số ID (idParam): " + idParam);
        // --- BỔ SUNG DEBUGGING END ---

        // 1. Xử lý lỗi: Thiếu tham số ID (HTTP 400 Bad Request)
        if (idParam == null || idParam.isEmpty()) {
            request.setAttribute("errorCode", 400);
            request.setAttribute("errorMessage", "Yêu cầu không hợp lệ. Thiếu tham số ID sản phẩm.");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
            return;
        }

        try {
            // Chuyển đổi ID từ String sang int.
            int id = Integer.parseInt(idParam);

            // Khởi tạo đối tượng Product với ID để tìm kiếm
            Product product = Product.builder()
                    .id(id)
                    .build();

            // Lấy sản phẩm từ cơ sở dữ liệu
            Product productFoundById = productDAO.findById(product);

            // 2. Xử lý lỗi: KHÔNG TÌM THẤY SẢN PHẨM (HTTP 404 Not Found)
            if (productFoundById == null) {
                request.setAttribute("errorCode", 404);
                request.setAttribute("errorMessage", "Không tìm thấy sản phẩm với ID: " + id + ".");
                request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
                return;
            }

            //  Product vào request scope và chuyển hướng
            request.setAttribute("product", productFoundById);
            request.getRequestDispatcher(PRODUCT_DETAIL_PAGE).forward(request, response);

        } catch (NumberFormatException e) {
            // 3. Xử lý lỗi: ID không phải là số nguyên (HTTP 400 Bad Request)
            System.err.println("NumberFormatException caught: Tham số ID không phải là số nguyên: " + idParam + ". Lỗi: " + e.getMessage()); // Ghi log lỗi

            request.setAttribute("errorCode", 400);
            request.setAttribute("errorMessage", "Tham số ID sản phẩm không hợp lệ (phải là số nguyên).");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
