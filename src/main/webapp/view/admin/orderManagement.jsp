<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <title>TankP eCommerce - Product Management</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upDashBoard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/modalProductStyle.css">-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
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
                                <li class="breadcrumb-item">
                                    <a href="category.html">Admin Area</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Dash Board
                                </li>
                            </ol>
                        </div>
                    </nav>

                    <h1>Order Management</h1>
                </div>
            </div>

            <div class="container account-container custom-account-container">
                <div class="row">
                    <jsp:include page="/view/common/dashboard-sidebar.jsp" />
                    <div class="col-lg-10 order-lg-last order-1 tab-content">
                        <div class="tab-pane fade show active">
                            <div class="account-content-main">
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <h3 class="account-sub-title d-none d-md-block mb-0">
                                        <i class="fas fa-boxes align-middle mr-3"></i>Order Management
                                    </h3>

                                    <div class="d-flex align-items-center">
                                        <div class="d-flex mr-2 product-search-bar">
                                            <input type="text" class="form-control" placeholder="Search by customer name" aria-label="Search"/>
                                            <button class="btn btn-sm btn-search-custom" type="button" title="Search">
                                                <i class="fas fa-search"></i>
                                            </button>
                                        </div>

                                        <button class="action-btn btn-filter shadow-sm mr-2" title="Filter">
                                            <i class="fas fa-filter"></i>
                                            <span class="btn-text">Filter</span>
                                        </button>
                                    </div>
                                </div>

                                <div class="data-table-style text-center">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>CUSTOMER NAME</th>
                                                <th>Date</th>
                                                <th>TOTAL AMOUNT</th>
                                                <th>STATUS</th>
                                                <th>ACTIONS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span class="data-table-td-style">#001</span></td>
                                                <td>
                                                    <span class="data-table-td-style">
                                                        Traditional Silk Dress
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="data-table-td-style">Clothing</span>
                                                </td>
                                                <td><span class="data-table-td-style">$30.00</span></td>
                                                <td>
                                                    <span class="badge bg-success text-dark"
                                                          >completed</span
                                                    >
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a
                                                            href="#"
                                                            class="action-btn btn-view mx-1"
                                                            title="Update Product"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#updateProductModal"
                                                            >
                                                            <i class="fas fa-edit"></i>
                                                            <span class="btn-text">View</span>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td><span class="data-table-td-style">#002</span></td>
                                                <td>
                                                    <span class="data-table-td-style">
                                                        Handmade Ceramic Mug
                                                    </span>
                                                </td>
                                                <td>
                                                    <span class="data-table-td-style">Home Goods</span>
                                                </td>
                                                <td><span class="data-table-td-style">$15.00</span></td>
                                                <td>
                                                    <span class="badge bg-warning text-dark"
                                                          >process</span
                                                    >
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a
                                                            href="#"
                                                            class="action-btn btn-view mx-1"
                                                            title="Update Product"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#updateProductModal"
                                                            >
                                                            <i class="fas fa-edit"></i>
                                                            <span class="btn-text">View</span>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <hr class="mt-0 mb-3 pb-2" />

                                    <div
                                        class="d-flex justify-content-between align-items-center pt-2"
                                        >
                                        <a href="dashboard.html" class="btn btn-light text-dark"
                                           >Back to Dashboard</a
                                        >

                                        <nav aria-label="Page navigation" class="ml-auto">
                                            <ul class="pagination toolbox-item mb-0">
                                                <li class="page-item disabled">
                                                    <a class="page-link page-link-btn" href="#"
                                                       ><i class="icon-angle-left"></i
                                                        ></a>
                                                </li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="#"
                                                       >1 <span class="sr-only">(current)</span></a
                                                    >
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">2</a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">3</a>
                                                </li>
                                                <li class="page-item">
                                                    <span class="page-link">...</span>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link page-link-btn" href="#"
                                                       ><i class="icon-angle-right"></i
                                                        ></a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mb-5"></div>
        </main>

        <jsp:include page="/view/common/footer.jsp"/>
        <jsp:include page="/view/common/loading.jsp"/>
        <jsp:include page="../common/mobile-menu.jsp"/>


        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script> 
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>