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
        <meta name="description" content="Tank eCommerce Template" />
        <meta name="author" content="SW-THEMES" />

        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
        <!-- favicon -->
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
    </head>

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
                                <li class="breadcrumb-item active" aria-current="page">
                                    My Account
                                </li>
                            </ol>
                        </div>
                    </nav>

                    <h1>Forgot Password</h1>
                </div>
            </div>

            <div class="container reset-password-container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="feature-box border-top-primary">
                            <div class="feature-box-content">
                                <form class="mb-0" action="#">
                                    <p>
                                        Forgot your password? Enter your registered email address
                                        below, and TankP will send you OTP to securely reset your
                                        account.
                                    </p>
                                    <div class="form-group mb-0">
                                        <label for="reset-email" class="font-weight-normal"
                                               >Email</label
                                        >
                                        <input
                                            type="email"
                                            class="form-control"
                                            id="reset-email"
                                            name="reset-email"
                                            required
                                            />
                                    </div>

                                    <div class="form-footer mb-0">
                                        <a href="login.html">Click here to login</a>
                                        <button
                                            type="button"
                                            class="btn btn-primary btn-sm form-footer-right font-weight-normal text-transform-none mr-0"
                                            >
                                            Send OTP
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

