<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 11/28/2023
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .vertical-line {
            position: relative;
            width: 0.5px; /* Độ rộng của đường thẳng */
            height: 100px; /* Chiều cao của đường thẳng */
        }

        .vertical-line::before {
            content: '';
            position: absolute;
            top: 0;
            left: 50%; /* Độ dịch chuyển đường thẳng từ trái sang phải */
            transform: translateX(-50%);
            border-left: 1px solid #000; /* Màu và độ rộng của đường thẳng */
            height: 100%;
        }
    </style>
</head>
<body>
<div class="vertical-line"></div>
</body>
</html>

