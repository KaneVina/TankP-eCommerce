package model;

// Phải khớp với CSDL: Bảng [category] có cột [id], [name], [parent_id]
// Phải khớp với HomeController: đang dùng category.getParentID()
public class Category {

    private int id;
    private String name;
    private Integer parent_id; // Dùng Integer để có thể nhận giá trị NULL

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