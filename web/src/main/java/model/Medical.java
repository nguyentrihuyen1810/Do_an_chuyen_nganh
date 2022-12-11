package model;

public class Medical {
    private String code;
    private String name;
    private int price;
    private String description;
    private String image;
    private String producer;
    private String trade_mark;
    private String warranty_period;
    private String expiry;
    private String origin;
    private String mass;
    private String size;
    private String volume;
    private int category_id;
//    private String category_name;

    public Medical() {
    }

    public Medical(String code, String name, int price, String image, String description, String producer,
                   String trade_mark, String warranty_period, String expiry, String origin, String mass, String size, String volume, int category_id) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.description = description;
        this.image = image;
        this.producer = producer;
        this.trade_mark = trade_mark;
        this.warranty_period = warranty_period;
        this.expiry = expiry;
        this.origin = origin;
        this.mass = mass;
        this.size = size;
        this.volume = volume;
        this.category_id = category_id;
//        this.category_name = category_name;
    }
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public String getImage() {return image;}

    public void setImage(String image) {this.image = image;}

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
    public String getTrade_mark() {
        return trade_mark;
    }

    public void setTrade_mark(String tradeMark) {
        this.trade_mark = trade_mark;
    }
    public String getWarranty_period() {
        return warranty_period;
    }

    public void setWarranty_period(String warrantyPeriod) {
        this.warranty_period = warranty_period;
    }
    public String getExpiry() {
        return expiry;
    }

    public void setExpiry(String expiry) {
        this.expiry = expiry;
    }
    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }
    public String getMass() {
        return mass;
    }

    public void setMass(String mass) {
        this.mass = mass;
    }
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
    public String getVolume() {
        return volume;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }
    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int categoryId) {
        this.category_id = category_id;
    }

//    public String getCategory_name() {
//        return category_name;
//    }
//    public void setCategory_name(String categoryName) {
//        this.category_name = category_name;
//    }
}
