<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<%--<div style="padding: 5px;">--%>

<%--  <a href="${pageContext.request.contextPath}/">Home</a>--%>
<%--  |--%>
<%--  <a href="${pageContext.request.contextPath}/productCart">Danh sach san pham</a>--%>
<%--  |--%>
<%--  <a href="${pageContext.request.contextPath}/disable">Quan ly san pham</a>--%>
<%--  |--%>
<%--  <a href="${pageContext.request.contextPath}/userInfo">My Account Info</a>--%>
<%--  |--%>
<%--  <a href="${pageContext.request.contextPath}/login">Login</a>--%>
<%--  |--%>
<%--  <a href="${pageContext.request.contextPath}/logout">Logout</a>--%>
<%--</div>--%>


<header>
  <nav class="navbar navbar-expand-lg bg-light" style="padding-top: 0px">
    <div class="container-fluid" >
      <img style = "width: 160px; height: 100px; padding-top: 4px" src="https://cdn.shopify.com/s/files/1/1262/2667/files/InnoviaMedical_logo_large.jpg?v=1499453471">
      <h1>|</h1>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a style = "font-size: 15px; margin-left: 30px; color: black" class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/"><h5 style = "width: 100px">Trang chủ</h5></a>
        </li>
        <li class="nav-item">
          <a style = "font-size: 15px; margin-left: 10px; width: 165px" class="nav-link" href="${pageContext.request.contextPath}/productCart">Danh sách sản phẩm</a>
        </li>
        <li class="nav-item">
          <a style = "font-size: 15px; margin-left: 10px; width: 150px" class="nav-link" href="${pageContext.request.contextPath}/adminTask">Quản lý sản phẩm</a>
        </li>
        <li class="nav-item">
          <a class ="nav-link disabled " style = "font-size: 15px; margin-left: 10px; width: 90px" class="nav-link" href="#">Liên hệ</a>
        </li>
        <li class="nav-item">
          <a class ="nav-link disabled " style = "font-size: 15px; margin-left: 10px; width: 101px" class="nav-link" href="#">Trợ giúp</a>
        </li>
      </ul>
      <form class="d-flex" role="search" style="width: 35%">
        <img style = "width: 25px; height: 25px; margin-top: 9px; margin-left: 50px" src="https://cdn-icons-png.flaticon.com/128/456/456212.png"><span style = "padding-top: 10px; padding-left: 5px">${loginedUser.username}</span>
        <a href="${pageContext.request.contextPath}/cart"><img style = "width: 25px; height: 25px; margin-top: 9px; margin-left: 80px" src="https://cdn-icons-png.flaticon.com/128/665/665865.png"></a>
        <span>0</span>
        <a href="${pageContext.request.contextPath}/login"><img style = "width: 25px; height: 25px; margin-top: 9px; margin-left: 20px" src="https://cdn-icons-png.flaticon.com/128/1828/1828445.png"></a>
        <a href="${pageContext.request.contextPath}/logout"><img style = "width: 25px; height: 25px; margin-top: 9px; margin-left: 20px" src="https://cdn-icons-png.flaticon.com/128/1828/1828479.png"></a>
      </form>
    </div>
    </div>
  </nav>
</header>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</html>
