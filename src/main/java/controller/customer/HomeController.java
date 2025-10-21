package controller.customer;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Product;
import model.Category;
import dao.GalleryDAO;
import dao.ProductVariantDAO;
import dao.ColorDAO;
import dao.SizeDAO;
import model.Color;
import model.Gallery;
import model.ProductVariant;
import model.Size;

public class HomeController extends HttpServlet {

    private static final String HOME_PAGE = "view/pages/homePage.jsp";
    private static final String ERROR_PAGE = "view/pages/errorPage.jsp";

    // 1. KHAI BÁO DAO
    private ProductDAO productDAO;
    private CategoryDAO categoryDAO;
    private GalleryDAO galleryDAO;
    private ProductVariantDAO variantDAO;
    private ColorDAO colorDAO;
    private SizeDAO sizeDAO;
    
    // 2. INIT() ĐỂ KHỞI TẠO TÀI NGUYÊN (Giữ nguyên)
    @Override
    public void init() throws ServletException {
        System.out.println("HomeController - Bắt đầu khởi tạo DAO...");
        try {
            productDAO = new ProductDAO();
            categoryDAO = new CategoryDAO();
            galleryDAO = new GalleryDAO();
            variantDAO = new ProductVariantDAO();
            colorDAO = new ColorDAO();
            sizeDAO = new SizeDAO();
            System.out.println("HomeController - Khởi tạo DAO thành công.");
        } catch (Exception e) {
            System.err.println("LỖI KHỞI TẠO DAO TRONG INIT() NÈ");
            e.printStackTrace();
            throw new ServletException("Lỗi CSDL khi khởi tạo DAO. MỞ SQL CONNET LẠI DÙM.", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        try {
            // 1. Lấy list sản phẩm (đã áp dụng lọc/tìm kiếm) - (Giữ nguyên)
            List<Product> listProduct = findProductDoGet(request);

            // 2. TÍCH HỢP DỮ LIỆU PHỤ VÀO listProduct (Giữ nguyên)
            if (listProduct != null && !listProduct.isEmpty()) {
                for (Product p : listProduct) {
                    List<Gallery> galleries = galleryDAO.findByProductId(p.getId());
                    p.setGalleries(galleries);
                    List<ProductVariant> variants = variantDAO.findByProductId(p.getId());
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
                    p.setVariants(variants);
                }
            }

            // 3. Lấy list Category và phân loại (Giữ nguyên)
            List<Category> listCategory = categoryDAO.findAll();
            if (listCategory == null) {
                listCategory = new ArrayList<>();
            }
            List<Category> rootCategories = new ArrayList<>();
            List<Category> childCategories = new ArrayList<>();
            for (Category category : listCategory) {
                if (category.getParentID() == null || category.getParentID() == 0) {
                    rootCategories.add(category);
                } else {
                    childCategories.add(category);
                }
            }
            
            // 4. LẤY DANH SÁCH FEATURED PRODUCTS (MỚI THÊM)
            List<Product> listFeatured = productDAO.findFeaturedProducts();
            
            // Tải Gallery cho danh sách featured (vì sidebar JSP cần hiển thị ảnh)
            if (listFeatured != null && !listFeatured.isEmpty()) {
                for (Product fp : listFeatured) {
                    // Chỉ cần tải gallery, không cần variant/color/size cho sidebar
                    List<Gallery> galleries = galleryDAO.findByProductId(fp.getId());
                    fp.setGalleries(galleries);
                }
            }
            
            // 5. LẤY CÁC LIST DÙNG CHO BỘ LỌC SIDEBAR (MỚI THÊM)
            List<Color> listColor = colorDAO.findAll();
            List<Size> listSize = sizeDAO.findAll();


            // 6. Set các list vào Request Scope (Cập nhật)
            request.setAttribute("listProduct", listProduct);
            request.setAttribute("rootCategories", rootCategories);
            request.setAttribute("childCategories", childCategories);
            
            // MỚI THÊM:
            request.setAttribute("featuredProducts", listFeatured); 
            request.setAttribute("listColor", listColor);
            request.setAttribute("listSize", listSize);

            // 7. Forward sang trang JSP (Giữ nguyên)
            request.getRequestDispatcher(HOME_PAGE).forward(request, response);
            
        } catch (Exception e) {
            System.err.println(">>> SAI Ở HOME CONTROLLER <<<");
            e.printStackTrace();
            request.setAttribute("errorCode", 500);
            request.setAttribute("errorMessage", "Lỗi hệ thống khi tải trang chủ, Check Server Console.");
            request.getRequestDispatcher(ERROR_PAGE).forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private List<Product> findProductDoGet(HttpServletRequest request) {
        String actionSearch = request.getParameter("search") == null
                ? "default"
                : request.getParameter("search");
        List<Product> listProduct;
        
        switch (actionSearch) {
            case "category":
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