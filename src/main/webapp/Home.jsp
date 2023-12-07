<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="Header.jsp"></jsp:include>
<!------------------------Section and slider--------------------------->
<section class="slider">
    <div class="container-var">
        <div class="slider-content">
            <div class="slider-content-ad-left">
                <li><a href=""><img src="https://file.hstatic.net/200000722513/file/pc_sticky_banner_left_bf9a8f5426f24bcb94543202db1ef6a5.jpg" alt=""></a></li>
            </div>
            <div class="slider-container-section">
                <section class="menu-bar">
                    <div class="container">
                        <div class="menu-bar-content">
                            <ul>
                                <c:forEach var="o" items="${listB}">
                                    <li><a href="brand?brandID=${o.brandID}"><i class="ti-github"></i>${o.brandName}<i class="ti-angle-right"></i></a></li>

                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </section>
            </div>
            <div class="slider-content-left">
                <div class="slider-content-left-top-contianer">
                    <div class="slider-content-left-top">
                        <a href=""><img src="https://file.hstatic.net/200000722513/file/gearvn-predator-fest-2023-banner_d0e1044ead844c2f9253907569720b47.jpg" alt=""></a>
                        <a href=""><img src="https://file.hstatic.net/200000722513/file/sale_luong_ve_-_slide_4004dc22bb6448b7ba1e4ca040f453d1.jpg" alt=""></a>
                        <a href=""><img src="https://file.hstatic.net/200000722513/file/pc_slider_a4c92be1fd2f42b68a4aa47c5b05e01e.png" alt=""></a>
                        <a href=""><img src="https://file.hstatic.net/200000722513/file/laptop_black_friday_788060f995674e7a989b01df267763a2.png" alt=""></a>
                        <a href=""><img src="https://file.hstatic.net/200000722513/file/man_hinh_slider_3_37fbd365f63c44a89fa2a63139209dba.png" alt=""></a>
                    </div>
                    <div class="slider-content-left-top-btn">
                        <i class="ti-angle-left"></i>
                        <i class="ti-angle-right"></i>
                    </div>
                </div>
                <div class="slider-content-left-bottom">
                    <li class="active">ASUS RTX 4000</li>
                    <li>PC GAMING</li>
                    <li>SALE</li>
                    <li>HALLOWEEN</li>
                    <li>GAME</li>
                </div>
                <div class="slider-content-left-bottom-ad">
                    <li><a href=""><img src="https://file.hstatic.net/200000722513/file/pc_1_e3a0343f627c43e59ba6b8d2a7d63cbc.png" alt=""></a></li>
                    <li><a href=""><img src="https://file.hstatic.net/200000722513/file/right_2_-_asus_rog_ally_8a754b24bf2c448693b1a3d94d81ddd6.png" alt=""></a></li>
                </div>
            </div>
            <div class="slider-content-right">
                <li><a href=""><img src="https://file.hstatic.net/200000722513/file/pc_2_6a106e41d2854f86a0661367fd3a2c1b.png" alt=""></a></li>
                <li><a href=""><img src="https://file.hstatic.net/200000722513/file/laptop_gaming_0b68eaa4a81b4dc9a7153d23d941c125.png" alt=""></a></li>
                <li><a href=""><img src="https://file.hstatic.net/200000722513/file/laptop_van_phong_01332439ea334ec99715cb7f91973bfe.png" alt=""></a></li>
                <!-- <li><a href=""><img src="image/img4.jpg" alt=""></a></li> -->
            </div>
            <div class="slider-content-ad-right" >
                <li><a href=""><img src="https://file.hstatic.net/200000722513/file/banner_sticky_-_b1400ceae_bv3186w_52b7a4750b8d4cd99ee990c07792d852.png" alt=""></a></li>
            </div>
        </div>
    </div>
</section>
<section class="banner-one">
    <div class="container">
        <li><a href=""><img src="https://file.hstatic.net/200000722513/file/pc_3_8482c5a5d22e4a78be2a2f2351bdb800.png" alt=""></a></li>
        <li><a href=""><img src="https://file.hstatic.net/200000722513/file/ban-phim-co-homepage_708921960ed34559ad91e43d4fcd6051.png" alt=""></a></li>
        <li><a href=""><img src="https://file.hstatic.net/200000722513/file/sub_banner_3_-_chuot_gaming_8f5a97d8af894c919165ed7ef0e2cd77.png" alt=""></a></li>
        <li><a href=""><img src="https://file.hstatic.net/200000722513/file/sub_banner_2_-_man_hinh_may_tinh_ce1ffd3f60d84b748e909ff52901eb90.png" alt=""></a></li>
    </div>
</section>
<!-- ===============================slider product========================= -->
<section class="slider-product-one">
    <div class="container-var">
        <div class="slider-product-one-content">
            <div class="slider-product-one-content-title">
                <h2>GIỜ VÀNG DEAL SỐC</h2>
            </div>
            <div class="slider-product-one-content-container">
                <div class="slider-product-one-content-items-content">
                    <div class="slider-product-one-content-items" >
                        <c:forEach items="${five}" var="o" >
                            <div class="slider-product-one-content-item" onclick="location.href='detail?pid=${o.productID}';" style="cursor: pointer;">
                                <img src="${o.url1}" alt="" class="product-image">
                                <div class="slider-product-one-content-item-text">
                                    <ul>
                                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                        <li><a href="#" title="View Product"></a>${o.title}</li>
                                        <li><a href="">${o.price}<sup>$</sup></a><span>${o.price}<sup>$</sup></span></li>
                                        <li>${o.price} <sup>$</sup></li>
                                        <li>
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
                    <div class="slider-product-one-content-items" >
                        <c:forEach items="${one}" var="n" >
                            <div class="slider-product-one-content-item" onclick="location.href='detail?pid=${n.productID}';" style="cursor: pointer;">
                                <img src="${n.url1}" alt="" class="product-image">
                                <div class="slider-product-one-content-item-text">
                                    <ul>
                                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                        <li><a href="#" title="View Product"></a>${n.title}</li>
                                        <li><a href="">${n.price}<sup>$</sup></a><span>${n.price}<sup>$</sup></span></li>
                                        <li>${n.price} <sup>$</sup></li>
                                        <li>
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
                    <div class="slider-product-one-content-items" >
                        <c:forEach items="${two}" var="t" >
                            <div class="slider-product-one-content-item" onclick="location.href='detail?pid=${t.productID}';" style="cursor: pointer;">
                                <img src="${t.url1}" alt="" class="product-image">
                                <div class="slider-product-one-content-item-text">
                                    <ul>
                                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                        <li><a href="#" title="View Product"></a>${t.title}</li>
                                        <li><a href="">${t.price}<sup>$</sup></a><span>${t.price}<sup>$</sup></span></li>
                                        <li>${t.price} <sup>$</sup></li>
                                        <li>
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
                <div class="slider-product-one-content-btn">
                    <i class="ti-angle-left ti-angle-left-two"></i>
                    <i class="ti-angle-right ti-angle-right-two"></i>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- =======================product gallery============== -->
<section class="product gallery-one">
    <div class="container-product">
        <div class="product-gallery-one-content">
            <div class="product-gallery-one-content-title">
                <h2>Laptop gaming bán chạy</h2>
                <ul>
                    <li><a href="" class="">ASUS TUF GAMING</a></li>
                    <li><a href="" class="">HP VICTUS</a></li>
                    <li><a href="" class="">LENOVO MOD</a></li>
                    <li><a href="" class="">XEM TẤT CẢ</a></li>
                </ul>
            </div>
            <div class="product-gallery-one-content-product">
                <c:forEach items="${firstHalf}" var="o">
                    <div class="product-gallery-one-content-product-item" onclick="location.href='detail?pid=${o.productID}';" style="cursor: pointer;">
                        <img src="${o.url1}" alt="" class="product-image">
                        <div class="product-gallery-one-content-product-item-text">
                            <ul>
                                <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                <li><a href="#" title="View Product"></a>${o.title}</li>
                                <li><a href="">${o.price}<sup>đ</sup></a><span>${o.price}</span></li>
                                <li>${o.price} <sup>đ</sup></li>
                                <li>
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
<!-- product gallery two -->
<section class="product-gallery-two">
    <div class="container-product">
        <div class="product-gallery-two-content">
            <div class="product-gallery-two-content-right">
                <img src="https://file.hstatic.net/200000722513/file/banner_378x315_b3a7750b1248425591d0cb92380ba2d3.png" alt="">
            </div>
            <div class="product-gallery-two-content-left">
                <div class="product-gallery-two-content-left-top">
                    <h2>Màn Hình Gaming Lenovo giảm tới 38%</h2>
                    <li><a href="">Xem tất cả</a><i class = "ti-angle-right"></i></li>
                </div>
                <div class="product-gallery-two-content-left-bottom">
                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRKeWflmvwDHxMR6hZvOIy54Teoi3EYOqmv3PQyHZRpNvnocoX54oKn7zuYp0due2X-Whwp8f0AurA1aRrjI93scheqU4xZB7viCKY-Y0DE_wbsOaRSaFA6fWQVBMiSkYAglwTxNQ&usqp=CAc" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>
                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQN9s0waaf0mVhP8rAukPbKHqWEhJe22G9trH8HauVfXvhUO5BuECBbSAeFJ8Z1HoCvlb8VtzyZ38NtN4FYwfmFskZPP09GsJJYJXib-hML&usqp=CAE" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>

                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTQrPife2rk4muceJmSbwrZ3InpjZRMM-d2ejwUxUIpTLugB0dwmzsgk6wi9j2M3xLH1-XghoN6_ybhfMBts0rGGkGAWUAh_--u__mXHJTJdB5Icct9jsxFBQ&usqp=CAE" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>

                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTQrPife2rk4muceJmSbwrZ3InpjZRMM-d2ejwUxUIpTLugB0dwmzsgk6wi9j2M3xLH1-XghoN6_ybhfMBts0rGGkGAWUAh_--u__mXHJTJdB5Icct9jsxFBQ&usqp=CAE" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>
<!--==========================section product top footer======================== -->
<section class="product gallery-one">
    <div class="container-product">
        <div class="product-gallery-one-content">
            <div class="product-gallery-one-content-title">
                <h2>Laptop ASUS bán chạy</h2>
                <ul>
                    <li><a href="" class="">ASUS TUF GAMING</a></li>
                    <li><a href="" class="">HP VICTUS</a></li>
                    <li><a href="" class="">LENOVO MOD</a></li>
                    <li><a href="" class="">XEM TẤT CẢ</a></li>
                </ul>
            </div>
            <div class="product-gallery-one-content-product">
                <c:forEach items="${secondHalf}" var="o">
                    <div class="product-gallery-one-content-product-item" onclick="location.href='detail?pid=${o.productID}';" style="cursor: pointer;">
                        <img src="${o.url1}" alt="" class="product-image">
                        <div class="product-gallery-one-content-product-item-text">
                            <ul>
                                <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                <li><a href="#" title="View Product"></a>${o.title}</li>
                                <li><a href="">${o.price}<sup>$</sup></a><span>${o.price}</span></li>
                                <li>${o.price} <sup>đ</sup></li>
                                <li>
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


<!-- =============================footer============================================ -->
<jsp:include page="Footer.jsp"></jsp:include>
</div>
<script src ="javascript/index.js">
</script>
</body>
</html>
