package dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import model.Size;
import utils.GenericDAO;

public class SizeDAO extends GenericDAO<Size> {

    @Override
    public List<Size> findAll() {
        return queryGenericDAO(Size.class);
    }

    @Override
    public int insert(Size t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    public Size findById(int id) {
        String sql = "SELECT * FROM [Size] WHERE id = ?";
        Map<String, Object> parameters = new LinkedHashMap<>();
        parameters.put("id", id);
        List<Size> result = queryGenericDAO(Size.class, sql, parameters);
        return result.isEmpty() ? null : result.get(0);
    }
}