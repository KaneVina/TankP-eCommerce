package controller;

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
    
    // 2. INIT() ĐỂ KHỞI TẠO TÀI NGUYÊN
    @Override
    public void init() throws ServletException {
        System.out.println(">>> HomeController - Bắt đầu khởi tạo DAO...");
        try {
            productDAO = new ProductDAO();
            categoryDAO = new CategoryDAO();
            galleryDAO = new GalleryDAO();
            variantDAO = new ProductVariantDAO();
            colorDAO = new ColorDAO();
            sizeDAO = new SizeDAO();
            System.out.println(">>> HomeController - Khởi tạo DAO thành công.");
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
            // 1. Lấy list sản phẩm (đã áp dụng lọc/tìm kiếm)
            List<Product> listProduct = findProductDoGet(request);

            // 2. TÍCH HỢP DỮ LIỆU PHỤ VÀO listProduct
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

            // 3. Lấy list Category và phân loại
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

            // 4. Set các list vào Request Scope
            request.setAttribute("listProduct", listProduct);
            request.setAttribute("rootCategories", rootCategories);
            request.setAttribute("childCategories", childCategories);

            // 5. Forward sang trang JSP
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