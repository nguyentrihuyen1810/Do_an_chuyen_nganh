<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="utils.DBUtils" %>
<%@ page import="connection.ConnectionDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct = null;
    if(cart_list != null) {
        DBUtils dbUtils = new DBUtils(ConnectionDB.getConnection());
        cartProduct = dbUtils.getCartProducts(cart_list);
        request.setAttribute("cart_list", cart_list);
    }
%>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Buy Now</th>
        <th>Cancel</th>
    </tr>
    <%
        if(cart_list != null) {
            for(Cart c : cartProduct) {
    %>
    <tr>
        <td><%=c.getName()%></td>
        <td><%=c.getPrice()%>VND</td>
        <td>
            <form action="" method="post">
                <input type = "hidden" name = "code" value="<%=c.getCode()%>">
                <div class="form-group d-flex justify-content-between">
                    <a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=c.getCode()%>"><i class="fas fa-plus-square"></i></a>
                    <input type="text" name="quantity" class="form-control"  value="<%=c.getQuantity()%>" readonly>
                    <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=c.getCode()%>"><i class="fas fa-minus-square"></i></a>
                </div>
            </form>
        </td>
        <a href="remove-from-cart?id=<%=c.getCode() %>" class="btn btn-sm btn-danger">Remove</a></td>
    </tr>
    <% }
        } %>
</table>
</body>
</html>
