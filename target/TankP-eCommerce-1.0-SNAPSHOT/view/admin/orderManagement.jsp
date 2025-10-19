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
                        <div class="container"> <ol class="breadcrumb"> <li class="breadcrumb-item"><a href="demo4.html">Home</a></li> <li class="breadcrumb-item"><a href="#">Admin Area</a></li> <li class="breadcrumb-item active" aria-current="page">Order Management</li> </ol> </div>
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
                                    <h3 class="account-sub-title d-none d-md-block mb-0"> <i class="fas fa-boxes align-middle mr-3"></i>Order Management </h3>
                                    <div class="d-flex align-items-center">
                                        <div class="d-flex mr-2 product-search-bar"> <input type="text" class="form-control" placeholder="Search orders..." /> <button class="btn btn-sm btn-search-custom" type="button" title="Search"> <i class="fas fa-search"></i> </button> </div>
                                        <button class="action-btn btn-filter shadow-sm mr-2" title="Filter"> <i class="fas fa-filter"></i> <span class="btn-text">Filter</span> </button>
                                    </div>
                                </div>
                            </div>
                            <div class="data-table-style text-center">
                                <table class="table table-hover table-striped">
                                    <thead> <tr> <th>ID</th> <th>CUSTOMER NAME</th> <th>DATE</th> <th>TOTAL AMOUNT</th> <th>STATUS</th> <th>ACTIONS</th> </tr> </thead>
                                    <tbody>
                                        <%-- Sample Order 1 --%>
                                        <tr>
                                            <td><span class="data-table-td-style">#ORD-001</span></td>
                                            <td><span class="data-table-td-style">Nguyen Van A</span></td>
                                            <td><span class="data-table-td-style">2025-10-18</span></td>
                                            <td><span class="data-table-td-style">$125.50</span></td>
                                            <td><span class="badge badge-success">Completed</span></td>
                                            <td> <div class="d-flex justify-content-center"> <a href="#" class="action-btn btn-view mx-1" title="View Order Details" data-toggle="modal" data-target="#orderUpdateModal" data-order-id="ORD-001"> <i class="fas fa-eye"></i> <span class="btn-text">View</span> </a> </div> </td>
                                        </tr>
                                        <%-- Sample Order 2 --%>
                                        <tr>
                                            <td><span class="data-table-td-style">#ORD-002</span></td>
                                            <td><span class="data-table-td-style">Tran Thi B</span></td>
                                            <td><span class="data-table-td-style">2025-10-19</span></td>
                                            <td><span class="data-table-td-style">$80.00</span></td>
                                            <td><span class="badge badge-warning">Processing</span></td>
                                            <td> <div class="d-flex justify-content-center"> <a href="#" class="action-btn btn-view mx-1" title="View Order Details" data-toggle="modal" data-target="#orderUpdateModal" data-order-id="ORD-002"> <i class="fas fa-eye"></i> <span class="btn-text">View</span> </a> </div> </td>
                                        </tr>
                                        <%-- Sample Order 3 --%>
                                        <tr>
                                            <td><span class="data-table-td-style">#ORD-003</span></td>
                                            <td><span class="data-table-td-style">Le Van C</span></td>
                                            <td><span class="data-table-td-style">2025-10-17</span></td>
                                            <td><span class="data-table-td-style">$45.00</span></td>
                                            <td><span class="badge badge-danger">Cancelled</span></td>
                                            <td> <div class="d-flex justify-content-center"> <a href="#" class="action-btn btn-view mx-1" title="View Order Details" data-toggle="modal" data-target="#orderUpdateModal" data-order-id="ORD-003"> <i class="fas fa-eye"></i> <span class="btn-text">View</span> </a> </div> </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr class="mt-0 mb-3 pb-2" />
                                <%-- Phân trang và nút Back, cập nhật phân trang sau --%>
                                <div class="d-flex justify-content-between align-items-center pt-2"> <a href="dashboard.html" class="btn btn-light text-dark">Back to Dashboard</a> <nav aria-label="Page navigation" class="ml-auto"> {/* Pagination */} </nav> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page="/view/common/footer.jsp"/>
        <jsp:include page="/view/common/loading.jsp"/>
        <jsp:include page="../common/mobile-menu.jsp"/>

        <%-- =================================================================== --%>
        <%-- ========= MODAL CHI TIẾT/CẬP NHẬT ĐƠN HÀNG ======================= --%>
        <%-- =================================================================== --%>
        <div class="modal fade tp-pro-modal" id="orderUpdateModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="orderUpdateForm" novalidate> 
                        <div class="tp-pro-modal__header"> 
                            <h5 class="tp-pro-modal__title"><i class="fas fa-file-invoice-dollar text-primary"></i> ORDER DETAILS</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="tp-pro-modal__body">
                            <div class="tp-pro-modal__grid">

                                <%-- Cột chính (7/12) --%>
                                <div class="tp-pro-modal__col-main">
                                    <%-- Card: Thông tin khách hàng & Đơn hàng --%>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-user-circle"></i>Customer & Order Info</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-row">
                                                <div class="tp-pro-modal__form-col">
                                                    <div class="tp-pro-modal__form-group">
                                                        <label class="tp-pro-modal__label">Order ID</label>
                                                        <input type="text" class="tp-pro-modal__input order-id" readonly> 
                                                    </div>
                                                </div>
                                                <div class="tp-pro-modal__form-col">
                                                    <div class="tp-pro-modal__form-group">
                                                        <label class="tp-pro-modal__label">Order Date</label>
                                                        <input type="text" class="tp-pro-modal__input order-date" readonly> 
                                                    </div>
                                                </div>
                                                <div class="tp-pro-modal__form-col">
                                                    <div class="tp-pro-modal__form-group">
                                                        <label class="tp-pro-modal__label">Customer Name</label>
                                                        <input type="text" class="tp-pro-modal__input customer-name" readonly> 
                                                    </div>
                                                </div>
                                                <div class="tp-pro-modal__form-col">
                                                    <div class="tp-pro-modal__form-group">
                                                        <label class="tp-pro-modal__label">Email</label>
                                                        <input type="email" class="tp-pro-modal__input customer-email" readonly> 
                                                    </div>
                                                </div>
                                                <div class="tp-pro-modal__form-col">
                                                    <div class="tp-pro-modal__form-group">
                                                        <label class="tp-pro-modal__label">Phone</label>
                                                        <input type="tel" class="tp-pro-modal__input customer-phone" readonly> 
                                                    </div>
                                                </div>
                                                <div class="tp-pro-modal__form-col">
                                                    <div class="tp-pro-modal__form-group">
                                                        <label class="tp-pro-modal__label">Invoice Request</label>
                                                        <input type="text" class="tp-pro-modal__input invoice-request" readonly> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%-- Card: Địa chỉ giao hàng --%>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-map-marker-alt"></i>Shipping Address</div>
                                        <div class="tp-pro-modal__card-body shipping-address">
                                            <p class="mb-1"><strong>Recipient:</strong> <span class="recipient-name">-</span></p>
                                            <p class="mb-1"><strong>Address:</strong> <span class="address-details">-</span></p>
                                            <p class="mb-0"><strong>Phone:</strong> <span class="recipient-phone">-</span></p>
                                        </div>
                                    </div>

                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="far fa-sticky-note"></i>Notes</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group">
                                                <label class="tp-pro-modal__label">Note for Driver</label>
                                                <textarea class="tp-pro-modal__textarea note-driver" rows="3" readonly>-</textarea>
                                            </div>
                                            <div class="tp-pro-modal__form-group mb-0">
                                                <label class="tp-pro-modal__label">Note for Shop</label>
                                                <textarea class="tp-pro-modal__textarea note-shop" rows="3" readonly>-</textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <%-- Cột phụ (5/12) --%>
                                <div class="tp-pro-modal__col-side">
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-shopping-basket"></i>Order Items</div>
                                        <div class="tp-pro-modal__card-body" style="padding: 0.5rem;">
                                            <div class="table-responsive">
                                                <table class="tp-pro-modal__order-items-table">
                                                    <thead>
                                                        <tr>
                                                            <th>Product</th>
                                                            <th class="text-center">Color</th> 
                                                            <th class="text-center">Size</th> 
                                                            <th class="text-center">Qty</th>
                                                            <th class="text-right">Price</th>
                                                            <th class="text-right">Amount</th> 
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%-- Ví dụ 1: Áo T-Shirt --%>
                                                        <tr>
                                                            <td>Premium Cotton T-Shirt</td>
                                                            <td class="text-center">
                                                                <span class="tp-pro-modal__color-badge" style="background-color: #0A3161; color: #fff;">Blue</span>
                                                            </td>
                                                            <td class="text-center">L</td>
                                                            <td class="text-center">2</td>
                                                            <td class="text-right">$20.00</td>
                                                            <td class="text-right">$40.00</td>
                                                        </tr>

                                                        <%-- Ví dụ 2: Cốc sứ --%>
                                                        <tr>
                                                            <td>Handmade Ceramic Mug</td>
                                                            <td class="text-center">
                                                                <span class="tp-pro-modal__color-badge" style="background-color: #F5F5F5; color: #000;">White</span>
                                                            </td>
                                                            <td class="text-center">-</td> <%-- Size không áp dụng --%>
                                                            <td class="text-center">1</td>
                                                            <td class="text-right">$15.00</td>
                                                            <td class="text-right">$15.00</td>
                                                        </tr>

                                                        <%-- Ví dụ 3: Áo khoác --%>
                                                        <tr>
                                                            <td>Stylish Winter Jacket</td>
                                                            <td class="text-center">
                                                                <span class="tp-pro-modal__color-badge" style="background-color: #222222; color: #fff;">Black</span>
                                                            </td>
                                                            <td class="text-center">XL</td>
                                                            <td class="text-center">1</td>
                                                            <td class="text-right">$75.50</td>
                                                            <td class="text-right">$75.50</td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <td colspan="3" class="text-right border-top-0"><strong>Total Quantity:</strong></td>
                                                            <td class="text-center border-top-0"><strong class="total-quantity">0</strong></td>
                                                            <td colspan="2" class="border-top-0"></td> <%-- Cột trống --%>
                                                        </tr>
                                                       
                                                        <tr>
                                                            <td colspan="5" class="text-right"><strong>Total Amount:</strong></td>
                                                            <td class="text-right"><strong class="total-amount">$0.00</strong></td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <%-- Card --%>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-sync-alt"></i>Order Status</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group">
                                                <label class="tp-pro-modal__label">Current Status: <span class="badge current-status">-</span></label>
                                                <select class="tp-pro-modal__select" id="orderStatusSelect" required>
                                                    <option value="">Update Status...</option>
                                                    <option value="processing">Processing</option>
                                                    <option value="completed">Completed</option>
                                                    <option value="cancelled">Cancelled</option>
                                                </select>
                                                <small>Select a new status for this order.</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%-- Footer --%>
                        <div class="tp-pro-modal__footer">
                            <p class="tp-pro-modal__footer-note">Powered by TankP</p> 
                            <button type="button" class="tp-pro-modal__btn tp-pro-modal__btn--secondary" data-dismiss="modal">Close</button> 
                            <button type="submit" class="tp-pro-modal__btn tp-pro-modal__btn--primary"><i class="fas fa-save"></i> Save Changes</button> 
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script> 
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>

        <%-- =================================================================== --%>
        <%-- ================== JAVASCRIPT CHO ORDER MODAL =================== --%>
        <%-- =================================================================== --%>
        <script>
            $(document).ready(function () {
                $('#orderUpdateModal').on('show.bs.modal', function (event) {
                    var button = $(event.relatedTarget);
                    var orderId = button.data('order-id');
                    var modal = $(this);

                    // TODO: Gửi AJAX request lên server để cập nhật status
                    // Sau khi thành công: alert('Order status updated successfully!'); $('#orderUpdateModal').modal('hide');
                });

                // JS cho input file (nếu có dùng trong các modal khác)
                $('.tp-pro-modal__custom-file-input').on('change', function () {
                    var fileName = $(this).val().split('\\').pop();
                    $(this).next('.tp-pro-modal__custom-file-label').html(fileName || 'Choose files...');
                });
            });
        </script>
    </body>
</html>