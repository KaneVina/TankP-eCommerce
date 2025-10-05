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
            min-width: 100px;       /* chỉnh cái nút dài ngắn nè  */
        }
        .otp-input {
            width: 45px;
            height: 50px;
            font-size: 20px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 6px;
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
                                <li class="breadcrumb-item active" aria-current="page">
                                    Forgot Password
                                </li>
                            </ol>
                        </div>
                    </nav>

                    <h1>Verify OTP</h1>
                </div>
            </div>

            <div class="container reset-password-container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="feature-box border-top-primary">
                            <div class="feature-box-content">
                                <form class="mb-0" action="#">
                                    <!-- OTP input -->
                                    <div class="form-group text-center mb-3">
                                        <label for="otp" class="font-weight-normal d-block mb-2">
                                            Enter the OTP sent to your email
                                        </label>
                                        <div class="d-flex justify-content-between">
                                            <input type="text" class="otp-input" maxlength="1" required />
                                            <input type="text" class="otp-input" maxlength="1" required />
                                            <input type="text" class="otp-input" maxlength="1" required />
                                            <input type="text" class="otp-input" maxlength="1" required />
                                            <input type="text" class="otp-input" maxlength="1" required />
                                            <input type="text" class="otp-input" maxlength="1" required />
                                        </div>
                                    </div>

                                    <div class="form-footer mb-0 d-flex justify-content-between align-items-center">
                                        <p class="mb-0">
                                            Didn't receive the code?
                                            <a href="#">Resend OTP</a>
                                        </p>
                                        <button
                                            type="submit"
                                            class="btn btn-sm btn-primary font-weight-normal text-transform-none"
                                            >
                                            Verify
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

