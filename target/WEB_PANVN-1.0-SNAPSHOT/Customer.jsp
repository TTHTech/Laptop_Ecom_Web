<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 11/28/2023
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="css/admin-style.css" />
    <link rel="stylesheet" type="text/css" href="css/content-5-page.css" />
    <link rel="stylesheet" type="text/css" href="css/component-menu-admin.css"/>
    <link rel="stylesheet" type="text/css" href="css/responsive-customer.css"/>
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>
    <title>Document</title>
</head>

<body>
<div class="container-fluid table h-100">
    <div class="row table-row h-100">
        <div class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top d-none d-sm-none d-md-block d-lg-block d-xl-block" id="side-menu-temp"></div>
        <div class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top h-100 fixed-top d-none d-sm-none d-md-block d-lg-block d-xl-block" id="side-menu">
            <div class="top-menu d-none d-lg-block">
                <span class="logo"><h2>Hello, Admin</h2></span>
            </div>
            <ul>
                <li class="link">
                    <a href="admin">
                        <span class="fas fa-home"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Trang chủ</span>
                    </a>
                </li>

                <li class="link ads-button">
                    <a href="custumer">
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
                <li class="link">
                    <a href="AddProduct.jsp">
                        <span class="fas fa-plus-circle"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Thêm mới</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-12 col-sm-12 col-md-11 col-lg-10 col-xl-10 table-cell float-none align-top p-0" id="col-content">
            <header class="nav-header row m-0">
                <div class="content-left col-2 col-sm-6 col-md-7 col-lg-3 col-xl-4 pr-0 d-flex align-items-center">
                    <nav class="navbar-default d-block d-sm-block d-md-none d-lg-none d-xl-none d-none">
                        <button class="navbar-toggler collapsed p-0" type="button" data-toggle="offcanvas" data-target="#side-menu">
                            <span class="fas fa-bars"></span>
                        </button>
                    </nav>
                    <input class="header-search-field d-none d-md-block ml-3" type="text" placeholder="Tìm kiếm"/>
                </div>

                <div class="content-right row ml-0 mr-0 col-10 col-sm-6 col-md-5 col-lg-9 col-xl-8 d-flex align-items-center">
                    <div class="col-0 col-lg-6 text-right d-none d-lg-block">
                        Chào mừng đến trang quản lý
                    </div>
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
                <div id="content">
                    <header>
                        <h5 class="mb-0">Danh sách thông tin khách hàng</h5>
                    </header>

                    <div class="content-inner">
                        <div class="row search-row ml-0 mr-0">
                            <div class="col-md-12 p-0">
                                <div class="input-group input-group-sm mb-3">
                                    <input
                                            type="text"
                                            class="form-control search-field"
                                            id="search"
                                            placeholder="Tên khách hàng"
                                            aria-label="Recipient's username"
                                            aria-describedby="basic-addon2"
                                    />
                                    <div class="input-group-append">
                                        <button class="btn btn-success" type="button">
                                            Tìm kiếm
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <table class="table table-responsive-xl mb-4">
                            <thead>
                            <tr>
                                <th>Họ tên khách hàng</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Thời gian đăng ký</th>
<%--                                <th class="text-center">Tác vụ</th>--%>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${listCustomer}" var="user" >
                            <tr>
                                <td>${user.fullName}</td>
                                <td>${user.email}</td>
                                <td>${user.phone}</td>
                                <td>${user.address}</td>
                                <td>${user.createdAt}</td>
<%--                                <td align="center">--%>
<%--                                    <button class="btn btn-sm btn-danger" type="button">--%>
<%--                                        <i class="fas fa-trash-alt"></i>--%>
<%--                                    </button>--%>
<%--                                </td>--%>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="row justify-content-center">
                            <nav>
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">4</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">5</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <footer id="admin-footer">
            </footer>
        </div>
    </div>
</div>
<script
        src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"
></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"
></script>
<script src="../js/nav-bar-side-menu.js"></script>
</body>
</html>

