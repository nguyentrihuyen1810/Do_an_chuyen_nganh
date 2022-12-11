<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Chi tiết sản phẩm</title>
    <style>
        .detail {
            text-align: center;
            width: auto;
            height: auto;
            margin-left: 150px;
            margin-right: 150px;
            margin-top: 25px;
            border-radius: 15px 50px;
        }

        .detail img {
            width: 300px;
            height: 260px;
            float: left;
            padding-left: 50px;
            padding-top: 30px;
        }

        .detail h4 {
            margin-top: 50px;
        }

        .detailProduct {
            padding-left: 350px;
        }

        .detailProduct p {
            text-align: left;
        }
    </style>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>

<h3 style = "text-align: center">Chi tiết sản phẩm</h3>

<p style="color: red;">${errorString}</p>

<c:if test="${not empty product}">
    <form method="POST" action="${pageContext.request.contextPath}/detailProduct">
        <input type="hidden" name="code" value="${product.code}" />
        <div class = "detail" style = "border: 3px solid black; background-color: azure; width: 1000px;height: 506px;">
            <img src="${product.description}">
            <h4 style="color: crimson">${product.name}</h4><br>
            <div class = "detailProduct">
                <p>
                    <span style="font-weight: bold">Giá tiền: &nbsp;</span><span>${product.price} VNĐ</span>
                </p>
                <p style="text-align: left">
                    <span style="font-weight: bold">Thương hiệu: &nbsp;</span><span>${product.trade_mark}</span>
                    <span style="font-weight: bold; margin-left: 60px">Nhà sản xuất: &nbsp;</span> <span>${product.producer}</span>
                    <span style="font-weight: bold; margin-left: 60px">Xuất xứ: &nbsp;</span><span>Mỹ (USA)</span>
                </p>
                <p style="text-align: left">
                    <span style="font-weight: bold">Thời gian bảo hành: &nbsp; </span><span>${product.origin}</span>
                    <span style="margin-left: 60px; font-weight: bold">Hạn sử dụng: &nbsp; </span><span>${product.expiry}</span>
                </p>
                <p style="text-align: left">
                    <span style="font-weight: bold">Trọng lượng: &nbsp;</span><span>${product.mass}</span>
                    <span style="margin-left: 30px; font-weight: bold">Kích thước: &nbsp; </span><span>${product.size}</span>
                    <span style="margin-left: 30px; font-weight: bold">Thể tích: &nbsp;</span><span>${product.volume}</span>
                </p>
            </div><br>
            <span style="margin-left: 20px; font-weight: bold">Mô tả sản phẩm: &nbsp;</span><span>${product.image}</span>
<%--            <button style="margin-bottom: 20px;margin-top: 80px;margin-left: 800px" type="button" class="btn btn-secondary">Trở về</button>--%>
            <a href="productList"><button style="margin-bottom: 20px;margin-top: 80px;margin-left: 800px" type="button" class="btn btn-secondary">Trở về</button></a>
        </div>
<%--        <table border="0">--%>
<%--            <tr>--%>
<%--                <td>Code</td>--%>
<%--                <td style="color:red;">${product.code}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Name</td>--%>
<%--                <td>${product.name}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Price</td>--%>
<%--                <td>${product.price}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Description</td>--%>
<%--                <td>${product.image}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Image</td>--%>
<%--                <td><img src="/img_product/${product.description}" style="width: 200px; height: 200px"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Producer</td>--%>
<%--                <td>${product.producer}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Trade mark</td>--%>
<%--                <td>${product.trade_mark}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Warranty period</td>--%>
<%--                <td>${product.warranty_period}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Expiry</td>--%>
<%--                <td>${product.expiry}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Origin</td>--%>
<%--                <td>${product.origin}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Mass</td>--%>
<%--                <td>${product.mass}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Size</td>--%>
<%--                <td>${product.size}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Volume</td>--%>
<%--                <td>${product.volume}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td colspan = "2">--%>
<%--                    <button>--%>
<%--                        <a style="text-decoration: none; color: black" href="${pageContext.request.contextPath}/productList">Cancel</a>--%>
<%--                    </button>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </table>--%>
    </form>
</c:if>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</html>
