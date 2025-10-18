<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <title>TankP eCommerce</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="TankP eCommerce" />
        <meta name="author" content="SW-THEMES" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upDashBoard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/simple-line-icons/css/simple-line-icons.min.css"/>
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
                                <li class="breadcrumb-item">
                                    <a href="category.html">Admin Area</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Dash Board
                                </li>
                            </ol>
                        </div>
                    </nav>
                    <h1>Account Management</h1>
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
                                        <i class="fas fa-user-shield align-middle mr-3"></i>Account Management
                                    </h3>
                                    <div class="d-flex align-items-center">
                                        <button class="action-btn btn-create shadow-sm mr-2" title="Create New Account">
                                            <i class="fas fa-user-plus"></i>
                                            <span class="btn-text">Create</span>
                                        </button>
                                        <button class="action-btn btn-filter shadow-sm" title="Filter">
                                            <i class="fas fa-filter"></i>
                                            <span class="btn-text">Filter</span>
                                        </button>
                                    </div>
                                </div>

                                <div class="data-table-style text-center">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>USER ID</th>
                                                <th>NAME</th>
                                                <th>EMAIL</th>
                                                <th>ROLE</th>
                                                <th>STATUS</th>
                                                <th>ACTIONS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span class="data-table-td-style">#U001</span></td>
                                                <td>
                                                    <span class="data-table-td-style">TankP Staff</span>
                                                </td>
                                                <td>
                                                    <span class="data-table-td-style">tankp@example.com</span>
                                                </td>
                                                <td>
                                                    <span class="badge bg-primary text-white">Staff</span>
                                                </td>
                                                <td>
                                                    <span class="badge bg-success text-white">Active</span>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a href="edit-account-1.html" class="action-btn btn-view mx-1"
                                                           title="Edit Account">
                                                            <i class="fas fa-edit"></i><span class="btn-text">Edit</span>
                                                        </a>
                                                        <button class="action-btn btn-delete mx-1" title="Deactivate Account">
                                                            <i class="fas fa-user-slash"></i><span class="btn-text">Deactivate</span>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td><span class="data-table-td-style">#U002</span></td>
                                                <td>
                                                    <span class="data-table-td-style">Nguyen Van A</span>
                                                </td>
                                                <td>
                                                    <span class="data-table-td-style">nguyen.va@example.com</span>
                                                </td>
                                                <td>
                                                    <span class="badge bg-secondary text-white">Customer</span>
                                                </td>
                                                <td>
                                                    <span class="badge bg-warning text-dark">Inactive</span>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a href="edit-account-2.html" class="action-btn btn-view mx-1" title="Edit Account">
                                                            <i class="fas fa-edit"></i><span class="btn-text">Edit</span>
                                                        </a>
                                                        <button class="action-btn btn-create mx-1" title="Activate Account">
                                                            <i class="fas fa-user-check"></i><span class="btn-text">Activate</span>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td><span class="data-table-td-style">#U003</span></td>
                                                <td>
                                                    <span class="data-table-td-style">Tran Thi B</span>
                                                </td>
                                                <td>
                                                    <span class="data-table-td-style">tran.tb@example.com</span>
                                                </td>
                                                <td>
                                                    <span class="badge bg-primary text-white">Staff</span>
                                                </td>
                                                <td>
                                                    <span class="badge bg-success text-white">Active</span>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a href="edit-account-3.html" class="action-btn btn-view mx-1" title="Edit Account">
                                                            <i class="fas fa-edit"></i><span class="btn-text">Edit</span>
                                                        </a>
                                                        <button class="action-btn btn-delete mx-1" title="Deactivate Account">
                                                            <i class="fas fa-user-slash"></i><span class="btn-text">Deactivate</span>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <hr class="mt-0 mb-3 pb-2" />
                                    <div class="d-flex justify-content-between align-items-center pt-2">
                                        <a href="dashboard.html" class="btn btn-light text-dark"
                                           >Back to Dashboard</a>
                                        <nav aria-label="Page navigation" class="ml-auto">
                                            <ul class="pagination toolbox-item mb-0">
                                                <li class="page-item disabled">
                                                    <a class="page-link page-link-btn" href="#">
                                                        <i class="icon-angle-left"></i>
                                                    </a>
                                                </li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="#">
                                                        1 <span class="sr-only">(current)</span>
                                                    </a>
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
                                                    <a class="page-link page-link-btn" href="#">
                                                        <i class="icon-angle-right"></i>
                                                    </a>
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
        </main>
        <!-- Footer Start -->
        <jsp:include page="/view/common/footer.jsp"/>

        <!--loading-->
        <jsp:include page="/view/common/loading.jsp"/> 
        
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
