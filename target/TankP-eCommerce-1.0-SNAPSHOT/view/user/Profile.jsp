<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <title>TankP eCommerce - Order Management</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upDashBoard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/modalOrderStyle.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
    </head>

    <body>
        <jsp:include page="/view/common/header.jsp"/>
        <main class="main">
            <%-- Header trang --%>
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

                    <h1>My Profile</h1>
                </div>
            </div>

            <div class="container account-container custom-account-container">
                <div class="row">
                    <jsp:include page="/view/common/myAccount-sidebar.jsp" />

                    <div class="col-lg-9 order-lg-last order-1 tab-content scrollable-profile">
                        <!--Account Detail - Nhan-->
                        <h3 class="account-sub-title d-none d-md-block mt-0 pt-1 ml-1">
                            <i class="icon-user-2 align-middle mr-3 pr-1"></i>My Profile
                        </h3>
                        <div class="account-content">
                            <form action="#">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="acc-name">First name <span class="required">*</span></label>
                                            <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Editor"
                                                id="acc-name"
                                                name="acc-name"
                                                required
                                                />
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="acc-lastname">Last name <span class="required">*</span></label>
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="acc-lastname"
                                                name="acc-lastname"
                                                required
                                                />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group mb-2">
                                    <label for="acc-username">Username <span class="required">*</span></label>
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="acc-username"
                                        name="acc-username"
                                        placeholder="Editor"
                                        required
                                        />
                                    <p>
                                        This will be how your name will be displayed in the
                                        account section and in reviews
                                    </p>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="d-block">Gender</label>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="acc-gender" id="gender-male" value="male">
                                                <label class="form-check-label" for="gender-male">Male</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="acc-gender" id="gender-female" value="female">
                                                <label class="form-check-label" for="gender-female">Female</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="acc-gender" id="gender-other" value="other">
                                                <label class="form-check-label" for="gender-other">Other</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="acc-dob">Date of Birth</label>
                                            <input
                                                type="date"
                                                class="form-control"
                                                id="acc-dob"
                                                name="acc-dob"
                                                />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="acc-email">Email address <span class="required">*</span></label>
                                    <input
                                        type="email"
                                        class="form-control"
                                        id="acc-email"
                                        name="acc-email"
                                        placeholder="editor@gmail.com"
                                        required
                                        />
                                </div>

                                <div class="row mb-4 align-items-end"> 

                                    <div class="col-8">
                                        <div class="form-group mb-0"> <label for="acc-phone">Phone Number (Optional)</label>
                                            <input
                                                type="tel"
                                                class="form-control"
                                                id="acc-phone"
                                                name="acc-phone"
                                                placeholder="e.g., 123-456-7890"
                                                />
                                        </div>
                                    </div>

                                    <div class="col-4">
                                        <div class="form-group mb-0"> 
                                            <button type="submit" class="btn btn-dark btn-block mr-0">
                                                Save Profile
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="change-password">
                                    <h3 class="text-uppercase mb-2">Password Change</h3>

                                    <div class="form-group">
                                        <label for="acc-password">Current Password (leave blank to leave unchanged)</label>
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="acc-password"
                                            name="acc-password"
                                            />
                                    </div>

                                    <div class="form-group">
                                        <label for="acc-new-password">New Password (leave blank to leave unchanged)</label>
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="acc-new-password"
                                            name="acc-new-password"
                                            />
                                    </div>

                                    <div class="form-group">
                                        <label for="acc-confirm-password">Confirm New Password</label>
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="acc-confirm-password"
                                            name="acc-confirm-password"
                                            />
                                    </div>
                                </div>

                                <div class="form-footer mt-3 mb-0">
                                    <button type="submit" class="btn btn-dark mr-0">
                                        Save changes
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--END Account Detail - Nhan-->
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
            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>

        <!-- Main JS File -->
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>
