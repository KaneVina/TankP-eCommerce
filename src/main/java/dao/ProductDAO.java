package dao;

import java.util.List;
import java.util.Map;
import java.util.LinkedHashMap;
import model.Product;
import utils.GenericDAO;

public class ProductDAO extends GenericDAO<Product> {

    @Override
    public List<Product> findAll() {
        return queryGenericDAO(Product.class);
    }

    @Override
    public int insert(Product t) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    // Phương thức findById đã sửa lỗi cú pháp
    public Product findById(Product product) {

        String sql = "SELECT [id]"
                + " , [name]"
                + " , [image]"
                + " , [quantity]"
                // SỬA LỖI QUAN TRỌNG: Đảm bảo tên cột khớp với Model
                + " , [new_price]" // Lấy new_price (không phải price)
                + " , [old_price]" // Thêm old_price
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
}
