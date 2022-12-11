<%--
  Created by IntelliJ IDEA.
  User: my pc
  Date: 11/24/2022
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Info</title>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>
<div style = "text-align: center; margin-top: 50px; margin-bottom: 50px">
    <h3>Xin chào,  ${loginedUser.username}</h3>
    Chào mừng bạn đến với trang quản lý sản phẩm
    <br />
    <br/>
    Click vào đây để hiển thị <a href="productList">danh sách sản phẩm</a>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
