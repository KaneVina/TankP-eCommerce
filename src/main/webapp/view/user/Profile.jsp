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

                        <h1>Profile</h1>
                    </div>
                </div>

                <div class="container account-container custom-account-container">
                    <div class="row">
                        <div class="sidebar widget widget-dashboard mb-lg-0 mb-3 col-lg-3 order-0">
                            <h2 class="text-uppercase">My Account</h2>
                            <!--Thanh Menu trái-->
                            <ul class="nav nav-tabs list flex-column mb-0" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="dashboard-tab" data-toggle="tab" href="#dashboard" role="tab" aria-controls="dashboard" aria-selected="true"
                                       >Dashboard</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="order-tab" data-toggle="tab" href="#order" role="tab" aria-controls="order" aria-selected="true"
                                       >Orders</a
                                    >
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="order-tab" data-toggle="tab" href="#address" role="tab" aria-controls="address" aria-selected="true"
                                       >Addresses</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="edit-tab" data-toggle="tab" href="#edit" role="tab" aria-controls="edit" aria-selected="false"
                                        >Account details</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="login.html">Logout</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-9 order-lg-last order-1 tab-content">
                            <div class="tab-pane fade show active" id="dashboard" role="tabpanel">
                                <div class="dashboard-content">
                                    <div class="row row-lg">
                                        <div class="col-6 col-md-4">
                                            <div class="feature-box text-center pb-4">
                                                <a href="#order" class="link-to-tab"
                                                   ><i class="sicon-social-dropbox"></i></a>
                                                <div class="feature-box-content">
                                                    <h3>ORDERS</h3>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-6 col-md-4">
                                            <div class="feature-box text-center pb-4">
                                                <a href="#address" class="link-to-tab"
                                                   ><i class="sicon-location-pin"></i></a>
                                                <div class="feature-box-content">
                                                    <h3>ADDRESSES</h3>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-6 col-md-4">
                                            <div class="feature-box text-center pb-4">
                                                <a href="#edit" class="link-to-tab"
                                                   ><i class="icon-user-2"></i></a>
                                                <div class="feature-box-content p-0">
                                                    <h3>ACCOUNT DETAILS</h3>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-6 col-md-4">
                                            <div class="feature-box text-center pb-4">
                                                <a href="login.html"><i class="sicon-logout"></i></a>
                                                <div class="feature-box-content">
                                                    <h3>LOGOUT</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="order" role="tabpanel">
                                <div class="order-content">
                                    <h3 class="account-sub-title d-none d-md-block">
                                        <i class="sicon-social-dropbox align-middle mr-3"></i>Orders
                                    </h3>
                                    <div class="order-table-container text-center">
                                        <table class="table table-order text-left">
                                            <thead>
                                                <tr>
                                                    <th class="order-id">ORDER</th>
                                                    <th class="order-date">DATE</th>
                                                    <th class="order-status">STATUS</th>
                                                    <th class="order-price">TOTAL</th>
                                                    <th class="order-action">ACTIONS</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center p-0" colspan="5">
                                                        <p class="mb-5 mt-5">No Order has been made yet.</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <hr class="mt-0 mb-3 pb-2" />
                                        <a href="category.html" class="btn btn-dark">Go Shop</a>
                                    </div>
                                </div>
                            </div>
                            <!-- End .tab-pane -->

                            <div class="tab-pane fade" id="address" role="tabpanel">
                                <h3 class="account-sub-title d-none d-md-block mb-1">
                                    <i class="sicon-location-pin align-middle mr-3"></i>Addresses
                                </h3>
                                <div class="addresses-content">
                                    <div class="row">
                                        <div class="address col-md-12 mt-5 mt-md-0">
                                            <div class="heading d-flex">
                                                <h4 class="text-dark mb-0">Shipping address</h4>
                                            </div>
                                            <form class="mb-2" action="#">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label
                                                                >First name <span class="required">*</span></label
                                                            >
                                                            <input type="text" class="form-control" required />
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label
                                                                >Last name <span class="required">*</span></label
                                                            >
                                                            <input type="text" class="form-control" required />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>Company </label>
                                                    <input type="text" class="form-control" />
                                                </div>

                                                <div class="select-custom">
                                                    <label
                                                        >Country / Region <span class="required">*</span></label
                                                    >
                                                    <select name="orderby" class="form-control">
                                                        <option value="" selected="selected">
                                                            British Indian Ocean Territory
                                                        </option>
                                                        <option value="1">Brunei</option>
                                                        <option value="2">Bulgaria</option>
                                                        <option value="3">Burkina Faso</option>
                                                        <option value="4">Burundi</option>
                                                        <option value="5">Cameroon</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label
                                                        >Street address <span class="required">*</span></label
                                                    >
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        placeholder="House number and street name"
                                                        required
                                                        />
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        placeholder="Apartment, suite, unit, etc. (optional)"
                                                        required
                                                        />
                                                </div>

                                                <div class="form-group">
                                                    <label>Town / City <span class="required">*</span></label>
                                                    <input type="text" class="form-control" required />
                                                </div>

                                                <div class="form-group">
                                                    <label
                                                        >State / Country <span class="required">*</span></label
                                                    >
                                                    <input type="text" class="form-control" required />
                                                </div>

                                                <div class="form-group">
                                                    <label
                                                        >Postcode / ZIP <span class="required">*</span></label
                                                    >
                                                    <input type="text" class="form-control" required />
                                                </div>

                                                <div class="form-footer mb-0">
                                                    <div class="form-footer-right">
                                                        <button type="submit" class="btn btn-dark py-4">
                                                            Save Address
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>                      
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End .tab-pane -->

                            <div class="tab-pane fade" id="edit" role="tabpanel">
                                <h3 class="account-sub-title d-none d-md-block mt-0 pt-1 ml-1">
                                    <i class="icon-user-2 align-middle mr-3 pr-1"></i>Account Details
                                </h3>
                                <div class="account-content">
                                    <form action="#">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="acc-name"
                                                           >First name <span class="required">*</span></label>
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
                                                    <label for="acc-lastname"
                                                           >Last name <span class="required">*</span></label
                                                    >
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
                                            <label for="acc-text"
                                                   >Display name <span class="required">*</span></label
                                            >
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="acc-text"
                                                name="acc-text"
                                                placeholder="Editor"
                                                required
                                                />
                                            <p>
                                                This will be how your name will be displayed in the
                                                account section and in reviews
                                            </p>
                                        </div>

                                        <div class="form-group mb-4">
                                            <label for="acc-email"
                                                   >Email address <span class="required">*</span></label
                                            >
                                            <input
                                                type="email"
                                                class="form-control"
                                                id="acc-email"
                                                name="acc-email"
                                                placeholder="editor@gmail.com"
                                                required
                                                />
                                        </div>

                                        <div class="change-password">
                                            <h3 class="text-uppercase mb-2">Password Change</h3>

                                            <div class="form-group">
                                                <label for="acc-password"
                                                       >Current Password (leave blank to leave
                                                    unchanged)</label
                                                >
                                                <input
                                                    type="password"
                                                    class="form-control"
                                                    id="acc-password"
                                                    name="acc-password"
                                                    />
                                            </div>

                                            <div class="form-group">
                                                <label for="acc-password"
                                                       >New Password (leave blank to leave unchanged)</label
                                                >
                                                <input
                                                    type="password"
                                                    class="form-control"
                                                    id="acc-new-password"
                                                    name="acc-new-password"
                                                    />
                                            </div>

                                            <div class="form-group">
                                                <label for="acc-password">Confirm New Password</label>
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
                            <!-- End .tab-pane -->

                            <div class="tab-pane fade" id="shipping" role="tabpanel">
                                <div class="address account-content mt-0 pt-2">
                                    <h4 class="title mb-3">My Address</h4>

                                    <form class="mb-2" action="#">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label
                                                        >First name <span class="required">*</span></label
                                                    >
                                                    <input type="text" class="form-control" required />
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label
                                                        >Last name <span class="required">*</span></label
                                                    >
                                                    <input type="text" class="form-control" required />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>Company </label>
                                            <input type="text" class="form-control" />
                                        </div>

                                        <div class="select-custom">
                                            <label
                                                >Country / Region <span class="required">*</span></label
                                            >
                                            <select name="orderby" class="form-control">
                                                <option value="" selected="selected">
                                                    British Indian Ocean Territory
                                                </option>
                                                <option value="1">Brunei</option>
                                                <option value="2">Bulgaria</option>
                                                <option value="3">Burkina Faso</option>
                                                <option value="4">Burundi</option>
                                                <option value="5">Cameroon</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label
                                                >Street address <span class="required">*</span></label
                                            >
                                            <input
                                                type="text"
                                                class="form-control"
                                                placeholder="House number and street name"
                                                required
                                                />
                                            <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Apartment, suite, unit, etc. (optional)"
                                                required
                                                />
                                        </div>

                                        <div class="form-group">
                                            <label>Town / City <span class="required">*</span></label>
                                            <input type="text" class="form-control" required />
                                        </div>

                                        <div class="form-group">
                                            <label
                                                >State / Country <span class="required">*</span></label
                                            >
                                            <input type="text" class="form-control" required />
                                        </div>

                                        <div class="form-group">
                                            <label
                                                >Postcode / ZIP <span class="required">*</span></label
                                            >
                                            <input type="text" class="form-control" required />
                                        </div>

                                        <div class="form-footer mb-0">
                                            <div class="form-footer-right">
                                                <button type="submit" class="btn btn-dark py-4">
                                                    Save Address
                                                </button>
                                            </div>
                                        </div>
                                    </form>
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

        <!-- Main JS File -->
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>
