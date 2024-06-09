<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="Header.jsp"></jsp:include>
<head>
  <meta charset="UTF-8">
  <title>Thông tin tài khoản</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f1f1f1;
    }
    .account-container {
      display: flex;
      margin: 20px auto;
      max-width: 1300px;
      height: 450px;
      gap: 10px;
    }
    .account-sidebar {
      width: 300px;
      padding: 20px;
      background: #f8f8f8;
      border: 1px solid #ddd;
      border-radius: 10px;
    }
    .account-sidebar ul {
      list-style-type: none;
      padding: 0;
    }
    .account-sidebar ul li {
      margin: 10px 0;
    }
    .account-sidebar ul li a {
      text-decoration: none;
      color: #333;
      display: flex;
      align-items: center;
      cursor: pointer;
    }
    .account-sidebar ul li a:hover {
      color: #ff0000;
    }
    .account-sidebar ul li a i {
      margin-right: 10px;
    }
    .account-content {
      flex: 1;
      padding: 20px;
      background: #fff;
      border: 1px solid #ddd;
      border-radius: 10px;
    }
    .account-content h2 {
      margin-top: 0;
      margin-bottom: 30px; /* Thêm khoảng cách 30px ở dưới */
    }
    .account-content .form-group {
      margin-bottom: 15px;
      display: flex;
      align-items: center;
    }
    .account-content .form-group label {
      margin-right: 10px;
      white-space: nowrap;
    }
    .account-content .form-group input, .account-content .form-group select {
      flex: 1;
      padding: 8px;
      box-sizing: border-box;
    }
    .account-content .form-group input[type="radio"] {
      width: auto;
      margin-right: 10px;
    }
    .account-content .form-group .gender-label {
      display: inline-block;
      margin-right: 20px;
    }
    .account-content .form-group a {
      color: #007bff;
      text-decoration: none;
      cursor: pointer;
    }
    .account-content .form-group a:hover {
      text-decoration: underline;
    }
    .account-content .form-actions {
      text-align: right;
    }
    .account-content .form-actions button {
      background: #ff0000;
      color: #fff;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      border-radius: 5px;
    }
    .account-content .form-actions button:hover {
      background: #d00000;
    }
    .account-address {
      margin-top: 20px;
    }
    .account-address .btn-add-address {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      border-radius: 5px;
      float: right;
      margin-bottom: 20px;
    }
    .account-address .btn-add-address:hover {
      background-color: #0056b3;
    }
    .account-address .address-item {
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
      margin-bottom: 10px;
      clear: both;
    }
    .account-address .address-item p {
      margin: 5px 0;
    }
    .account-address .address-item .actions {
      text-align: right;
    }
    .account-address .address-item .actions a {
      margin-left: 10px;
      text-decoration: none;
      color: #007bff;
    }
    .account-address .address-item .actions a:hover {
      text-decoration: underline;
    }
    .hidden {
      display: none;
    }
  </style>
</head>
<body>
<div class="account-container">
  <div class="account-sidebar">
    <div style="text-align: center; margin-bottom: 20px;">
      <img src="https://www.w3schools.com/howto/img_avatar.png" alt="Avatar" style="width: 100px; border-radius: 50%;">
      <p>Từ Thanh Hoài</p>
    </div>
    <ul>
      <li><a onclick="showSection('account-details')"><i class="fa fa-user"></i> Thông tin tài khoản</a></li>
      <li><a onclick="showSection('address-section')"><i class="fa fa-map-marker-alt"></i> Số địa chỉ</a></li>
      <li><a href="#"><i class="fa fa-clipboard"></i> Quản lý đơn hàng</a></li>
      <li><a href="#"><i class="fa fa-eye"></i> Sản phẩm đã xem</a></li>
      <li><a href="logout"><i class="fa fa-sign-out-alt"></i> Đăng xuất</a></li>
    </ul>
  </div>
  <div class="account-content">
    <div id="account-details" class="content-section">
      <h2>Thông tin tài khoản</h2>
      <form action="updateAccount" method="post">
        <div class="form-group">
          <label for="name">Họ Tên</label>
          <input type="text" id="name" name="name" value="Từ Thanh Hoài">
        </div>
        <div class="form-group">
          <label>Giới tính</label>
          <label class="gender-label"><input type="radio" name="gender" value="Nam" checked> Nam</label>
          <label class="gender-label"><input type="radio" name="gender" value="Nữ"> Nữ</label>
        </div>
        <div class="form-group">
          <label for="phone">Số điện thoại</label>
          <span id="phone-display">******** <a onclick="showInputField('phone')">Thay đổi</a></span>
          <input type="text" id="phone-input" name="phone" class="hidden" value="0938374623">
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <span id="email-display">tt*******@gmail.com <a onclick="showInputField('email')">Thay đổi</a></span>
          <input type="email" id="email-input" name="email" class="hidden" value="tthoai2401.learn@gmail.com">
        </div>
        <div class="form-group" style="display: flex; align-items: center;">
          <label for="birthday" style="margin-right: 10px; white-space: nowrap;">Ngày sinh</label>
          <select id="day" name="day" style="flex: 1; padding: 8px; box-sizing: border-box; margin-right: 10px;">
            <option>Ngày</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <!-- Add more days -->
          </select>
          <select id="month" name="month" style="flex: 1; padding: 8px; box-sizing: border-box; margin-right: 10px;">
            <option>Tháng</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <!-- Add more months -->
          </select>
          <select id="year" name="year" style="flex: 1; padding: 8px; box-sizing: border-box;">
            <option>Năm</option>
            <option value="2000">2000</option>
            <option value="2001">2001</option>
            <!-- Add more years -->
          </select>
        </div>
        <div class="form-actions">
          <button type="submit">LƯU THAY ĐỔI</button>
        </div>
      </form>
    </div>
    <div id="address-section" class="content-section hidden">
      <h2>Số địa chỉ</h2>
      <button class="btn-add-address">+ Thêm địa chỉ mới</button>
      <div class="account-address">
        <div class="address-item">
          <p><strong>Mặc định</strong></p>
          <p>Từ Thanh Hoài</p>
          <p>sew twq , Phường Bến Nghé, Quận 1, Hồ Chí Minh, Vietnam</p>
          <p>0938374623</p>
          <div class="actions">
            <a href="#">Cập nhật</a>
            <a href="#">Xóa</a>
            <a href="#" class="btn-primary">Thiết lập mặc định</a>
          </div>
        </div>
        <div class="address-item">
          <p>Từ Thanh Hoài</p>
          <p>sew twq, Thị trấn Chúc Sơn, Huyện Chương Mỹ, Hà Nội, Vietnam</p>
          <p>0938374623</p>
          <div class="actions">
            <a href="#">Cập nhật</a>
            <a href="#">Xóa</a>
            <a href="#" class="btn-primary">Thiết lập mặc định</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="Footer.jsp"></jsp:include>
<script>
  function showSection(sectionId) {
    document.querySelectorAll('.content-section').forEach(section => {
      section.classList.add('hidden');
    });
    document.getElementById(sectionId).classList.remove('hidden');
  }

  function showInputField(field) {
    document.getElementById(field + '-display').classList.add('hidden');
    document.getElementById(field + '-input').classList.remove('hidden');
  }
</script>
</body>
</html>
