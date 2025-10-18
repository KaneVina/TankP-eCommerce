package model;

public class ProductVariant {
    
    private int id;
    private int product_id;
    private int color_id;
    private int size_id;
    private int quantityInStock;
    
    // Các trường tích hợp (không có trong CSDL, dùng để chứa data)
    private transient Color color; 
    private transient Size size;   
//    Thêm transient để enericDAO.java nó nhận diện và bỏ qua các trường đã được đánh dấu là transient trong quá trình ánh xạ.

    public ProductVariant() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getColor_id() {
        return color_id;
    }

    public void setColor_id(int color_id) {
        this.color_id = color_id;
    }

    public int getSize_id() {
        return size_id;
    }

    public void setSize_id(int size_id) {
        this.size_id = size_id;
    }

    public int getQuantityInStock() {
        return quantityInStock;
    }

    public void setQuantityInStock(int quantityInStock) {
        this.quantityInStock = quantityInStock;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }
}