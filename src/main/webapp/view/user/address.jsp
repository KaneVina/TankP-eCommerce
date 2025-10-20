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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/address.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/modalOrderStyle.css">
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
                                <li class="breadcrumb-item active" aria-current="page">
                                    My Account
                                </li>
                            </ol>
                        </div>
                    </nav>

                    <h1>My Address</h1>
                </div>
            </div>

            <div class="container account-container custom-account-container">
                <div class="row">
                    <jsp:include page="/view/common/myAccount-sidebar.jsp" />

                    <div class="col-md-9">
                        <form action="#" id="checkout-form">
                            <ul class="checkout-steps">
                                <li class="section-separator">

                                    <h3 class="account-sub-title d-none d-md-block mb-3"> 
                                        <i class="fas fa-map-marked-alt align-middle mr-3"></i>My Addresses
                                    </h3>

                                    <div class="collapse show" id="deliveryAddressCollapse">

                                        <div class="address-card-selector">

                                            <div class="address-card" onclick="selectAddressCard(this)"> 
                                                <input type="radio" name="saved_address" id="address-1" value="1">
                                                <span class="radio-check"></span> 

                                                <div class="address-card-body">
                                                    <label for="address-1">
                                                        <i class="fas fa-home"></i> Home
                                                        <span class="badge-default">Default</span>
                                                    </label>
                                                    <div class="address-details">
                                                        <i class="fas fa-user"></i> <strong>User Name</strong><br>
                                                        <i class="fas fa-phone"></i> 0912345678<br>
                                                        <i class="fas fa-map-marker-alt"></i> 123 Main St, Ha Noi
                                                    </div>
                                                </div>

                                                <div class="address-actions">
                                                    <a href="#">Edit</a>
                                                    <span>|</span>
                                                    <a href="#" class="text-danger">Delete</a>
                                                </div>
                                            </div>

                                            <div class="address-card" onclick="selectAddressCard(this)">
                                                <input type="radio" name="saved_address" id="address-2" value="2">
                                                <span class="radio-check"></span>

                                                <div class="address-card-body">
                                                    <label for="address-2">
                                                        <i class="fas fa-building"></i> Office
                                                    </label>
                                                    <div class="address-details">
                                                        <i class="fas fa-user"></i> <strong>User Name</strong><br>
                                                        <i class="fas fa-phone"></i> 0987654321<br>
                                                        <i class="fas fa-map-marker-alt"></i> 456 Business Ave, Can Tho
                                                    </div>
                                                </div>

                                                <div class="address-actions">
                                                    <a href="#">Edit</a>
                                                    <span>|</span>
                                                    <a href="#" class="text-danger">Delete</a>
                                                </div>
                                            </div>

                                            <div class="address-card new-address selected" onclick="selectAddressCard(this)">
                                                <input type="radio" name="saved_address" id="address-new" value="new" checked>
                                                <span class="radio-check"></span> 

                                                <label for="address-new" class="new-address-label">
                                                    Use a New Address
                                                </label>
                                            </div>

                                        </div>
                                        <div class="address-input-fields">

                                            <div class="form-group">
                                                <label for="address-label">Address Label <span class="required">*</span></label>
                                                <input type="text" class="form-control" id="address-label" name="address-label" placeholder="E.g., Home, Office, Parents' House" required>
                                                <span class="error-message text-danger" style="display: none"></span>
                                            </div>

                                            <div class="row custom-select-address">
                                                <div class="col-md-6 form-group-half">
                                                    <div class="select-custom">
                                                        <label>Town / City
                                                            <abbr class="required" title="required">*</abbr></label>
                                                        <select name="city" class="form-control" required>
                                                            <option value="" disabled selected>Select City</option>
                                                            <option value="0">Ha Noi</option>
                                                            <option value="1">Can Tho</option>
                                                            <option value="2">Vinh Long</option>
                                                            <option value="3">Da Nang</option>
                                                        </select>
                                                        <span class="error-message text-danger" style="display: none"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 form-group-half">
                                                    <div class="select-custom">
                                                        <label>District<abbr class="required" title="required">*</abbr></label>
                                                        <select name="district" class="form-control" required>
                                                            <option value="" disabled selected>Select District</option>
                                                            <option value="0">Thot Not</option>
                                                            <option value="1">Muong Diem</option>
                                                            <option value="2">Tan Loc Dong</option>
                                                            <option value="3">Tan Hung</option>
                                                        </select>
                                                        <span class="error-message text-danger" style="display: none"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="select-custom form-group">
                                                <label>Ward / Commune <abbr class="required" title="required">*</abbr></label>
                                                <select name="ward" class="form-control" required>
                                                    <option value="" disabled selected>Select Ward</option>
                                                    <option value="0">Thuan Hoa</option>
                                                    <option value="1">Co Do</option>
                                                    <option value="2">Cai Tau Ha</option>
                                                    <option value="3">Trung Kien</option>
                                                </select>
                                                <span class="error-message text-danger" style="display: none"></span>
                                            </div>
                                            <div class="form-group mb-1 pb-2">
                                                <label>Street address <abbr class="required" title="required">*</abbr></label>
                                                <input type="text" class="form-control" placeholder="House number and street name" required/>
                                                <span class="error-message text-danger" style="display: none"></span>
                                            </div>
                                            <div class="form-group mt-2">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="set-default-address" name="set-default-address">
                                                    <label class="custom-control-label" for="set-default-address" style="font-weight: 400; font-size: 0.9rem;">Set as default address</label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </li>
                            </ul>

                            <%-- FIX: Đã xoá class `mr-0` thừa --%>
                            <div class="form-footer mt-3 mb-0">
                                <button type="submit" class="btn btn-dark">
                                    Save address
                                </button>
                            </div>
                        </form>
                    </div> 
                </div>
            </div>
        </main>

        <jsp:include page="../common/footer.jsp"></jsp:include>
        <jsp:include page="../common/loading.jsp"/> 
        <jsp:include page="../common/mobile-menu.jsp"></jsp:include>

            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>

        <script>
                                                function selectAddressCard(cardElement) {
                                                    // Ngăn chặn việc click vào link Edit/Delete kích hoạt chọn thẻ
                                                    if (event.target.tagName === 'A') {
                                                        return;
                                                    }

                                                    document.querySelectorAll('.address-card').forEach(card => {
                                                        card.classList.remove('selected');
                                                    });
                                                    cardElement.classList.add('selected');

                                                    const radio = cardElement.querySelector('input[type="radio"]');
                                                    if (radio) {
                                                        radio.checked = true;
                                                    }
                                                    toggleAddressForm(radio.value);
                                                }

                                                function toggleAddressForm(selectedValue) {
                                                    const newAddressForm = document.querySelector('.address-input-fields');
                                                    if (!newAddressForm)
                                                        return;

                                                    if (selectedValue === 'new') {
                                                        $(newAddressForm).slideDown(300);
                                                    } else {
                                                        $(newAddressForm).slideUp(300);
                                                    }
                                                }

                                                document.addEventListener('DOMContentLoaded', function () {
                                                    const selectedRadio = document.querySelector('input[name="saved_address"]:checked');
                                                    if (selectedRadio) {
                                                        toggleAddressForm(selectedRadio.value);
                                                    }

                                                    // Ngăn chặn click vào link Edit/Delete làm chọn thẻ (dự phòng)
                                                    document.querySelectorAll('.address-actions a').forEach(link => {
                                                        link.addEventListener('click', function (e) {
                                                            e.stopPropagation();

                                                        });
                                                    });
                                                });
        </script>
    </body>
</html>