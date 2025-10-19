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
        <style>
            /* Overlay GIF */
            #success-overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: #fff;
                display: flex;
                justify-content: center;
                align-items: center;
                z-index: 9999;
            }
            #success-overlay img {
                max-width: 400px;
            }
            #order-content {
                display: none;
            }
        </style>
    </head>

    <body>
        <jsp:include page="../common/header.jsp"></jsp:include>
            <!-- Overlay GIF -->
            <div id="success-overlay">
                <img src="${pageContext.request.contextPath}/assets/gif/success.gif" alt="Success" />
        </div>

        <!-- Main content -->
        <main class="main main-test" id="order-content">
            <div class="container checkout-container">
                <ul
                    class="checkout-progress-bar d-flex justify-content-center flex-wrap"
                    >
                    <li><a href="cart.html">Shopping Cart</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                    <li class="active"><a href="#">Order Complete</a></li>
                </ul>

                <div class="order-success text-center mt-5 mb-5">
                    <!-- Success Icon -->
                    <div class="d-flex justify-content-center mb-3">
                        <img
                            src="${pageContext.request.contextPath}/assets/images/icons/check.png"
                            alt="Success"
                            style="width: 80px; height: 80px"
                            />
                    </div>

                    <!-- Success Message -->
                    <h2 class="fw-bold text-dark mb-2">
                        YOUR ORDER HAS BEEN PLACED
                        <b style="color: #029ef2">SUCCESSFULLY!</b>
                    </h2>
                    <p class="text-muted mb-4">
                        Your order has been placed successfully and is now being processed.
                        Thank you for shopping with
                        <span style="color: #029ef2">TankP</span>!
                    </p>

                    <!-- Action Buttons -->
                    <div class="form-footer mt-3 d-flex justify-content-center gap-3">
                        <a
                            href="index.html"
                            class="btn btn-dark rounded-0"
                            style="width: 200px"
                            >Back to Home
                        </a>
                        <a
                            href="order-history.html"
                            class="btn btn-outline-dark rounded-0"
                            style="width: 200px"
                            >View Order History
                        </a>
                    </div>
                </div>
            </div>
        </main>

        <!-- Footer Start -->
        <jsp:include page="../common/footer.jsp"></jsp:include>
            <!--NO loading-->
        <!-- mobile-menu-container -->
        <jsp:include page="../common/mobile-menu.jsp"></jsp:include>

            <!-- Plugins JS File -->
            <script>
                window.addEventListener("load", function () {
                    setTimeout(function () {
                        document.getElementById("success-overlay").style.display = "none";
                        document.getElementById("order-content").style.display = "block";
                    }, 2000);
                });
            </script>
            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>
