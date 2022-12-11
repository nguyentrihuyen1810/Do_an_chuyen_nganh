<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Create Product</title>
    <style>
      .login {
        width: auto;
        height: auto;
        margin-left: 300px;
        margin-right: 200px;
        margin-top: 30px;
        border-radius: 15px 50px;
      }

      .login img {
        width: 160px;
        height: 120px;
        float: left;
      }

      .login h3{
        float: left;
        padding-top: 25px;
        padding-left: 150px;
      }

    </style>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>
<p style="color: red;">${errorString}</p>
<h3 style="text-align: center">Thêm mới sản phẩm</h3>
<form method="POST" action="${pageContext.request.contextPath}/createProduct">
  <div class = "login" style = "border: 3px solid black; background-color: azure">
    <table style="margin-top: 20px; margin-left: 60px; margin-right: 40px">
      <tbody>
      <tr>
        <td style="background-color: #27c5c7" class="input-group-text" id="basic-addon1">Mã sản phẩm</td>
        <td><input style = "width: 420px" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" type="text" name="code" value="${product.code}" /></td>
      </tr>

      <tr>
        <td style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon2">Tên sản phẩm</td>
        <td><input style="margin-top: 10px; width: 420px" class="form-control" aria-label="productName" aria-describedby="basic-addon1" type="text" name="name" value="${product.name}" /></td>
      </tr>

      <tr>
        <td style="margin-top: 10px; background-color: #27c5c7" class="input-group-text">Giá</td>
        <td><input  style="margin-top: 10px; width: 420px" type="text" class="form-control" aria-label="Amount" name="price" value="${product.price}" /></td>
      </tr>

      <tr>
        <td  style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon7">Xuất xứ</td>
        <td><input  style="margin-top: 10px; width: 420px" type = "text" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" name = "origin" value="${product.origin}"></td>
      </tr>

      <tr>
        <td  style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" for="inputGroupSelect01">Danh mục</td>
        <td>
          <select  style="margin-top: 10px; width: 420px" class="form-select" id="inputGroupSelect01" name = "category_id">
            <option ${product.category_id == 1 ? 'selected' : ''} value = "1">Y tế gia đình</option>
            <option ${product.category_id == 2 ? 'selected' : ''} value = "2">Dụng cụ y tế</option>
            <option ${product.category_id == 3 ? 'selected' : ''} value = "3">Chăm sóc vết thương</option>
            <option ${product.category_id == 4 ? 'selected' : ''} value = "4">Chăm sóc sửc khỏe</option>
            <option ${product.category_id == 5 ? 'selected' : ''} value = "5">Khác ...</option>
          </select>
        </td>
      </tr>

      <tr>
        <td  style="margin-top: 10px; background-color: #27c5c7" class="input-group-text">Hình ảnh</td>
        <td><input  style="margin-top: 10px; width: 420px" type="text" class="form-control" aria-label="productImage" aria-describedby="basic-addon1" value="${product.image}"></td>
      </tr>

      <tr>
        <td  style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon3">Nhà sản xuất</td>
        <td><input  style="margin-top: 10px; width: 420px" type = "text" class="form-control" aria-label="producer" aria-describedby="basic-addon1" name = "producer" value="${product.producer}"></td>
      </tr>

      <tr>
        <td  style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon4">Thương hiệu</td>
        <td><input style="margin-top: 10px; width: 420px" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" type = "text" name = "trade_mark" value="${product.trade_mark}"></td>
      </tr>

      <tr>
        <td  style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon5">Thời gian bảo hành</td>
        <td><input style="margin-top: 10px; width: 420px" type = "text" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" name = "warranty_period" value="${product.warranty_period}"></td>
      </tr>

      <tr>
        <td  style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon6">Hạn sử dụng</td>
        <td><input style="margin-top: 10px; width: 420px" type = "text" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" name = "expiry" value="${product.expiry}"></td>
      </tr>

      <tr>
        <td style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon8">Trọng lượng</td>
        <td><input style="margin-top: 10px; width: 420px" type = "text" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" name = "mass" value="${product.mass}"></td>
      </tr>

      <tr>
        <td style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon9">Kích thước</td>
        <td><input style="margin-top: 10px; width: 420px" type = "text" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" name = "size" value="${product.size}"></td>
      </tr>

      <tr>
        <td style="margin-top: 10px; background-color: #27c5c7" class="input-group-text" id="basic-addon10">Thể tích</td>
        <td><input style="margin-top: 10px; width: 420px" type = "text" class="form-control" aria-label="productCode" aria-describedby="basic-addon1" name = "volume" value="${product.volume}"></td>
      </tr>

      <tr>
        <td style="margin-top: 10px; background-color: #27c5c7" class="input-group-text">Mô tả sản phẩm</td>
        <td><textarea style="margin-top: 10px; width: 420px" name = "description" class="form-control" aria-label="With textarea"  value="${product.description}"></textarea></td>
      </tr>
    </table>
    <input style = "margin-top: 30px; margin-left: 500px" class="btn btn-success" type="submit" value="Thêm mới" />
    <a href="productList"><button style="margin-top: 30px; margin-left: 10px" type="button" class="btn btn-secondary">Thoát</button></a>
  </div>
</form>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</html>