package model;

import java.util.List;

public class Product {

    private int id;
    private String name;
    private double newPrice;
    private double oldPrice;
    private String description;
    private int category_id;
    private transient List<Gallery> galleries;
    private transient List<ProductVariant> variants;

    public Product() {
    }

    public Product(int id, String name, double newPrice, double oldPrice, String description, int category_id) {
        this.id = id;
        this.name = name;
        this.newPrice = newPrice;
        this.oldPrice = oldPrice;
        this.description = description;
        this.category_id = category_id;
    }
    
    private Product(ProductBuilder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.newPrice = builder.newPrice;
        this.oldPrice = builder.oldPrice;
        this.description = builder.description;
        this.category_id = builder.category_id;
        
        this.galleries = builder.galleries;
        this.variants = builder.variants;
    }

    public static ProductBuilder builder() {
        return new ProductBuilder();
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
    
    public double getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(double newPrice) {
        this.newPrice = newPrice;
    }

    public double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }
    
    public List<Gallery> getGalleries() {
        return galleries;
    }

    public void setGalleries(List<Gallery> galleries) {
        this.galleries = galleries;
    }

    public List<ProductVariant> getVariants() {
        return variants;
    }

    public void setVariants(List<ProductVariant> variants) {
        this.variants = variants;
    }
    
//    Khi không có anhr sẽ trả về ảnh này
    public String getThumbnail() {
        if (galleries != null && !galleries.isEmpty()) {
            return galleries.get(0).getImageUrl();
        }
        return "no-image.png"; 
    }
    
    public int getTotalStockQuantity() {
        int total = 0;
        if (variants != null) {
            for (ProductVariant variant : variants) {
                total += variant.getQuantityInStock();
            }
        }
        return total;
    }


    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", newPrice=" + newPrice + ", oldPrice=" + oldPrice + ", description=" + description + ", category_id=" + category_id + ", galleries=" + galleries + ", variants=" + variants + '}';
    }
    
    public static class ProductBuilder {
        private int id;
        private String name;
        
        
        private double newPrice;
        private double oldPrice;
        private String description;
        private int category_id;
        
        private List<Gallery> galleries;
        private List<ProductVariant> variants;

        
        public ProductBuilder id(int id) {
            this.id = id;
            return this;
        }

        public ProductBuilder name(String name) {
            this.name = name;
            return this;
        }
        
        
        public ProductBuilder newPrice(double newPrice) {
            this.newPrice = newPrice;
            return this;
        }
        
        public ProductBuilder oldPrice(double oldPrice) {
            this.oldPrice = oldPrice;
            return this;
        }
        
        public ProductBuilder description(String description) {
            this.description = description;
            return this;
        }
        
        public ProductBuilder category_id(int category_id) {
            this.category_id = category_id;
            return this;
        }
        
        public ProductBuilder galleries(List<Gallery> galleries) {
            this.galleries = galleries;
            return this;
        }

        public ProductBuilder variants(List<ProductVariant> variants) {
            this.variants = variants;
            return this;
        }

        public Product build() {
            return new Product(this);
        }
    }
}