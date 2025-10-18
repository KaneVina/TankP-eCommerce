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
                + "[description], [category_id] "
                + "FROM [dbo].[Product]";
        
        return queryGenericDAO(Product.class, sql, null); 
    }

    @Override
    public int insert(Product t) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public Product findById(Product product) {
        // SỬA: Bỏ image, quantity. Dùng đúng tên cột newPrice, oldPrice.
        String sql = "SELECT [id]"
                + " , [name]"
                + " , [newPrice]"
                + " , [oldPrice]"
                + " , [description]"
                + " , [category_id]"
                + " FROM [dbo].[Product]"
                + " WHERE id = ?";

        Map<String, Object> parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());

        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);

        return list.isEmpty() ? null : list.get(0);
    }

    public List<Product> findByCategory(String categoryIdString) {
        // SỬA: Bỏ image, quantity. Dùng đúng tên cột newPrice, oldPrice.
        String sql = "SELECT [id], [name], "
                + "[newPrice], "
                + "[oldPrice], "
                + "[description], [category_id] "
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
                + "[description], [category_id] "
                + "FROM [dbo].[product] " 
                + "where [name] like ?";
        
        Map<String, Object> parameterMap = new LinkedHashMap<>();
        parameterMap.put("keyword", "%" + keyword + "%");

        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        return list;
    }
}