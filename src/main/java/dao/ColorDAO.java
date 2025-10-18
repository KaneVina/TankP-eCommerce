package dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import model.Color;
import utils.GenericDAO;

public class ColorDAO extends GenericDAO<Color> {

    @Override
    public List<Color> findAll() {
        return queryGenericDAO(Color.class);
    }

    @Override
    public int insert(Color t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    public Color findById(int id) {
        String sql = "SELECT * FROM [Color] WHERE id = ?";
        Map<String, Object> parameters = new LinkedHashMap<>();
        parameters.put("id", id);
        List<Color> result = queryGenericDAO(Color.class, sql, parameters);
        return result.isEmpty() ? null : result.get(0);
    }
}