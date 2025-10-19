package dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import model.Category;
import utils.GenericDAO;

public class CategoryDAO extends GenericDAO<Category> {

    @Override
    public List<Category> findAll() {
        return queryGenericDAO(Category.class);
    }

    @Override
    public int insert(Category t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    public Category findById(int id) {
        String sql = "SELECT * FROM [Category] WHERE id = ?";
        Map<String, Object> parameters = new LinkedHashMap<>();
        parameters.put("id", id);
        List<Category> result = queryGenericDAO(Category.class, sql, parameters);
        return result.isEmpty() ? null : result.get(0);
    }
}