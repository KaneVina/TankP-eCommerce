package dao;

import java.util.List;
import java.util.Map;
import java.util.LinkedHashMap;
import model.Product;
import utils.GenericDAO;
import java.util.ArrayList;

public class ProductDAO extends GenericDAO<Product> {

    @Override
    public List<Product> findAll() {
        String sql = "SELECT [id], [name], "
                + "[newPrice], "
                + "[oldPrice], "
                + "[description], [category_id], " // <-- SỬA LỖI: THÊM DẤU PHẨY Ở ĐÂY
                + "[isFeatured] "
                + "FROM [dbo].[Product]";

        return queryGenericDAO(Product.class, sql, null);
    }

    @Override
    public int insert(Product t) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    // Hàm này của bạn đã ĐÚNG (vì có dấu phẩy)
    public Product findById(Product product) {
        String sql = "SELECT [id]"
                + " , [name]"
                + " , [newPrice]"
                + " , [oldPrice]"
                + " , [description]"
                + " , [category_id]"
                + " , [isFeatured]" // <-- ĐÃ CÓ DẤU PHẨY (ĐÚNG)
                + " FROM [dbo].[Product]"
                + " WHERE id = ?";

        Map<String, Object> parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());
        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    public List<Product> findByCategory(String categoryIdString) {
        String sql = "SELECT [id], [name], "
                + "[newPrice], "
                + "[oldPrice], "
                + "[description], [category_id], " // <-- SỬA LỖI: THÊM DẤU PHẨY Ở ĐÂY
                + "[isFeatured] "
                + "FROM [dbo].[Product] "
                + "WHERE [category_id] = ?";

        Map<String, Object> parameterMap = new LinkedHashMap<>();
        try {
            int categoryId = Integer.parseInt(categoryIdString);
            parameterMap.put("category_id", categoryId);
        } catch (NumberFormatException e) {
            return new ArrayList<>();
        }

        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        return list;
    }

    public List<Product> findByName(String keyword) {
        String sql = "SELECT [id], [name], "
                + "[newPrice], "
                + "[oldPrice], "
                + "[description], [category_id], " // <-- SỬA LỖI: THÊM DẤU PHẨY Ở ĐÂY
                + "[isFeatured] "
                + "FROM [dbo].[product] "
                + "where [name] like ?";

        Map<String, Object> parameterMap = new LinkedHashMap<>();
        parameterMap.put("keyword", "%" + keyword + "%");
        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        return list;
    }

    // Hàm này của bạn đã ĐÚNG (vì có dấu phẩy)
    public List<Product> findFeaturedProducts() {
        String sql = "SELECT [id], [name], "
                + "[newPrice], "
                + "[oldPrice], "
                + "[description], [category_id], " 
                + "[isFeatured] "
                + "FROM [dbo].[Product] "
                + "WHERE [isFeatured] = 1"; 

        return queryGenericDAO(Product.class, sql, null);
    }
}