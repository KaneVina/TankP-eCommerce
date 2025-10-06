package model;

public class Category {

    private int id;
    private String name;
    private Integer parentID;

    public Category() {
    }

    public Category(int id, String name, Integer parentID) {
        this.id = id;
        this.name = name;
        this.parentID = parentID;
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

    public Integer getParentID() {
        return parentID;
    }

    public void setParentID(Integer parentID) {
        this.parentID = parentID;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", name=" + name + ", parentID=" + parentID + '}';
    }
}
