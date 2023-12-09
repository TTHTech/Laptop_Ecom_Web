<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 11/17/2023
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Product Card/Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/SanPham.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <style>
        .containerr {
            display: flex;
            /*align-items: center;*/
        }
        .containerr > * {
            margin-left: 40px;
        }
        .breadcrumb-item {
            list-style: none;
            display: flex;
            align-items: center;
        }

        .breadcrumb-item a {
            text-decoration: none;
            color: #000; /* Màu chữ mặc định */
            font-size: 1em; /* Font size gấp đôi */
        }

        .breadcrumb-item a:hover {
            color: #007bff; /* Màu chữ khi di chuột qua */
        }

    </style>
</head>
<body>
<header>
    <img src="SanPham_images/anh3.png" alt="">
</header>
<jsp:include page="Header.jsp"></jsp:include>
<!-- =============================Header============================================ -->
<div class="containerr">
    <li class="breadcrumb-item">
        <a href="home">Trang Chủ |></a>
        <a href="brand?brandID=${detail.brandID}"> Brand |></a>
        <p> ${detail.title} </P>
    </li>
</div>
<div class = "card-wrapper" style="background-color: white">
    <div class="vertical-line"></div>
    <div class = "card" style="background-color: white; margin-top: 40px">
        <div class = "product-imgs">
            <div class = "img-display">
                <div class = "img-showcase">
                    <img src = "${detail.url1}" alt = "Laptop">
                    <img src = "${detail.url2}" alt = "Laptop">
                    <img src = "${detail.url3}" alt = "Laptop">
                    <img src = "${detail.url4}" alt = "Laptop">
                </div>
            </div>
            <div class = "img-select">
                <div class = "img-item">
                    <a href = "#" data-id = "1">
                        <img src = "${detail.url1}" alt = "Laptop">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "2">
                        <img src = "${detail.url2}" alt = "Laptop">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "3">
                        <img src = "${detail.url3}" alt = "Laptop">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "4">
                        <img src = "${detail.url4}" alt = "Laptop">
                    </a>
                </div>
            </div>
        </div>
        <div class = "product-content">
            <h2>${detail.title}</h2>
            <div class = "product-detail">
                <table>
                    <h1>Thông tin cơ bản</h1>
                    <tr>${detail.description}</tr>
                    <h1>Thông số kỹ thuật</h1>
                    <tr>
                        <td class="label">CPU</td>
                        <td>:          |</td>
                        <td>${detail.processor}</td>
                    </tr>
                    <tr>
                        <td class="label">RAM</td>
                        <td>:          |</td>
                        <td>${detail.ram}</td>
                    </tr>
                    <tr>
                        <td class="label">Ổ cứng</td>
                        <td>:          |</td>
                        <td>${detail.storage}</td>
                    </tr>
                    <tr>
                        <td class="label">Card đồ họa</td>
                        <td>:          |</td>
                        <td>${detail.graphicsCard}</td>
                    </tr>
                    <tr>
                        <td class="label">Màng hình</td>
                        <td>:          |</td>
                        <td>${detail.prdescription}</td>
                    </tr>
                </table>
            </div>
            <div class = "product-price">
                <p class = "last-price">Giá cũ: <span>5000<sup>$</sup></span></p>
                <p class = "new-price">Giá mới: <span>${detail.price}<sup>$</sup></span></p>
            </div>
            <div class = "purchase-info">
                <form action="addproductstocart" method="post">
                <input type = "number" min = "0" value = "1" name="quantity">
                    <button type = "submit" class = "btn" name="add" value="${detail.productID}">
                        Thêm vào giỏ hàng <i class = "fas fa-shopping-cart"></i>
                    </button>
                </form>
<%--                <button type = "button" class = "btn">Mua ngay</button>--%>
            </div>
        </div>
    </div>
</div>
<!-- =============================footer============================================ -->
<jsp:include page="Footer.jsp"></jsp:include>
<script src="javascript/SanPham.js"></script>
</body>
</html>