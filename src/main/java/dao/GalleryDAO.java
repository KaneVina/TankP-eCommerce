package dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import model.Gallery;
import utils.GenericDAO;

public class GalleryDAO extends GenericDAO<Gallery> {

    @Override
    public List<Gallery> findAll() {
        return queryGenericDAO(Gallery.class);
    }

    @Override
    public int insert(Gallery t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    // Hàm quan trọng: Lấy tất cả ảnh theo ID sản phẩm
    public List<Gallery> findByProductId(int productId) {
        String sql = "SELECT * FROM [gallery] WHERE [product_id] = ?";
        Map<String, Object> parameters = new LinkedHashMap<>();
        parameters.put("product_id", productId);
        return queryGenericDAO(Gallery.class, sql, parameters);
    }
}