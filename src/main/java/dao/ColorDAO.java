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

//    public Color findById(int id) {
    ////        String sql = "SELECT id, color, hexCode FROM [color] WHERE id = ?"; 
//        String sql = "SELECT id, [color], [hexCode] FROM [color] WHERE id = ?";
//        Map<String, Object> parameters = new LinkedHashMap<>();
//        parameters.put("id", id);
//        List<Color> result = queryGenericDAO(Color.class, sql, parameters);
//        return result.isEmpty() ? null : result.get(0);
//    }
    
    // dao/ColorDAO.java

    public Color findById(int id) {
        String sql = "SELECT id, LTRIM(RTRIM([color])) AS color, [hexCode] FROM [color] WHERE id = ?";
        Map<String, Object> parameters = new LinkedHashMap<>();
        parameters.put("id", id);
        List<Color> result = queryGenericDAO(Color.class, sql, parameters);
        return result.isEmpty() ? null : result.get(0);
    }

}
