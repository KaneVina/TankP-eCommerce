package model;

public class Product {

       private int id;
    private String name;
    private String image;       
    private int quantity;
    private double new_price;    
    private double old_price;    
    private String description;
    private int categoryId; 

    public Product() {
    }

    public Product(int id, String name, String image, int quantity, float new_price, float old_price, String description, int categoryId) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.quantity = quantity;
        this.new_price = new_price;
        this.old_price = old_price;
        this.description = description;
        this.categoryId = categoryId;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getNew_price() {
        return new_price;
    }

    public void setNew_price(float new_price) {
        this.new_price = new_price;
    }

    public double getOld_price() {
        return old_price;
    }

    public void setOld_price(float old_price) {
        this.old_price = old_price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", quantity=" + quantity + ", new_price=" + new_price + ", old_price=" + old_price + ", description=" + description + ", categoryId=" + categoryId + '}';
    }

    
}
