<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>TankP eCommerce</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="TankP - eCommerce Template">
        <meta name="author" content="SW-THEMES">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/icons/favicon.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upDashBoard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/simple-line-icons/css/simple-line-icons.min.css">
    </head>

    <body>
        <jsp:include page="../common/header.jsp" />
        <main class="main">
            <div class="page-header">
                <div class="container d-flex flex-column align-items-center">
                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                        <div class="container">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="demo4.html">Home</a></li>
                                <li class="breadcrumb-item"><a href="category.html">Shop</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Admin Area</li>
                            </ol>
                        </div>
                    </nav>

                    <h1>Dash Board</h1>
                </div>
            </div>

            <div class="container account-container custom-account-container">
                <div class="row">
                    <jsp:include page="/view/common/dashboard-sidebar.jsp" />

                    <div class="col-lg-10 order-lg-last order-1 tab-content">
                        <div class="tab-pane fade show active" id="dashboard" role="tabpanel">
                            <div class="dashboard-content">
                                <p>
                                    Hello <strong style="color: #0088CC;">TankP Staff</strong> (not
                                    <strong class="text-dark">TankP Staff</strong>?
                                    <a href="login.html" class="btn btn-link">Log out</a>)
                                </p>

                                <p>
                                    From your account dashboard you can view your
                                    <a class="btn btn-link link-to-tab" href="#order">recent orders</a>,
                                    manage your
                                    <a class="btn btn-link link-to-tab" href="#address">shipping and billing
                                        addresses</a>, and
                                    <a class="btn btn-link link-to-tab" href="#edit">edit your password and account
                                        details.</a>
                                </p>

                                <div class="mb-4"></div>

                                <div class="row row-lg">
                                    <div class="col-6 col-md-4">
                                        <div class="feature-box text-center pb-4">
                                            <a href="${pageContext.request.contextPath}/dashboard/product" class="link-to-tab"><i class="fas fa-list"></i></a>
                                            <div class="feature-box-content">
                                                <h3>Product Management</h3>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-4">
                                        <div class="feature-box text-center pb-4">
                                            <a href="${pageContext.request.contextPath}/dashboard/order" class="link-to-tab"><i class="fas fa-boxes"></i></a>
                                            <div class="feature-box-content">
                                                <h3>Order Management</h3>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-4">
                                        <div class="feature-box text-center pb-4">
                                            <a href="${pageContext.request.contextPath}/dashboard/account" class="link-to-tab"><i class="fas fa-user"></i></a>
                                            <div class="feature-box-content">
                                                <h3>Account Management</h3>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-4">
                                        <div class="feature-box text-center pb-4">
                                            <a href="my-profile.html" class="link-to-tab"><i class="fas fa-id-card"></i></a>
                                            <div class="feature-box-content p-0">
                                                <h3>MY PROFILE</h3>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-4">
                                        <div class="feature-box text-center pb-4">
                                            <a href="login.html"><i class="fas fa-sign-out-alt"></i></a>
                                            <div class="feature-box-content">
                                                <h3>LOGOUT</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end row -->
                            </div> <!-- end dashboard-content -->
                        </div> <!-- end tab-pane -->
                    </div> <!-- end col-lg-10 -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </main>
        <!-- Footer Start -->
        <jsp:include page="../common/footer.jsp"></jsp:include>

            <!--loading-->
        <jsp:include page="../common/loading.jsp"/> 

        <!-- mobile-menu-container -->
        <jsp:include page="../common/mobile-menu.jsp"></jsp:include>

            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    </body>
</html>
