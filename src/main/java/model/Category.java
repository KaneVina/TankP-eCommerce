package model;

public class Category {

    private int id;
    private String name;
    private Integer parent_id; 

    public Category() {
    }

    public Category(int id, String name, Integer parent_id) {
        this.id = id;
        this.name = name;
        this.parent_id = parent_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // HomeController gọi hàm này
    public Integer getParentID() {
        return parent_id;
    }

    public void setParentID(Integer parent_id) {
        this.parent_id = parent_id;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", name=" + name + ", parent_id=" + parent_id + '}';
    }
}