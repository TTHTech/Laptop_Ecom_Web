<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Forgot Password</title>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap");

    .modal-section {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.5);
      display: flex;
      justify-content: center;
      align-items: center;
      z-index: 1000;
    }
    .modal-box {
      background: #fff;
      padding: 30px; /* Increased padding for more space */
      border-radius: 8px;
      max-width: 500px; /* Increased max-width for a larger form */
      width: 100%;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
      text-align: center;
    }
    .modal-box h2 {
      margin-top: 0;
      font-size: 24px;
      margin-bottom: 20px;
    }
    .modal-box .form-group {
      margin-bottom: 20px; /* Increased margin for more space */
      text-align: left;
    }
    .modal-box .form-group label {
      display: block;
      margin-bottom: 10px; /* Increased margin for label */
    }
    .modal-box .form-group input {
      width: 100%;
      padding: 15px; /* Increased padding for input */
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    .modal-box .form-actions {
      margin-top: 20px; /* Increased margin for more space */
    }
    .modal-box .form-actions button {
      width: 100%;
      padding: 15px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      color: #fff;
      background: #ff0000; /* Red color for the recovery button */
    }
    .modal-box .form-actions button:hover {
      background: #d00000;
    }
    .modal-box .extra-links {
      margin-top: 20px; /* Increased margin for more space */
      font-size: 14px;
    }
    .modal-box .extra-links a {
      color: #4070f4;
      text-decoration: none;
    }
    .modal-box .extra-links a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<section class="modal-section active">
  <div class="modal-box">
    <h2>Quên Mật Khẩu</h2>
    <form action="recover" method="post">
      <div class="form-group">
        <label for="recover-email">Email</label>
        <input type="email" id="recover-email" name="email" required>
      </div>
      <div class="form-actions">
        <button type="submit">Khôi Phục</button>
      </div>
    </form>
    <div class="extra-links">
      Bạn đã nhớ mật khẩu? <a href="Login.jsp">Trở về đăng nhập</a>
    </div>
  </div>
</section>
<script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
</body>
</html>
