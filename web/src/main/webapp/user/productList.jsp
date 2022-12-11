<%--
  Created by IntelliJ IDEA.
  User: my pc
  Date: 12/5/2022
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="webapp/style.css">--%>
    <title>Title</title>
    <style>
        .card {
            width: 340px;
            height: auto;
            margin-left: 60px;
            margin-top: 50px;
            float: left;
            margin-bottom: 25px;
        }

        .card img {
            padding-top: 10px;
            width: 250px;
            height: 200px;
            padding-left: 100px;
        }
    </style>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>

<c:forEach items="${productList}" var="product" >
    <div class="card" style = "border: 3px solid #27c5c7">
        <img src="${product.image}" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">${product.name}</h5>
            <p class="card-text">${product.price}</p>
            <a style="text-decoration: none;" href="detailProduct?code=${product.code}"><button type="button" class="btn btn-primary">Chi tiết</button></a>
            <a style = "margin-left: 20px" href="#" class="btn btn-success">Thêm vào giỏ hàng</a>
        </div>
    </div>
</c:forEach>

<%--<jsp:include page="../footer.jsp"></jsp:include>--%>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</html>
