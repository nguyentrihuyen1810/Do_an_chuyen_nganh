<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Product List</title>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>
<h3 style="text-align: center; margin-top: 50px; margin-bottom: 50px">DANH SÁCH SẢN PHẨM</h3>
<p style="color: red;">${errorString}</p>
<a href="createProduct" style="margin-right: 50px; margin-bottom: 20px; float: right">
    <button type="button" class="btn btn-info">(+) Thêm mới sản phẩm</button>
</a>

<%--<a href="createProduct" >Create Product</a>--%>

<table class="table table-striped table-hover" style="width: 98%; margin-left: 15px" >
    <thead style="background-color: #27c5c7">
    <tr>
        <th scope="col">Mã sản phẩm</th>
        <th scope="col">Hình ảnh minh họa</th>
        <th scope="col">Tên sản phẩm</th>
        <th scope="col" style="padding-left: 40px">Giá sản phẩm</th>
        <th scope="col">Nhà sản xuất</th>
        <%--        <th>Phân loại sản phẩm</th>--%>
        <th style = "text-align: center" scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product" >
        <tr>
            <td>${product.code}</td>
            <td style="width: 166px"><img src="${product.image}" style="width: 150px; height: 150px"></td>
            <td style="width: 316px">${product.name}</td>
            <td style="text-align: center">${product.price} &dstrok;</td>
            <td>${product.producer}</td>
<%--            <td style="text-align: center">${product.category_name}</td>--%>
            <td style="text-align: center">
                <button type="button" class="btn btn-warning">
                    <a style="text-decoration: none; color: black" href="editProduct?code=${product.code}">Chỉnh sửa</a>
                </button>
                <button type="button" class="btn btn-success">
                    <a style="text-decoration: none; color: black" href="detailProduct?code=${product.code}">Chi tiết</a>
                </button>
                <button type="button" class="btn btn-danger">
                    <a style="text-decoration: none; color: black" href="deleteProduct?code=${product.code}">Xóa</a>
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</html>
