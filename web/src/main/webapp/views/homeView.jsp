<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Home Page</title>
    <style>
        .carousel {
            width: 95%;
            height: 450px;
            margin-top: 30px;
        }

        .carousel img {
            width: 95%;
            height: 450px;
        }

        .carousel {
            margin-left: 35px;
        }

        .title {
            width: 100%;
            background-color: #27c5c7;
            height: 25px;
            margin-top: 50px;
        }

        .introduction  {
            margin-top: 50px;
            height: 300px;
            /*background: blueviolet;*/
        }

        .introduction img {
            margin-left: 100px;
            margin-top: 10px;
            float: left;
        }

        .introductionTextTitle {
            float: left;
            width: 50%;
            /*background: chartreuse;*/
            margin-left: 30px;
            margin-top: 20px;
        }

        .introductionTextTitle span {
            font-size: 16px;
        }

        .service {
            /*background: chartreuse;*/
            width: 100%;
            height: 540px;
        }

        .service1 {
            width: 30%;
            height: 250px;
            /*background: blueviolet;*/
            float: left;
            margin-left: 35px;
        }

        .service1 img {
            width: 50px;
            height: 50px;
            margin-left: 180px;
            margin-top: 30px;
        }

        .service1 p {
            text-align: center;
            margin-top: 20px;
        }

        .service2 {
            width: 30%;
            height: 250px;
            /*background: blueviolet;*/
            float: left;
            margin-left: 260px;
            margin-top: 30px;
        }

        .service2 img {
            width: 50px;
            height: 50px;
            margin-left: 180px;
            margin-top: 30px;
        }

        .service2 p {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>

<div class = "carousel">
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://sieuthiyte.com.vn/blog/wp-content/uploads/2018/05/cac-loai-may-do-huyet-ap-co-tay-hang-dau-medikare-dk-39-plus.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="http://glucosamin.com.vn/uploads/images/Starbalm%20Cold%20Gel.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.hangngoainhap.com.vn/images/upload/Image/xuong-khop/cao-dan-giam-dau-salonpas-pain-relieving-patch-140-mieng-2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="http://sieuthiyte.com.vn/blog/wp-content/uploads/2018/08/may-do-huyet-ap-may-do-duong-huyet-sieuthiyte.com_.vn-960x430.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<div class="title">
    <h5 style="color: black; text-align: center">INNOVIA MEDICAL – LUÔN ĐỒNG HÀNH CÙNG NGÀNH Y TẾ</h5>
</div>

<div class = "introduction">
    <div>
        <img style="width: 400px" src="https://2.bp.blogspot.com/--F1Bbupw_Eg/WEKQQXt3EBI/AAAAAAAAAC4/jUdB3icNxksjfhXe-jVBa_mD3mtm9d5dQCLcB/s1600/Medical.jpg">
    </div>
    <div class = "introductionTextTitle">
        <h4 style="color: #27c5c7">THÔNG TIN CƠ BẢN</h4><br>
        <span>INNOVIA MEDICAL – VẬT TƯ Y TẾ INNOVIA chuyên cung cấp, phân phối sản phẩm vật tư y tế nhập khẩu uy tín, đảm
      bảo, chính xác, đang được tin tưởng và sử dụng rộng rãi ở Châu Âu và trên toàn thế giới.</span><br><br>
        <span>Cung cấp các mặt hàng chính hãng như:  Máy đo huyết áp: OMRON, BEURER, …; Máy đo đường huyết: Accuchek, Onetouch,
      …; Máy đo mỡ máu, gout…;Nhiệt kế điện tử hồng ngoại của các hãng như: PolyGreen (Đức), Omron (Nhật), ...; Máy xông
      hút mũi họng, máy xông khí dung cao cấp; Và rất nhiều sản phẩm phục vụ cho ngành y tế khác ….</span>
    </div>
</div>

<h4 style="text-align: center; margin-top: 50px; color: #27c5c7">Vì Sao Chọn Chúng Tôi ?</h4>
<p style="text-align: center; margin-top: 20px">Sản phẩm luôn đa dạng về chủng loại và đảm bảo về chất lượng.</p>

<div class = "service">
    <div class = "service1" style="border: 2px solid #27c5c7">
        <img style="margin-left: 150px" src="https://cdn-icons-png.flaticon.com/128/837/837965.png">
        <p>Cam kết chất lượng sản phẩm và dịch vụ đổi hàng để chắc chắn là bạn đã hoàn toàn hài lòng với quyết định mua hàng của mình.</p>
    </div>
    <div class = "service1" style="border: 2px solid #27c5c7">
        <img style="margin-left: 150px" src="https://cdn-icons-png.flaticon.com/128/925/925748.png">
        <p>Với sự hỗ trợ và cam kết của các hãng hỗ trợ sức khỏe hàng đầu, cũng luôn mang lại cho khách hàng mức giá tốt nhất
            khi mua các sản phẩm tại đây. Đồng thời, nhiều ưu đãi mua sắm mỗi ngày được thực hiện trong hệ thống để phục vụ cho nhu cầu các khách hàng mua sắm.</p>
    </div>
    <div class = "service1" style="border: 2px solid #27c5c7">
        <img style="margin-left: 150px" src="https://cdn-icons-png.flaticon.com/128/2630/2630085.png">
        <p>Sản phẩm vô cùng đa dạng, trong đó có nhiều mặt hàng độc đáo như huyết áp điện tử, máy xông mũi họng, máy thử đường huyết, và các mặt hàng hỗ trợ sức khỏe tốt nhất,…</p>
    </div>
    <div class = "service2" style="border: 2px solid #27c5c7">
        <img style="margin-left: 150px" src="https://cdn-icons-png.flaticon.com/128/641/641695.png">
        <p>Đến với INNOVIA MEDICAL, khách hàng sẽ cảm nhận được phong cách phục vụ tận tình, hiếu khách. Được giao hàng bởi Chính nhân viên kỹ thuật của INNOVIA MEDICAL.</p>
    </div>
    <div class = "service2" style="margin-left: 40px; border: 2px solid #27c5c7">
        <img style="margin-left: 150px" src="https://cdn-icons-png.flaticon.com/128/1067/1067566.png">
        <p>Được kiểm tra hàng và hướng dẫn sử dụng khi nhận hàng. Thực hiện các chính sách hậu mãi từ chính hãng, đảm bảo các thông tin cho nhu cầu khách hàng như tư vấn mua sắm,
            tư vấn sử dụng, bảo trì, bảo hành,…</p>
    </div>
</div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</html>
