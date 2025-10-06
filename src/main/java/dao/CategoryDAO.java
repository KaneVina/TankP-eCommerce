package dao;

import java.util.List;
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

}