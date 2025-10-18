package model;

public class Color {

    private int id;
    private String color; // Tên 5 màu
    private String hexCode; // Mã 5 màu

    public Color() {
    }

    public Color(int id, String color, String hexCode) {
        this.id = id;
        this.color = color != null ? color.trim() : null;
        this.hexCode = hexCode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color != null ? color.trim() : null; // Đã sửa
    }

    public String getHexCode() {
        return hexCode;
    }

    public void setHexCode(String hexCode) {
        this.hexCode = hexCode;
    }

    @Override
    public String toString() {
        return "Color{" + "id=" + id + ", color=" + color + ", hexCode=" + hexCode + '}';
    }
}
