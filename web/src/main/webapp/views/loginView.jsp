<%--
  Created by IntelliJ IDEA.
  User: my pc
  Date: 11/24/2022
  Time: 5:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Login</title>
    <style>
      .login {
        text-align: center;
        width: auto;
        height: auto;
        margin-left: 400px;
        margin-right: 200px;
        margin-top: 50px;
        margin-bottom: 50px;
        border-radius: 15px 50px;
      }

      .login img {
        width: 120px;
        height: 100px;
      }

      .login h3{
          text-align: center;
          margin-top: 20px;
      }
    </style>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>
<p style="color: red;">${errorString}</p>

<form method="POST" action="${pageContext.request.contextPath}/login">
  <div class = "login" style = "border: 3px solid black; background-color: #bbf6f6; width: 406px">
    <h3 >ĐĂNG NHẬP</h3>
    <table border="0">
      <tr >
        <td class="input-group mb-3">
            <input class="form-control" style = "margin-left: 100px; margin-top: 30px" type="text" name="userName" placeholder="Username" value= "${user.username}" aria-label="Username" aria-describedby="basic-addon1"/>
        </td>
      </tr>
      <tr>
        <td class="input-group mb-3">
            <input class="form-control" style = "margin-left: 100px; margin-top: 10px" type="password" name="password" placeholder="Password" value= "${user.password}" aria-label="Username" aria-describedby="basic-addon1"/>
        </td>
      </tr>
      <tr>
        <td colspan ="2">
          <input class="btn btn-success" style = "margin-left: 150px; margin-top: 10px" type="submit" value= "Đăng nhập"/>
        </td>
      </tr>
    </table>
  </div>
</form>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</html>
