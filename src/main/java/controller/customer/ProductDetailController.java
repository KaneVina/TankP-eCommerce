package controller.customer;

import dao.ProductDAO;
import dao.CategoryDAO;
import dao.GalleryDAO;
import dao.ProductVariantDAO;
import dao.ColorDAO;
import dao.SizeDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import model.Category;
import model.Gallery;
import model.ProductVariant;
import model.Color; 
import model.Size;  
public class ProductDetailController extends HttpServlet {

    private ProductDAO productDAO;
    private CategoryDAO categoryDAO;
    private GalleryDAO galleryDAO;
    private ProductVariantDAO productVariantDAO;
    private ColorDAO colorDAO; 
    private SizeDAO sizeDAO;   

    private static final String ERROR_PAGE = "view/pages/errorPage.jsp";
    private static final String PRODUCT_DETAIL_PAGE = "view/pages/productDetail.jsp";

    @Override
    public void init() throws ServletException {
        productDAO = new ProductDAO();
        categoryDAO = new CategoryDAO();
        galleryDAO = new GalleryDAO();
        productVariantDAO = new ProductVariantDAO();
        colorDAO = new ColorDAO();
        sizeDAO = new SizeDAO();
    }

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
            Product productFound = productDAO.findById(tempProduct);

            // 2.1. Xử lý lỗi: Không tìm thấy sản phẩm
            if (productFound == null) {
                request.setAttribute("errorCode", 404);
                request.setAttribute("errorMessage", "Không tìm thấy sản phẩm có ID: " + productId);
                request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
                return;
            }

            // 3. Tích hợp Gallery (Ảnh)
            List<Gallery> galleries = galleryDAO.findByProductId(productId);
            productFound.setGalleries(galleries);

            // 4. Tích hợp ProductVariant (Biến thể)
            List<ProductVariant> variants = productVariantDAO.findByProductId(productId);
            if (variants != null && !variants.isEmpty()) {
                for (ProductVariant v : variants) {
                    // Tích hợp Color
                    if (v.getColor_id() > 0) {
                        Color colorFound = colorDAO.findById(v.getColor_id());
                        if (colorFound != null) {
                            v.setColor(colorFound);
                        }
                    }
                    // Tích hợp Size
                    if (v.getSize_id() > 0) {
                        Size sizeFound = sizeDAO.findById(v.getSize_id());
                        if (sizeFound != null) {
                            v.setSize(sizeFound);
                        }
                    }
                }
            }
            // Gán danh sách variants (đã có color/size) vào sản phẩm
            productFound.setVariants(variants);

            // 5. Tích hợp Category
            Category categoryFound = null;
            if (productFound.getCategory_id() != 0) {
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
            e.printStackTrace(); 
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}