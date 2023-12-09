<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Thêm các thẻ meta và link CSS ở đây nếu cần -->
    <link rel="stylesheet" href="css/brand.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<section class="product gallery-one" style="margin-top: 40px">
    <div class="container-product">
        <div class="product-gallery-one-content">
            <div class="product-gallery-one-content-title">
                <h2>Laptop Chính Hãng</h2>
                <ul>
                    <li><a href="" class="">ASUS TUF GAMING</a></li>
                    <li><a href="" class="">HP VICTUS</a></li>
                    <li><a href="" class="">LENOVO MOD</a></li>
                    <li><a href="" class="">XEM TẤT CẢ</a></li>
                </ul>
            </div>

            <div class="product-gallery-one-content-product">
                <c:forEach items="${listP}" var="o">
                    <div class="product-gallery-one-content-product-item" onclick="location.href='detail?pid=${o.productID}';" style="cursor: pointer;">
                        <img src="${o.url1}" alt="${o.title}">
                        <div class="product-gallery-one-content-product-item-text">
                            <ul>
                                <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                <li><a href="#" title="View Product"></a>${o.title}</li>
                                <li><a href="">${o.price}<sup>đ</sup></a><span>${o.price}</span></li>
                                <li>${o.price} <sup>đ</sup></li>
                                <li>
                                    <!-- Đánh giá sao -->
                                    <i class="ti-github"></i>
                                    <i class="ti-github"></i>
                                    <i class="ti-github"></i>
                                    <i class="ti-github"></i>
                                    <i class="ti-github"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<jsp:include page="Footer.jsp"></jsp:include>

<!-- Kịch bản JavaScript (nếu có) -->
<script src="javascript/index.js"></script>
</body>
</html>
