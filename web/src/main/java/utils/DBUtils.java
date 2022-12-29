package utils;

import com.mysql.cj.jdbc.ConnectionImpl;
import model.Cart;
import model.Medical;
import model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils {

    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public DBUtils(Connection con) {
        super();
        this.con = con;
    }

//    public static Account findUser(Connection conn, String username, String password) throws SQLException {
//        String sql = "select * from `account` where username = ? and `password` = ?";
//        PreparedStatement pstm = conn.prepareStatement(sql);
//        pstm.setString(1, username);
//        pstm.setString(2, password);
//        ResultSet rs = pstm.executeQuery();
//        if (rs.next()) {
//            Account user = new Account();
//            user.setUsername(username);
//            user.setPassword(password);
//            return user;
//        }
//        return null;
//    }

    public static Account findUser(Connection conn, String userName) throws SQLException {
        String sql = "select a.username, a.password from account a where a.username = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            String password = rs.getString("Password");
            Account user = new Account();
            user.setUsername(userName);
            user.setPassword(password);
            return user;
        }
        return null;
    }

    public static List<Medical> queryProduct(Connection conn) throws SQLException {
        String sql = "select * from product p join category c on c.category_id = p.category_id";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Medical> list = new ArrayList<Medical>();
        while (rs.next()) {
            String code = rs.getString("code");
            String name = rs.getString("name");
            int price = rs.getInt("price");
            String description = rs.getString("description");
            String image = rs.getString("image");
            String producer = rs.getString("producer");
            String trade_mark = rs.getString("trade_mark");
            String warranty_period = rs.getString("warranty_period");
            String expiry = rs.getString("expiry");
            String origin = rs.getString("origin");
            String mass = rs.getString("mass");
            String size = rs.getString("size");
            String volume = rs.getString("volume");
            int category_id = rs.getInt("category_id");
//            String category_name = rs.getString("category_name");
            Medical medical = new Medical();
            medical.setCode(code); medical.setName(name); medical.setPrice(price); medical.setDescription(description);
            medical.setImage(image); medical.setProducer(producer); medical.setTrade_mark(trade_mark); medical.setWarranty_period(warranty_period);
            medical.setExpiry(expiry); medical.setOrigin(origin); medical.setMass(mass); medical.setSize(size); medical.setVolume(volume);
            medical.setCategory_id(category_id);
            list.add(medical);
        }
        return list;
    }

    public static Medical findProduct(Connection conn, String code) throws SQLException {
        String sql = "Select * from product where code=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, code);

        ResultSet rs = pstm.executeQuery();

        while (rs.next()) {
            String name = rs.getString("name");
            int price = rs.getInt("price");
            String description = rs.getString("description");
            String image = rs.getString("image");
            String producer = rs.getString("producer");
            String trade_mark = rs.getString("trade_mark");
            String warranty_period = rs.getString("warranty_period");
            String expiry = rs.getString("expiry");
            String origin = rs.getString("origin");
            String mass = rs.getString("mass");
            String size = rs.getString("size");
            String volume = rs.getString("volume");
            int category_id = rs.getInt("category_id");
//            String category_name = rs.getString("category_name");
            Medical medical = new Medical(code, name, price, description, image, producer, trade_mark, warranty_period, expiry, origin, mass, size, volume, category_id);
            return medical;
        }
        return null;
    }

    public static void updateProduct(Connection conn, Medical product) throws SQLException {
        String sql = "update product set `name` = ?, price = ?, `description` = ?, image = ?, producer = ?, trade_mark = ?, \n" +
                "warranty_period = ?, expiry = ?, origin = ?, mass = ?, size = ?, volume = ?, category_id = ? where code = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, product.getName());
        pstm.setInt(2, product.getPrice());
        pstm.setString(4, product.getDescription());
        pstm.setString(3, product.getImage());
        pstm.setString(5, product.getProducer());
        pstm.setString(6, product.getTrade_mark());
        pstm.setString(7, product.getWarranty_period());
        pstm.setString(8, product.getExpiry());
        pstm.setString(9, product.getOrigin());
        pstm.setString(10, product.getMass());
        pstm.setString(11, product.getSize());
        pstm.setString(12, product.getVolume());
        pstm.setInt(13, product.getCategory_id());
        pstm.setString(14, product.getCode());
        pstm.executeUpdate();
    }

    public static void insertProduct(Connection conn, Medical product) throws SQLException {
        String sql = "insert into product(`code`, `name`, price, `description`, image, producer, trade_mark, warranty_period, expiry, origin, mass, size, volume, category_id)\n" +
                "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, product.getCode());
        pstm.setString(2, product.getName());
        pstm.setInt(3, product.getPrice());
        pstm.setString(4, product.getDescription());
        pstm.setString(5, product.getImage());
        pstm.setString(6, product.getProducer());
        pstm.setString(7, product.getTrade_mark());
        pstm.setString(8, product.getWarranty_period());
        pstm.setString(9, product.getExpiry());
        pstm.setString(10, product.getOrigin());
        pstm.setString(11, product.getMass());
        pstm.setString(12, product.getSize());
        pstm.setString(13, product.getVolume());
        pstm.setInt(14, product.getCategory_id());

        pstm.executeUpdate();
    };

    public static void deleteProduct(Connection conn, String code) throws SQLException {
        String sql = "delete from product where code = ?;";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, code);
        pstm.executeUpdate();
    };

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<Cart>();
        try {
            if(cartList.size() > 0) {
                for(Cart item:cartList) {
                    query = "select * from product where code = ?";
                    pst = this.con.prepareStatement(query);
                    pst.setString(1, item.getCode());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setCode(rs.getString("code"));
                        row.setName(rs.getString("name"));
                        row.setPrice(rs.getInt("price")*item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
        return products;
    }


}
