

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="Header.jsp"></jsp:include>
<%--3--%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/home.css">
</head>


<section class="h-100 gradient-custom">

    <div class="container py-5">
        <div class="row d-flex justify-content-center my-4">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0">Cart - items</h5>
                    </div>
                    <div class="card-body">
                        <c:forEach items="${listpro}" var="product" >
                        <div class="row">
                            <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                                <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                                    <img src="${product.url}" class="w-100" alt="Blue Jeans Jacket" />
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                                <p><strong>${product.title}</strong></p>
                                <p>${product.color}</p>
                                <p>${product.ram}</p>

                                <form action="deleteproductincart" method="post">
                                <button type="submit" name="delete" value="${product.productID}"class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip" title="Remove item" style="background-color: red">
                                    <i class="fas fa-trash"></i>
                                </button>
                                </form>
                            </div>
                            <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                                <div class="d-flex mb-4" style="max-width: 300px">
                                    <button class="btn btn-primary px-3 me-2"style="background-color: red;" onclick="this.parentNode.querySelector('input[type=number]').stepDown() ">
                                      <i class="fas fa-minus"></i>
                                    </button>

                                    <div class="form-outline">
                                        <input id="form1" min="0" name="quantity" value="${product.quantity}" type="number" class="form-control" />
                                        <label class="form-label" for="form1">Quantity</label>
                                    </div>

                                    <button class="btn btn-primary px-3 ms-2"style="background-color: red;" onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                      <i class="fas fa-plus"></i>
                                    </button>
                                </div>
                                <p class="text-start text-md-center">
                                    <strong>${product.price}<sup>$</sup></strong>
                                </p>
                            </div>
                        </div>
                        <hr class="my-4" />
                        </c:forEach>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-body">
                        <p><strong>Expected shipping delivery</strong></p>
                        <p class="mb-0">12.10.2020 - 14.10.2020</p>
                    </div>
                </div>
                <div class="card mb-4 mb-lg-0">
                    <div class="card-body">
                        <p><strong>We accept</strong></p>
                        <img class="me-2" width="45px" src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg" alt="Visa" />
                        <img class="me-2" width="45px" src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg" alt="American Express" />
                        <img class="me-2" width="45px" src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg" alt="Mastercard" />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0">Summary</h5>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">Products<span>${total}<sup>$</sup></span></li>
                            <li class="list-group-item d-flex justify-content-between align-items-center px-0">Shipping<span>Free</span></li>
                            <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                <div>
                                    <strong>Total amount</strong>
                                    <strong> <p class="mb-0">(including VAT)</p> </strong>
                                </div>
                                <span><strong>${total}<sup>$</sup></strong></span>
                            </li>
                        </ul>
                        <button type="button" class="btn btn-primary btn-lg btn-block" style="background-color: red;">Go to checkout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- =============================footer============================================ -->
<jsp:include page="Footer.jsp"></jsp:include>