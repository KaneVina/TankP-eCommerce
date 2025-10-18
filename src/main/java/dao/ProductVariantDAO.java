package dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import model.ProductVariant;
import utils.GenericDAO;

public class ProductVariantDAO extends GenericDAO<ProductVariant> {

    @Override
    public List<ProductVariant> findAll() {
        return queryGenericDAO(ProductVariant.class);
    }

    @Override
    public int insert(ProductVariant t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    // Hàm quan trọng: Lấy tất cả biến thể theo ID sản phẩm
    public List<ProductVariant> findByProductId(int productId) {
        String sql = "SELECT * FROM [ProductVariant] WHERE [product_id] = ?";
        Map<String, Object> parameters = new LinkedHashMap<>();
        parameters.put("product_id", productId);
        return queryGenericDAO(ProductVariant.class, sql, parameters);
    }
}