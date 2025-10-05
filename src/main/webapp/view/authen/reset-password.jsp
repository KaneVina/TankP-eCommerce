<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <title>TankP</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="Tank - Bootstrap eCommerce Template" />
        <meta name="author" content="SW-THEMES" />

        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />

        <!-- Main CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
    </head>
    <style>
        .form-footer .btn {
            width: auto !important;
            min-width: 120px;
        }
        .form-footer {
            margin-top: 15px;
        }
        .form-footer p {
            margin: 0;
            flex-grow: 1;
        }
    </style>

    <body> 
        <jsp:include page="/view/common/header.jsp"/>
        <main class="main">
            <div class="page-header">
                <div class="container d-flex flex-column align-items-center">
                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                        <div class="container">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="demo4.html">Home</a></li>
                                <li class="breadcrumb-item">
                                    <a href="category.html">Shop</a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">My Account</a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">Forgot Password</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Verify OTP
                                </li>
                            </ol>
                        </div>
                    </nav>

                    <h1>Reset Password</h1>
                </div>
            </div>

            <div class="container reset-password-container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="feature-box border-top-primary">
                            <div class="feature-box-content">
                                <form class="mb-0" action="#">
                                    <div class="form-group">
                                        <label for="acc-new-password" class="font-weight-normal">
                                            New Password
                                        </label>
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="acc-new-password"
                                            name="acc-new-password"
                                            required
                                            />
                                    </div>

                                    <div class="form-group">
                                        <label
                                            for="acc-confirm-password"
                                            class="font-weight-normal"
                                            >
                                            Confirm New Password
                                        </label>
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="acc-confirm-password"
                                            name="acc-confirm-password"
                                            required
                                            />
                                    </div>

                                    <!-- Footer -->
                                    <div class="form-footer d-flex align-items-center">
                                        <p>
                                            Remember your password?
                                            <a href="#">Login</a>
                                        </p>
                                        <button
                                            type="submit"
                                            class="btn btn-sm btn-primary font-weight-normal text-transform-none ml-auto"
                                            >
                                            Reset Password
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="/view/common/footer.jsp"/>
    </body>
    <!-- End .main -->

    <!--loading-->
    <jsp:include page="/view/common/loading.jsp"/> 

    <!-- Plugins JS File -->
    <script
        data-cfasync="false"
        src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"
    ></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>

    <!-- Main JS File -->
    <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
</body>
</html>

F