package servlet;

import model.Medical;
import utils.DBUtils;
import utils.MyUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(urlPatterns = { "/createProduct" })
public class CreateProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CreateProductServlet() {
        super();
    }

    // Hiển thị trang tạo sản phẩm.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/medical/createProductView.jsp");
        dispatcher.forward(request, response);
    }

    // Khi người dùng nhập các thông tin sản phẩm, và nhấn Submit.
    // Phương thức này sẽ được gọi.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
        String code = (String) request.getParameter("code");
        String name = (String) request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = (String) request.getParameter("description");
        String image = (String) request.getParameter("image");
        String producer = (String) request.getParameter("producer");
        String trade_mark = (String) request.getParameter("trade_mark");
        String warranty_period = (String) request.getParameter("warranty_period");
        String expiry = (String) request.getParameter("expiry");
        String origin = (String) request.getParameter("origin");
        String mass = (String) request.getParameter("mass");
        String size = (String) request.getParameter("size");
        String volume = (String) request.getParameter("volume");
        int category_id = Integer.parseInt(request.getParameter("category_id"));
//        String category_name = (String) request.getParameter("category_name");
        Medical product = new Medical(code, name, price, description, image, producer, trade_mark, warranty_period, expiry, origin, mass, size, volume, category_id);

        String errorString = null;

        // Mã sản phẩm phải là chuỗi chữ [a-zA-Z_0-9]
        // Có ít nhất một ký tự.
        String regex = "\\w+";

//        if (code == null || !code.matches(regex)) {
//            errorString = "Product Code invalid!";
//        }

        if (errorString == null) {
            try {
                DBUtils.insertProduct(conn, product);
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = e.getMessage();
            }
        }

        // Lưu thông tin vào request attribute trước khi forward sang views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("product", product);

        // Nếu có lỗi forward (chuyển tiếp) sang trang 'edit'.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/medical/createProductView.jsp");
            dispatcher.forward(request, response);
        }
        // Nếu mọi thứ tốt đẹp.
        // Redirect (chuyển hướng) sang trang danh sách sản phẩm.
        else {
            response.sendRedirect(request.getContextPath() + "/productList");
        }
    }

}
