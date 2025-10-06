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
                + " , [price]"
                + " , [description]"
                + " , [categoryId]"
                + " FROM [dbo].[Product]"
                + " WHERE id = ?";

        // Khởi tạo HashMap
        Map<String, Object> parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());

        // Thực hiện truy vấn: SỬA LỖI CÚ PHÁP GỌI PHƯƠNG THỨC
        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);

        // Logic kiểm tra và trả về: SỬA LỖI CÚ PHÁP list.get()
        return list.isEmpty() ? null : list.get(0);
    }
}
