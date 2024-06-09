<!-- Login.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login/Register Form</title>
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
        .modal-box {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            max-width: 500px;
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
            margin-bottom: 15px;
            text-align: left;
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
            box-sizing: border-box;
        }
        .modal-box .form-actions {
            margin-top: 15px;
        }
        .modal-box .form-actions button {
            width: 100%;
            padding: 10px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            color: #fff;
        }
        .modal-box .form-actions .btn-primary {
            background: #4070f4;
        }
        .modal-box .form-actions .btn-primary:hover {
            background: #265df2;
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
    </style>
</head>
<body>
<section class="modal-section active">
    <div class="modal-box">
        <h2>Đăng Nhập</h2>
        <div class="form-group">
            <label for="login-email">Email</label>
            <input type="email" id="login-email" name="email">
        </div>
        <div class="form-group">
            <label for="login-password">Mật khẩu</label>
            <input type="password" id="login-password" name="password">
        </div>
        <div class="form-actions">
            <button class="btn-primary">Đăng Nhập</button>
        </div>
        <div class="or-text">hoặc đăng nhập bằng</div>
        <div class="social-login">
            <button class="btn-google"><i class="fab fa-google"></i>Google</button>
            <button class="btn-facebook"><i class="fab fa-facebook-f"></i>Facebook</button>
        </div>
    </div>
</section>
<script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
<%--<script>--%>
<%--    document.querySelector(".modal-section").addEventListener("click", (event) => {--%>
<%--        if (event.target.classList.contains("modal-section")) {--%>
<%--            document.querySelector(".modal-section").classList.remove("active");--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>
</body>
</html>
