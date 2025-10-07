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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link
            rel="stylesheet"
            type="text/css"
            href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
            />
        <!-- favicon -->
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
        <style>
            .form-control-custom {
                width: 100%;
                padding: 12px;
                border: 1px solid #ddd;
                border-radius: 8px;
                font-size: 15px;
                box-sizing: border-box;
            }

            .separator {
                display: flex;
                align-items: center;
                text-align: center;
                margin: 20px 0;
                color: #666;
                font-weight: 500;
            }

            .separator::before,
            .separator::after {
                content: "";
                flex: 1;
                border-bottom: 1px solid #ddd;
            }

            .separator:not(:empty)::before {
                margin-right: 0.75em;
            }

            .separator:not(:empty)::after {
                margin-left: 0.75em;
            }
        </style>
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

                    <h1>Login</h1>
                </div>
            </div>

            <div class="container login-container">
                <div class="row">
                    <div class="col-lg-10 mx-auto">
                        <div class="row align-items-stretch">
                            <!-- Cột login -->
                            <div class="col-md-6 d-flex align-items-center">
                                <div class="w-100">
                                    <div class="heading mb-1">
                                        <h2 class="title">Login Your Account</h2>
                                    </div>

                                    <form action="#">
                                        <label for="login-email">
                                            Username or email address
                                            <span class="required">*</span>
                                        </label>
                                        <input
                                            type="email"
                                            class="form-input form-wide"
                                            id="login-email"
                                            required
                                            />

                                        <label for="login-password">
                                            Password
                                            <span class="required">*</span>
                                        </label>
                                        <input
                                            type="password"
                                            class="form-input form-wide"
                                            id="login-password"
                                            required
                                            />

                                        <div class="form-footer">
                                            <div class="custom-control custom-checkbox mb-0">
                                                <input
                                                    type="checkbox"
                                                    class="custom-control-input"
                                                    id="lost-password"
                                                    />
                                                <label
                                                    class="custom-control-label mb-0"
                                                    for="lost-password"
                                                    >Remember me</label
                                                >
                                            </div>

                                            <a
                                                href="${pageContext.request.contextPath}/view/authen/forgot-password.jsp"
                                                class="forget-password text-dark form-footer-right"
                                                >Forgot Password?</a>
                                        </div>
                                        <div class="form-footer mb-2 mt-3">
                                            <button type="submit" class="form-control-custom btn-dark"> Login </button>
                                        </div>

                                        <div class="separator"><span>Or</span></div>

                                        <div class="form-footer mt-2">
                                            <button 
                                                type="button" 
                                                class="form-control-custom btn-light"
                                                onclick="window.location.href = '${pageContext.request.contextPath}/view/authen/login.jsp';"
                                                >
                                                Register
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <!-- Cột hình ảnh -->
                            <div class="col-md-6 p-0 d-none d-md-block">
                                <img
                                    src="${pageContext.request.contextPath}/assets/images/menu-banner-3.png"
                                    alt="Login Illustration"
                                    class="w-100 h-100"
                                    style="object-fit: cover"
                                    />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer Start -->
        <jsp:include page="/view/common/footer.jsp"/>

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
