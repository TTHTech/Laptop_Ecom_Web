<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 11/28/2023
  Time: 9:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
          integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/admin-style.css">
    <link rel="stylesheet" type="text/css" href="css/products.css">
    <link rel="stylesheet" type="text/css" href="css/responsive-add-product.css">
    <link rel="stylesheet" type="text/css" href="chosen_v1.8.7/chosen.min.css">
    <link rel="stylesheet" type="text/css" href="css/component-menu-admin.css">
    <link
            href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    />
    <title>Document</title>
    <style>
        .custom-button {
            background-color: #22ff00; /* Màu nền là #22ff00 */
            color: white; /* Màu chữ là trắng */
            padding: 10px 20px; /* Kích thước padding */
            font-size: 16px; /* Kích thước font chữ */
            border: none; /* Loại bỏ viền */
            cursor: pointer; /* Hiển thị con trỏ khi di chuột vào button */
        }
    </style>
</head>

<body>
<div class="container-fluid table h-100">
    <div class="row table-row h-100">
        <div class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top
            d-none d-sm-none d-md-block d-lg-block d-xl-block" id="side-menu-temp"></div>


        <div class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top h-100 fixed-top
            d-none d-sm-none d-md-block d-lg-block d-xl-block" id="side-menu">
            <div class="top-menu d-none d-lg-block"><span class="logo"><h2>Hello, Admin</h2></span></div>
            <ul>
                <li class="link">
                    <a href="admin" class="active">
                        <span class="fas fa-home"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Trang chủ</span>
                    </a>
                </li>

                <li class="link">
                    <a href="customer">
                        <span class="fas fa-users"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Khách hàng</span>
                    </a>
                </li>


                <li class="link">
                    <a href="orderlist">
                        <span class="fas fa-shopping-cart"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Đơn hàng</span>
                        <span class="badge badge-success d-none d-sm-none d-md-none d-lg-inline d-xl-inline">40</span>
                    </a>
                </li>
                <li class="link">
                    <a href="products">
                        <span class="fas fa-tags"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Sản phẩm</span>
                        <span class="badge badge-success d-none d-sm-none d-md-none d-lg-inline d-xl-inline">20</span>
                    </a>
                </li>
                <li class="link ads-button">
                    <a href="AddProduct.jsp">
                        <span class="fas fa-plus-circle"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Thêm mới</span>
                    </a>
                </li>

            </ul>
        </div>
        <div class="col-12 col-sm-12 col-md-11 col-lg-10 col-xl-10 table-cell float-none align-top p-0"
             id="col-content">

            <header class="nav-header row m-0">
                <div class="content-left col-2 col-sm-6 col-md-7 col-lg-3 col-xl-4 pr-0 d-flex align-items-center">
                    <nav class="navbar-default d-block d-sm-block d-md-none d-lg-none d-xl-none d-none">
                        <button class="navbar-toggler collapsed p-0" type="button" data-toggle="offcanvas"
                                data-target="#side-menu">
                            <span class="fas fa-bars"></span>
                        </button>
                    </nav>
                    <input class="header-search-field d-none d-md-block ml-3" type="text" placeholder="Tìm kiếm">
                </div>

                <div class="content-right row ml-0 mr-0 col-10 col-sm-6 col-md-5 col-lg-9 col-xl-8 d-flex align-items-center">
                    <div class="col-0 col-lg-6 text-right d-none d-lg-block">Chào mừng đến trang thêm sản phẩm</div>
                    <div class="col-12 col-lg-6 text-right">
                        <a href="#" class="mr-4">
                            <span class="fas fa-bell"></span>
                            <span class="badge badge-success label-message">3</span>
                        </a>
                        <a href="#" class="mr-5">
                            <span class="fas fa-envelope"></span>
                            <span class="badge badge-success label-message">3</span>
                        </a>
                        <a href="#" class="logout">
                            <span class="fas fa-sign-out-alt"></span>
                            &nbsp;Đăng xuất
                        </a>
                    </div>
                </div>
            </header>
            <div id="dashboard-con">
                    <div class="card mt-3">
                        <div class="card-header">
                            <h5 class="mb-0">Thông tin sản phẩm</h5>
                        </div>
                        <div class="card-body">
                            <form action="addproducts" method="post">
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"><b>Hình ảnh 1</b></label>
                                    <div class="col-sm-10">
                                        <input type="file" name="url1" class="form-control-file" id="Hinh1">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"><b>Hình ảnh 2</b></label>
                                    <div class="col-sm-10">
                                        <input type="file" name="url2" class="form-control-file" id="Hinh2">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"><b>Hình ảnh 3</b></label>
                                    <div class="col-sm-10">
                                        <input type="file" name="url3" class="form-control-file" id="Hinh3">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"><b>Hình ảnh 4</b></label>
                                    <div class="col-sm-10">
                                        <input type="file" name="url4" class="form-control-file" id="Hinh4">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="title" class="col-sm-2 col-form-label"><b>Tên sản phẩm</b></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="title" class="form-control" id="title"
                                               placeholder="Nhập vào tên sản phẩm">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="price" class="col-sm-2 col-form-label"><b>Giá sản phẩm</b></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="price" class="form-control" id="price"
                                               placeholder="2000">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="description" class="col-sm-2 col-form-label"><b>Mô tả sản
                                        phẩm</b></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="description" class="form-control" id="description"
                                               placeholder="Mô tả sản phẩm">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="brandID" class="col-sm-2 col-form-label"><b>Mã Brand</b></label>
                                    <div class="col-sm-10">
                                        <select name="brandID" class="custom-select my-1 mr-sm-2" id="brandID">
                                            <option selected>Thuộc loại Brand</option>
                                            <option value="1">Laptop Apple</option>
                                            <option value="2">Laptop Asus</option>
                                            <option value="3">Laptop Dell</option>
                                            <option value="4">Laptop HP</option>
                                            <option value="5">Laptop Lenovo</option>
                                            <option value="6">Laptop Acer</option>
                                            <option value="7">Laptop Microsoft</option>
                                            <option value="8">Laptop MSI</option>
                                            <option value="9">Laptop Samsung</option>
                                            <option value="10">Laptop Razer</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="color" class="col-sm-2 col-form-label"><b>Màu sắc</b></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="color" class="form-control" id="color"
                                               placeholder="Màu vàng">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="processor" class="col-sm-2 col-form-label"><b>Loại CPU</b></label>
                                    <div class="col-sm-10">
                                        <select name="processor" class="custom-select my-1 mr-sm-2" id="processor">
                                            <option selected>Loại CPU</option>
                                            <option value="Intel Core i3">Intel Core i3</option>
                                            <option value="Intel Core i5">Intel Core i5</option>
                                            <option value="Intel Core i7">Intel Core i7</option>
                                            <option value="Intel Core i9">Intel Core i9</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ram" class="col-sm-2 col-form-label"><b>Dung lượng Ram</b></label>
                                    <div class="col-sm-10">
                                        <select name="ram" class="custom-select my-1 mr-sm-2" id="ram">
                                            <option selected>Dung lượng Ram laptop</option>
                                            <option value="8GB">8GB</option>
                                            <option value="16GB">16GB</option>
                                            <option value="32GB">32GB</option>
                                            <option value="64GB">64GB</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="storage" class="col-sm-2 col-form-label"><b>Dung lượng ổ đĩa</b></label>
                                    <div class="col-sm-10">
                                        <select name="storage" class="custom-select my-1 mr-sm-2" id="storage">
                                            <option selected>Dung lượng ổ đĩa</option>
                                            <option value="128GB SSD">128GB SSD</option>
                                            <option value="256GB SSD">256GB SSD</option>
                                            <option value="512GB SSD">512GB SSD</option>
                                            <option value="1TB SSD">1TB SSD</option>
                                            <option value="128GB HDD">128GB HDD</option>
                                            <option value="256GB HDD">256GB HDD</option>
                                            <option value="512GB HDD">512GB HDD</option>
                                            <option value="1TB HDD">1TB HDD</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="graphicsCard" class="col-sm-2 col-form-label"><b>Card đồ họa</b></label>
                                    <div class="col-sm-10">
                                        <select name="graphicsCard" class="custom-select my-1 mr-sm-2"
                                                id="graphicsCard">
                                            <option selected>Card đồ họa laptop</option>
                                            <option value="NVIDIA GTX 1650">NVIDIA GTX 1650</option>
                                            <option value="Intel Iris Plus Graphics">Intel Iris Plus Graphics</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="operatingSystem" class="col-sm-2 col-form-label"><b>Hệ điều
                                        hành</b></label>
                                    <div class="col-sm-10">
                                        <select name="operatingSystem" class="custom-select my-1 mr-sm-2"
                                                id="operatingSystem">
                                            <option selected>Hệ điều hành laptop</option>
                                            <option value="Windows 10">Windows 10</option>
                                            <option value="Windows 11">Windows 11</option>
                                            <option value="Windows 12">Windows 12</option>
                                            <option value="Ubuntu">Ubuntu</option>
                                            <option value="Linux">Linux</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="prdescription" class="col-sm-2 col-form-label"><b>Loại màng
                                        hình</b></label>
                                    <div class="col-sm-10">
                                        <select name="prdescription" class="custom-select my-1 mr-sm-2"
                                                id="prdescription">
                                            <option selected>Loại màng hình laptop</option>
                                            <option value="High-performance laptop">High-performance laptop</option>
                                            <option value="Budget-friendly laptop">Budget-friendly laptop</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="discount" class="col-sm-2 col-form-label"><b>Giảm giá theo phần trăm</b></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="discount" class="form-control" id="discount"
                                               placeholder="10">
                                    </div>
                                </div>
                                <div class="custom-button">
                                    <input type="submit" class="btn btn-success" value="Save">
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
            <footer id="admin-footer">
            </footer>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script src="../chosen_v1.8.7/chosen.jquery.min.js"></script>
<script src="../js/chosen-select.js"></script>
<script src="../ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace('contain');
</script>
<script src="../js/nav-bar-side-menu.js"></script>
</body>
</html>
