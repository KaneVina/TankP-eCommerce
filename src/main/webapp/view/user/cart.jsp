<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <meta
        http-equiv="content-type"
        content="text/html;charset=UTF-8"/>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <title>TankP eCommerce</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="TankP eCommerce" />
        <meta name="author" content="SW-THEMES" />

        <!-- CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/simple-line-icons/css/simple-line-icons.min.css"/>
        <!-- favicon -->
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
    </head>

    <body>
        <jsp:include page="../common/header.jsp"></jsp:include>
            <main class="main">
                <div class="container">
                    <ul class="checkout-progress-bar d-flex justify-content-center flex-wrap">
                        <li class="active"><a href="cart.html">Shopping Cart</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                        <li class="disabled"><a href="cart.html">Order Complete</a></li>
                    </ul>

                    <div class="row">
                        <div class="col-lg-8">
                            <div class="cart-table-container">
                                <table class="table table-cart">
                                    <thead>
                                        <tr>
                                            <th class="thumbnail-col"></th>
                                            <th class="product-col">Product</th>
                                            <th class="price-col">Price</th>
                                            <th class="qty-col">Quantity</th>
                                            <th class="text-right">Subtotal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="product-row">
                                            <td>
                                                <figure class="product-image-container">
                                                    <a href="product.html" class="product-image">
                                                        <img src="${pageContext.request.contextPath}/assets/images/products/product-4.jpg"
                                                         alt="product"/>
                                                </a>
                                                <a href="#" class="btn-remove icon-cancel" title="Remove Product"></a>
                                            </figure>
                                        </td>
                                        <td class="product-col">
                                            <h5 class="product-title">
                                                <a href="product.html">Men Watch</a>
                                            </h5>
                                        </td>
                                        <td>$17.90</td>
                                        <td>
                                            <div class="product-single-qty">
                                                <input class="horizontal-quantity form-control" type="text"/>
                                            </div>
                                            <!-- End .product-single-qty -->
                                        </td>
                                        <td class="text-right">
                                            <span class="subtotal-price">$17.90</span>
                                        </td>
                                    </tr>

                                    <tr class="product-row">
                                        <td>
                                            <figure class="product-image-container">
                                                <a href="product.html" class="product-image">
                                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg" alt="product"/>
                                                </a>

                                                <a href="#" class="btn-remove icon-cancel" title="Remove Product"></a>
                                            </figure>
                                        </td>
                                        <td class="product-col">
                                            <h5 class="product-title">
                                                <a href="product.html">Men Watch</a>
                                            </h5>
                                        </td>
                                        <td>$17.90</td>
                                        <td>
                                            <div class="product-single-qty">
                                                <input class="horizontal-quantity form-control" type="text"/>
                                            </div>
                                            <!-- End .product-single-qty -->
                                        </td>
                                        <td class="text-right">
                                            <span class="subtotal-price">$17.90</span>
                                        </td>
                                    </tr>

                                    <tr class="product-row">
                                        <td>
                                            <figure class="product-image-container">
                                                <a href="product.html" class="product-image">
                                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-6.jpg" alt="product"/>
                                                </a>

                                                <a href="#" class="btn-remove icon-cancel" title="Remove Product"></a>
                                            </figure>
                                        </td>
                                        <td class="product-col">
                                            <h5 class="product-title">
                                                <a href="product.html">Men Black Gentle Belt</a>
                                            </h5>
                                        </td>
                                        <td>$17.90</td>
                                        <td>
                                            <div class="product-single-qty">
                                                <input
                                                    class="horizontal-quantity form-control"
                                                    type="text"
                                                    />
                                            </div>
                                            <!-- End .product-single-qty -->
                                        </td>
                                        <td class="text-right">
                                            <span class="subtotal-price">$17.90</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- End .cart-table-container -->
                    </div>
                    <!-- End .col-lg-8 -->

                    <div class="col-lg-4">
                        <div class="cart-summary">
                            <h3>CART TOTALS</h3>

                            <table class="table table-totals">
                                <tbody>
                                    <tr>
                                        <td>Product quantity</td>
                                        <td>4</td>
                                    </tr>
                                </tbody>

                                <tfoot>
                                    <tr>
                                        <td>Total</td>
                                        <td>$17.90</td>
                                    </tr>
                                </tfoot>
                            </table>

                            <div class="checkout-methods">
                                <a href="cart.html" class="btn btn-block btn-dark"
                                   >Proceed to Checkout <i class="fa fa-arrow-right"></i
                                    ></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- Footer Start -->
        <jsp:include page="../common/footer.jsp"></jsp:include>
            <!--loading-->
        <jsp:include page="../common/loading.jsp"/> 
        <!-- mobile-menu-container -->
        <jsp:include page="../common/mobile-menu.jsp"></jsp:include>

            <!-- Plugins JS File -->
        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>
