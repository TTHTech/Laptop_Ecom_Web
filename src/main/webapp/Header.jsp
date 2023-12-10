<%--
  Created by IntelliJ IDEA.
  User: HoaiThanh
  Date: 11/19/2023
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="themify-icons/themify-icons.css">
  <link rel="stylesheet" href="font/fontawesome-free-5.15.4-web">
  <link rel="stylesheet" href="font/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
  <link rel="stylesheet" href="link" rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==">
  <link rel="stylesheet" href="css/home.css">
  <title>Bán Phụ Kiện Điện Tử</title>
</head>
<body>
<header>
  <img src="https://file.hstatic.net/200000722513/file/sale_luong_ve_-_topbar_c3ef5fa80c8a4a00bc8ff9be7e049f34.jpg" alt="">
</header>
<nav style="height: 87px;">
  <div class="container ">
    <ul style="align-items: center; height: 87px;">
      <li><a href="home"><img style = "width: 150px;" src="https://file.hstatic.net/200000636033/file/logo_fd11946b31524fbe98765f34f3de0628.svg" alt=""></a></li>
      <li id = "adress-form"><a href="#">TP.Hồ Chí Minh<i class="fas fa-sort-down"></i></a></li>
      <li><input type="text" placeholder="Bạn tìm gì..." style="height: 40px; width: 250px; "><i class="fas fa-search"></i></li>
      <li><a href="cart"><button><i class = "fas fa-shopping-cart"> </i>Giỏ hàng</button></a></li>
      <li><a href=""><i class="ti-time"></i>Lịch sử <br> đơn hàng</a></li>
      <li><a href=""><span class = "btn-content"><span class = "btn-top"></span></span>Hotline <br> 0944192393</a></li>
      <li ><a href="https://www.facebook.com/hoai.thanh.1813?locale=vi_VN" ><i class="ti-clipboard"></i>Tra Cứu<br>Đơn Hàng</a></li>
      <li><a href="https://genk.vn/"><i class="ti-id-badge"></i>Profile</a></li>
      <c:if test = "${sessionScope.acc != null}">
        <li><a href="logout"><button><i class="ti-user"></i>Đăng Xuất</button></a></li>
      </c:if>
      <c:if test = "${sessionScope.acc == null}">
        <li><a href="Login.jsp"><button><i class="ti-user"></i>Đăng Nhập</button></a></li>
      </c:if>
      <div class="adress-form">
        <div class="adress-form-content">
          <h2>Chọn địa chỉ nhận hàng <span id = "adress-close">X Đóng</span></h2>
          <form action="">
            <p>Chọn đầy đủ địa chỉ nhận hàng để biết chính xác thời gian giao</p>
            <select name="">
              <option value="#">--Chọn địa điểm</option>
              <option value="#">--TP.Hồ Chí Minh</option>
            </select>
            <select name="" >
              <option value="#">--Chọn Quận Huyện</option>
              <option value="#">--Thủ Đức</option>
            </select>
            <select name="" >
              <option value="#">--Chọn Phường/Xã</option>
              <option value="#">--Võ Văn Ngân</option>
            </select>
            <input type="text" placeholder="Số nhà, Tên đường">
            <button>Xác nhận</button>
          </form>
        </div>
      </div>
    </ul>
  </div>

</nav>
