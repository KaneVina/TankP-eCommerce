<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <title>TankP eCommerce - Account Management</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/upDashBoard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/modalAccountStyle.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
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
                                    <div class="d-flex align-items:center">
                                        <button class="action-btn btn-create shadow-sm mr-2" title="Create New Account" onclick="openTpModal('accountCreateModal')">
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
                                                <td><span class="data-table-td-style">TankP Staff</span></td>
                                                <td><span class="data-table-td-style">tankp@tankp.com</span></td>
                                                <td><span class="badge bg-primary text-white">Staff</span></td>
                                                <td><span class="badge bg-success text-white" id="status-U001">Active</span></td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a href="javascript:void(0);" class="action-btn btn-view mx-1" title="Edit Account" onclick="openUpdateAccountModal('U001')">
                                                            <i class="fas fa-edit"></i><span class="btn-text">Edit</span>
                                                        </a>
                                                        <button class="action-btn btn-delete mx-1" title="Deactivate Account" onclick="toggleTableRowStatus(this, 'U001')">
                                                            <i class="fas fa-user-slash"></i><span class="btn-text">Deactivate</span>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span class="data-table-td-style">#U002</span></td>
                                                <td><span class="data-table-td-style">Nguyen Van A</span></td>
                                                <td><span class="data-table-td-style">nguyen.va@tankp.com</span></td>
                                                <td><span class="badge bg-secondary text-white">Customer</span></td>
                                                <td><span class="badge bg-warning text-dark" id="status-U002">Inactive</span></td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a href="javascript:void(0);" class="action-btn btn-view mx-1" title="Edit Account" onclick="openUpdateAccountModal('U002')">
                                                            <i class="fas fa-edit"></i><span class="btn-text">Edit</span>
                                                        </a>
                                                        <button class="action-btn btn-create mx-1" title="Activate Account" onclick="toggleTableRowStatus(this, 'U002')">
                                                            <i class="fas fa-user-check"></i><span class="btn-text">Activate</span>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span class="data-table-td-style">#U003</span></td>
                                                <td><span class="data-table-td-style">Tran Thi B</span></td>
                                                <td><span class="data-table-td-style">tran.tb@tankp.com</span></td>
                                                <td><span class="badge bg-primary text-white">Staff</span></td>
                                                <td><span class="badge bg-success text-white" id="status-U003">Active</span></td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a href="javascript:void(0);" class="action-btn btn-view mx-1" title="Edit Account" onclick="openUpdateAccountModal('U003')">
                                                            <i class="fas fa-edit"></i><span class="btn-text">Edit</span>
                                                        </a>
                                                        <button class="action-btn btn-delete mx-1" title="Deactivate Account" onclick="toggleTableRowStatus(this, 'U003')">
                                                            <i class="fas fa-user-slash"></i><span class="btn-text">Deactivate</span>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page="/view/common/footer.jsp"/>
        <jsp:include page="/view/common/loading.jsp"/> 
        <jsp:include page="../common/mobile-menu.jsp"/>

        <div class="modal fade tp-pro-modal" id="accountCreateModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content tp-pro-modal__content">
                    <form id="accountCreateForm" novalidate>
                        <div class="tp-pro-modal__header tp-pro-modal__header--create">
                            <h5 class="tp-pro-modal__title"><i class="fas fa-user-plus text-success"></i> CREATE NEW ACCOUNT</h5>
                            <button type="button" class="tp-pro-modal__close-btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="tp-pro-modal__body">
                            <div class="tp-pro-modal__grid">
                                <div class="tp-pro-modal__col-main">
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-id-card"></i>Personal Information</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-row">
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">First Name</label><input type="text" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Last Name</label><input type="text" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col--full"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Username</label><input type="text" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Email</label><input type="email" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Phone</label><input type="tel" class="tp-pro-modal__input" placeholder="Optional"></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Gender</label><select class="tp-pro-modal__select" required><option value="">Select Gender</option><option>Male</option><option>Female</option><option>Other</option></select></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Birthday</label><input type="date" class="tp-pro-modal__input"></div></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-key"></i>Security</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Password</label><input type="password" class="tp-pro-modal__input" placeholder="Enter new password" required></div>
                                        </div>
                                    </div>

                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-map-marked-alt"></i>Address List</div>
                                        <div class="tp-pro-modal__card-body tp-pro-modal__address-list">
                                            <ul>
                                                <li>
                                                    <div>
                                                        <p>123 Bach Dang, Ward 2, Tan Binh District, HCMC</p>
                                                        <span class="text-muted">Default Shipping & Billing</span>
                                                    </div>
                                                    <span class="badge">Default</span>
                                                </li>
                                                <li>
                                                    <div>
                                                        <p>456 Cong Hoa, Ward 13, Tan Binh District, HCMC</p>
                                                        <span class="text-muted">Office Address</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="tp-pro-modal__col-side">
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-receipt"></i>Order History</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__order-stat"><span>Total Orders</span><strong>-</strong></div>
                                            <div class="tp-pro-modal__order-stat"><span>Completed</span><strong>-</strong></div>
                                            <div class="tp-pro-modal__order-stat"><span>Total Spent</span><strong>-</strong></div>
                                            <hr>
                                            <button type="button" class="tp-pro-modal__btn-outline" disabled><i class="fas fa-search-dollar"></i> View Full Order History</button>
                                            <small>Available after account creation.</small>
                                        </div>
                                    </div>

                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-user-shield"></i>Role & Status</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group">
                                                <label class="tp-pro-modal__label">Account Role</label>
                                                <select class="tp-pro-modal__select" required><option value="">Select Role</option><option>Admin</option><option>Staff</option><option>Customer</option></select>
                                            </div>
                                            <hr>
                                            <div class="tp-pro-modal__form-group" style="margin-bottom: 0;">
                                                <label class="tp-pro-modal__label d-block">Account Status</label>
                                                <label class="tp-pro-modal__switch">
                                                    <input type="checkbox" id="createAccountStatus" checked>
                                                    <span class="tp-pro-modal__switch-slider"></span>
                                                </label>
                                                <span class="tp-pro-modal__switch-label">Active</span>
                                                <small>If turned off, the user won't be able to log in.</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tp-pro-modal__footer">
                            <p class="tp-pro-modal__footer-note">Powered by TankP</p>
                            <button type="reset" class="tp-pro-modal__btn tp-pro-modal__btn--secondary"><i class="fas fa-undo"></i> Reset</button>
                            <button type="submit" class="tp-pro-modal__btn tp-pro-modal__btn--success"><i class="fas fa-check-circle"></i> Create Account</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade tp-pro-modal" id="accountUpdateModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content tp-pro-modal__content">
                    <form id="accountUpdateForm" novalidate>
                        <div class="tp-pro-modal__header"> <h5 class="tp-pro-modal__title"><i class="fas fa-user-edit text-primary"></i> UPDATE ACCOUNT INFORMATION</h5>
                            <button type="button" class="tp-pro-modal__close-btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="tp-pro-modal__body">
                            <input type="hidden" id="updateAccountId" name="accountId" value="">
                            <div class="tp-pro-modal__grid">
                                <div class="tp-pro-modal__col-main">
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-id-card"></i>Personal Information</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-row">
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">First Name</label><input type="text" id="updateFirstName" name="firstName" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Last Name</label><input type="text" id="updateLastName" name="lastName" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col--full"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Username</label><input type="text" id="updateUsername" name="username" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Email</label><input type="email" id="updateEmail" name="email" class="tp-pro-modal__input" required></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Phone</label><input type="tel" id="updatePhone" name="phone" class="tp-pro-modal__input" placeholder="Optional"></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Gender</label><select id="updateGender" name="gender" class="tp-pro-modal__select" required><option value="">Select Gender</option><option>Male</option><option>Female</option><option>Other</option></select></div></div>
                                                <div class="tp-pro-modal__form-col"><div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">Birthday</label><input type="date" id="updateBirthday" name="birthday" class="tp-pro-modal__input"></div></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-key"></i>Security</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group"><label class="tp-pro-modal__label">New Password</label><input type="password" id="updatePassword" name="password" class="tp-pro-modal__input" placeholder="Leave blank to keep current password"></div>
                                        </div>
                                    </div>

                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-map-marked-alt"></i>Address List</div>
                                        <div class="tp-pro-modal__card-body tp-pro-modal__address-list" id="addressListUpdate">
                                            <ul><li>Loading addresses...</li></ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="tp-pro-modal__col-side">
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-receipt"></i>Order History</div>
                                        <div class="tp-pro-modal__card-body" id="orderHistoryUpdate">
                                            <div class="tp-pro-modal__order-stat"><span>Total Orders</span><strong id="updateTotalOrders">...</strong></div>
                                            <div class="tp-pro-modal__order-stat"><span>Completed</span><strong id="updateCompletedOrders">...</strong></div>
                                            <div class="tp-pro-modal__order-stat"><span>Total Spent</span><strong id="updateTotalSpent">...</strong></div>
                                            <hr>
                                            <a href="#" class="tp-pro-modal__btn-outline"><i class="fas fa-search-dollar"></i> View Full Order History</a>
                                        </div>
                                    </div>

                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-user-shield"></i>Role & Status</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group">
                                                <label class="tp-pro-modal__label">Account Role</label>
                                                <select id="updateRole" name="role" class="tp-pro-modal__select" required><option value="">Select Role</option><option>Admin</option><option>Staff</option><option>Customer</option></select>
                                            </div>
                                            <hr>
                                            <div class="tp-pro-modal__form-group" style="margin-bottom: 0;">
                                                <label class="tp-pro-modal__label d-block">Account Status</label>
                                                <label class="tp-pro-modal__switch">
                                                    <input type="checkbox" id="updateAccountStatus">
                                                    <span class="tp-pro-modal__switch-slider"></span>
                                                </label>
                                                <span class="tp-pro-modal__switch-label">Active</span>
                                                <small>If turned off, the user won't be able to log in.</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tp-pro-modal__footer">
                            <p class="tp-pro-modal__footer-note">Powered by TankP</p>
                            <button type="reset" class="tp-pro-modal__btn tp-pro-modal__btn--secondary"><i class="fas fa-undo"></i> Reset</button>
                            <button type="submit" class="tp-pro-modal__btn tp-pro-modal__btn--primary"><i class="fas fa-check-circle"></i> Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>

        <script>
                                                            function openTpModal(modalId) {
                                                                // Phải dùng class .tp-pro-modal để mở
                                                                $('#' + modalId + '.tp-pro-modal').modal('show');
                                                            }

                                                            function openUpdateAccountModal(accountId) {
                                                                console.log("Request to edit account with ID:", accountId);
                                                                $('#updateAccountId').val(accountId);

                                                                // TODO: AJAX call to fetch and populate data for the update modal
                                                                // $.ajax({
                                                                //     url: 'your-servlet-url',
                                                                //     type: 'GET',
                                                                //     data: { accountId: accountId },
                                                                //     success: function(data) {
                                                                //         $('#updateFirstName').val(data.firstName);
                                                                //         $('#updateLastName').val(data.lastName);
                                                                //         ...
                                                                //
                                                                //         // Set toggle switch (dùng .prop())
                                                                //         $('#updateAccountStatus').prop('checked', data.status === 'active');
                                                                //
                                                                //         // Set order stats
                                                                //         $('#updateTotalOrders').text(data.orders.total);
                                                                //         $('#updateCompletedOrders').text(data.orders.completed);
                                                                //         $('#updateTotalSpent').text('$ ' + data.orders.spent);
                                                                //
                                                                //         // Set address list
                                                                //         $('#addressListUpdate ul').empty();
                                                                //         data.addresses.forEach(function(addr) { ... });
                                                                //     }
                                                                // });

                                                                openTpModal('accountUpdateModal');
                                                            }

                                                            // Logic này DÙNG CHO TABLE và nó tương thích 100% với upDashBoard.css
                                                            function toggleTableRowStatus(buttonElement, userId) {
                                                                const btn = $(buttonElement);
                                                                const statusBadge = $('#status-' + userId);

                                                                // Demo UI change
                                                                if (btn.hasClass('btn-delete')) {
                                                                    // Đang Active -> Chuyển sang Inactive
                                                                    // Đổi class nút theo file upDashBoard.css
                                                                    btn.removeClass('btn-delete').addClass('btn-create');
                                                                    btn.html('<i class="fas fa-user-check"></i><span class="btn-text">Activate</span>');
                                                                    btn.attr('title', 'Activate Account');

                                                                    // Đổi class badge
                                                                    statusBadge.removeClass('bg-success text-white').addClass('bg-warning text-dark');
                                                                    statusBadge.text('Inactive');
                                                                } else {
                                                                    // Đang Inactive -> Chuyển sang Active
                                                                    // Đổi class nút theo file upDashBoard.css
                                                                    btn.removeClass('btn-create').addClass('btn-delete');
                                                                    btn.html('<i class="fas fa-user-slash"></i><span class="btn-text">Deactivate</span>');
                                                                    btn.attr('title', 'Deactivate Account');

                                                                    // Đổi class badge
                                                                    statusBadge.removeClass('bg-warning text-dark').addClass('bg-success text-white');
                                                                    statusBadge.text('Active');
                                                                }

                                                                // TODO: Gọi AJAX tại đây để cập nhật DB
                                                                // $.post('your-toggle-status-servlet', { userId: userId, newStatus: (btn.hasClass('btn-delete') ? 'active' : 'inactive') }, function(response) {
                                                                //    if(!response.success) { 
                                                                //       alert('Failed to update status. Reverting changes.');
                                                                //       toggleTableRowStatus(buttonElement, userId); // Tự động đảo ngược lại nếu lỗi
                                                                //    }
                                                                // });
                                                            }

                                                            $(document).ready(function () {
                                                                // Cần thêm class .was-validated vào form để kích hoạt
                                                                // Bootstrap validation styles (nếu CSS của tôi chưa đè hết)
                                                                $('#accountCreateForm, #accountUpdateForm').on('submit', function (e) {
                                                                    e.preventDefault();
                                                                    if (this.checkValidity() === false) {
                                                                        e.stopPropagation();
                                                                        $(this).addClass('was-validated');
                                                                    } else {
                                                                        $(this).removeClass('was-validated');

                                                                        // Lấy giá trị status từ switch
                                                                        if (this.id === 'accountCreateForm') {
                                                                            var status = $('#createAccountStatus').is(':checked') ? 'active' : 'inactive';
                                                                            console.log("Create Status:", status);
                                                                        } else {
                                                                            var status = $('#updateAccountStatus').is(':checked') ? 'active' : 'inactive';
                                                                            console.log("Update Status:", status);
                                                                        }

                                                                        alert('Form submitted (demo). Closing modal.');
                                                                        $(this).closest('.modal').modal('hide');
                                                                    }
                                                                });

                                                                // Reset form và validate khi modal đóng
                                                                $('.tp-pro-modal').on('hidden.bs.modal', function () {
                                                                    var form = $(this).find('form');
                                                                    form.removeClass('was-validated');
                                                                    if (form.length > 0) {
                                                                        form[0].reset();
                                                                    }
                                                                    // Luôn set switch về 'checked' (active) khi reset
                                                                    $('#createAccountStatus').prop('checked', true);
                                                                    $('#updateAccountStatus').prop('checked', true);
                                                                });
                                                            });
        </script>
    </body>
</html>