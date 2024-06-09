<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="themify-icons/themify-icons.css">
  <link rel="stylesheet" href="font/fontawesome-free-5.15.4-web">
  <link rel="stylesheet" href="font/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
  <link rel="stylesheet" href="css/home.css">
  <title>Bán Phụ Kiện Điện Tử</title>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap");

    .modal-section {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.5);
      display: none;
      justify-content: center;
      align-items: center;
      z-index: 1000;
    }

    .modal-section.active {
      display: flex;
    }

    .modal-button {
      font-size: 18px;
      font-weight: 400;
      color: #fff;
      padding: 14px 22px;
      border: none;
      background: #4070f4;
      border-radius: 6px;
      cursor: pointer;
    }

    .modal-button:hover {
      background-color: #265df2;
    }

    .modal-box {
      background: #fff;
      padding: 20px;
      border-radius: 8px;
      max-width: 500px;
      width: 100%;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
      text-align: center; /* Center align text and image */
    }

    .modal-box h2 {
      margin-top: 0;
      font-size: 24px;
      margin-bottom: 20px;
    }

    .modal-box img {
      margin-bottom: 20px;
      width: 100px; /* Adjust width as needed */
    }

    .modal-box .form-group {
      margin-bottom: 15px;
      text-align: left; /* Align labels to the left */
    }

    .modal-box .form-group label {
      display: block;
      margin-bottom: 5px;
    }

    .modal-box .form-group input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .modal-box .form-actions {
      display: flex;
      justify-content: center;
      gap: 10px; /* Khoảng cách giữa các nút */
    }

    .modal-box .form-actions button {
      flex: 1; /* Chiều rộng của các nút bằng nhau */
      padding: 10px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .modal-box .form-actions .btn-primary {
      background: #4070f4;
      color: #fff;
    }

    .modal-box .form-actions .btn-primary:hover {
      background: #265df2;
    }

    .modal-box .form-actions .btn-secondary {
      background: #ccc;
      color: #000;
    }

    .modal-box .form-actions .btn-secondary:hover {
      background: #aaa;
    }

    .modal-box .social-login {
      display: flex;
      justify-content: space-between;
      margin-top: 15px;
    }

    .modal-box .social-login button {
      flex: 1;
      padding: 10px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
    }

    .modal-box .social-login .btn-google {
      background: #db4437;
    }

    .modal-box .social-login .btn-google:hover {
      background: #c33d2e;
    }

    .modal-box .social-login .btn-facebook {
      background: #4267b2;
    }

    .modal-box .social-login .btn-facebook:hover {
      background: #375899;
    }

    .modal-box .or-text {
      margin: 10px 0;
      font-size: 14px;
      color: #888;
      position: relative;
    }

    .modal-box .or-text:before, .modal-box .or-text:after {
      content: '';
      position: absolute;
      top: 50%;
      width: 40%;
      height: 1px;
      background: #ccc;
    }

    .modal-box .or-text:before {
      left: 0;
    }

    .modal-box .or-text:after {
      right: 0;
    }

    .form-container {
      display: none;
    }

    .form-container.active {
      display: block;
    }

    .dropdown {
      position: relative;
      display: inline-block;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }

    .dropdown-content a:hover {
      background-color: #f1f1f1;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropbtn {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 10px 20px;
      border: 1px solid #fff; /* Viền trắng */
      border-radius: 4px;
      background-color: #d0021b; /* Nền đỏ */
      color: #fff;
      text-decoration: none;
      font-size: 16px;
    }

    .dropbtn:hover {
      background-color: #b30017; /* Màu nền khi hover */
    }

    /* Style for the cart button to keep its border white and background red */
    .cart-button {
      background-color: #d0021b; /* Nền đỏ */
      border: 1px solid #fff; /* Viền trắng */
      color: #fff;
      padding: 10px 20px;
      border-radius: 4px;
      display: flex;
      align-items: center;
    }

    .cart-button i {
      margin-right: 5px;
    }

    .cart-button:hover {
      background-color: #b30017; /* Màu nền khi hover */
    }
  </style>
</head>
<body>
<header>
  <img src="https://file.hstatic.net/200000722513/file/sale_luong_ve_-_topbar_c3ef5fa80c8a4a00bc8ff9be7e049f34.jpg" alt="">
</header>
<nav style="height: 87px; background-color: #d0021b;">
  <div class="container">
    <ul style="align-items: center; height: 87px;">
      <li><a href="home"><img style="width: 150px;"
                              src="https://file.hstatic.net/200000636033/file/logo_fd11946b31524fbe98765f34f3de0628.svg"
                              alt=""></a></li>
      <li id="adress-form"><a href="#" style="color: #ffea00;">TP.Hồ Chí Minh<i class="fas fa-sort-down"></i></a></li>
      <li><input type="text" placeholder="Bạn tìm gì..." style="height: 40px; width: 250px;"><i
              class="fas fa-search"></i></li>
      <li><a href="cart" style="color: #fff;"><button class="cart-button"><i class="fas fa-shopping-cart"> </i>Giỏ hàng</button></a></li>
      <li><a href="#" style="color: #fff;"><i class="ti-time"></i>Lịch sử <br> đơn hàng</a></li>
      <li><a href="#" style="color: #ffea00;"><span class="btn-content"><span class="btn-top"></span></span>Hotline <br> 0944192393</a></li>
      <li><a href="https://www.facebook.com/hoai.thanh.1813?locale=vi_VN" style="color: #fff;"><i class="ti-clipboard"></i>Tra Cứu<br>Đơn Hàng</a></li>
      <li><a href="https://genk.vn/" style="color: #fff;"><i class="ti-id-badge"></i>Thông<br>Tin User</a></li>
      <c:if test="${sessionScope.acc != null}">
        <li class="dropdown">
          <a href="#" class="dropbtn user-name" style="display: flex; align-items: center; color: white; border: 1px solid white; padding: 10px; border-radius: 5px;">
            <i class="ti-user" style="margin-right: 10px;"></i>
            <div style="display: flex; flex-direction: column;">
              <span>Hello,</span>
              <span style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 50px;">${sessionScope.acc.userName}</span>
            </div>
          </a>
          <div class="dropdown-content">
            <a href="accountDetails.jsp">Thông tin tài khoản</a>
            <a href="logout">Đăng Xuất</a>
          </div>
        </li>


      </c:if>
      <c:if test="${sessionScope.acc == null}">
        <li><a href="#" class="show-modal"><button class="modal-button"><i class="ti-user"></i>Đăng Nhập</button></a></li>
      </c:if>
    </ul>
  </div>
</nav>

<section class="modal-section">
  <div class="modal-box">
    <div class="form-container active" id="initial-form">
      <h2>Đăng Nhập hoặc Đăng Ký</h2>
      <img src="https://mir-s3-cdn-cf.behance.net/project_modules/1400/b155ad106293397.5f8d0f4782af6.jpg"
           alt="Login/Register">
      <div class="form-actions">
        <button class="btn-primary" id="login-btn">Đăng Nhập</button>
        <button class="btn-secondary" id="register-btn">Đăng Ký</button>
      </div>
    </div>
  </div>
</section>

<script>
  const section = document.querySelector(".modal-section"),
          showBtn = document.querySelector(".show-modal"),
          modalBox = document.querySelector(".modal-box"),
          initialForm = document.getElementById("initial-form"),
          loginBtn = document.getElementById("login-btn"),
          registerBtn = document.getElementById("register-btn");

  showBtn.addEventListener("click", () => section.classList.add("active"));

  section.addEventListener("click", (event) => {
    if (!modalBox.contains(event.target)) {
      section.classList.remove("active");
    }
  });

  loginBtn.addEventListener("click", () => {
    window.location.href = "Login.jsp";
  });

  registerBtn.addEventListener("click", () => {
    window.location.href = "Register.jsp";
  });
</script>
</body>
</html>
