package dao;

import java.util.List;
import java.util.LinkedHashMap;
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
        throw new UnsupportedOperationException("Not supported yet");
    }

    // Tìm Category theo ID
    public Category findById(Category category) {
        String sql = "SELECT [id], [name], [parentID] "
                + "FROM [dbo].[category] "
                + "WHERE id = ?";

        Map<String, Object> parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", category.getId());
        List<Category> list = queryGenericDAO(Category.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }
}
