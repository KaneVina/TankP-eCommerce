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
        return queryGenericDAO(Product.class);
    }

    @Override
    public int insert(Product t) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public Product findById(Product product) {

        String sql = "SELECT [id]"
                + " , [name]"
                + " , [image]"
                + " , [quantity]"
                + " , [new_price]"
                + " , [old_price]"
                + " , [description]"
                + " , [categoryId]"
                + " FROM [dbo].[Product]"
                + " WHERE id = ?";

        // Khởi tạo HashMap
        Map<String, Object> parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());

        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);

        return list.isEmpty() ? null : list.get(0);
    }

    public List<Product> findByCategory(String categoryIdString) {

        // 1. Khai báo câu lệnh SQL (chỉ lấy sản phẩm có categoryId khớp)
        String sql = "SELECT [id], [name], [image], [quantity], [new_price], [old_price], [description], [categoryId] "
                + "FROM [dbo].[Product] "
                + "WHERE [categoryId] = ?";

        // 2. Chuẩn bị tham số truy vấn
        Map<String, Object> parameterMap = new LinkedHashMap<>();

        // 3. Xử lý chuyển đổi String sang số (nếu ID trong DB là số)
        try {
            int categoryId = Integer.parseInt(categoryIdString);
            parameterMap.put("categoryId", categoryId);
        } catch (NumberFormatException e) {
            return new ArrayList<>();
        }

        // 4. Gọi phương thức truy vấn chung
        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        return list;
    }
}
