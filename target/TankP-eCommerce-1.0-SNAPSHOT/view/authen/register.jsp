<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <title>TankP</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="Tank - Bootstrap eCommerce Template" />
        <meta name="author" content="SW-THEMES" />

        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

        <!-- Main CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link
            rel="stylesheet"
            type="text/css"
            href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
            />
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

                    <h1>Register</h1>
                </div>
            </div>

            <div class="container login-container">
                <div class="row">
                    <div class="col-lg-12 mx-auto">
                        <div class="row align-items-stretch">

                            <div class="col-md-6 p-0 d-none d-md-block">
                                <img src="${pageContext.request.contextPath}/assets/images/menu-banner-2.png"
                                     alt="Register Illustration"
                                     class="w-100 h-100"
                                     style="object-fit: cover"/>
                            </div>

                            <div class="col-md-6 d-flex align-items-center">
                                <div class="w-100">
                                    <h2 class="title mb-3">Register Your Account</h2>

                                    <form action="#">
                                        <div class="row">
                                            <div class="col-md-6 mb-2">
                                                <label for="first-name">First name *</label>
                                                <input type="text" class="form-control" id="first-name" required>
                                            </div>
                                            <div class="col-md-6 mb-2">
                                                <label for="last-name">Last name *</label>
                                                <input type="text" class="form-control" id="last-name" required>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-2">
                                                <label for="username">User name *</label>
                                                <input type="text" class="form-control" id="username" required>
                                            </div>
                                            <div class="col-md-6 mb-2">
                                                <label for="phone">Phone *</label>
                                                <input type="text" class="form-control" id="phone" required>
                                            </div>
                                        </div>

                                        <div class="form-group mb-2">
                                            <label for="email">Email *</label>
                                            <input type="email" class="form-control" id="email" required>
                                        </div>

                                        <div class="form-group mb-2">
                                            <label for="password">Password *</label>
                                            <input type="password" class="form-control" id="password" required>
                                        </div>
                                        <div class="form-group mb-2">
                                            <label for="confirm-password">Confirm Password *</label>
                                            <input type="password" class="form-control" id="confirm-password" required>
                                        </div>

                                        <div class="form-footer mb-2 mt-3">
                                            <button type="submit" class="form-control-custom btn-dark">Register</button>
                                        </div>

                                        <div class="separator"><span>Or</span></div>

                                        <div class="form-footer mt-2">
                                            <button 
                                                type="button" 
                                                class="form-control-custom btn-light"
                                                onclick="window.location.href = '${pageContext.request.contextPath}/view/authen/login.jsp';"
                                                >
                                                Login
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page="/view/common/loading.jsp"/> 

        <footer>
            <jsp:include page="/view/common/footer.jsp"/>
        </footer>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>