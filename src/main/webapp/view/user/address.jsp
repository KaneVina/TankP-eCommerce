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

        <style>
            .address-card-selector {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 1.25rem; 
                margin-bottom: 1.5rem;
                /* MỚI: Giúp các thẻ có chiều cao bằng nhau */
                align-items: stretch; 
            }

            .address-card {
                position: relative;
                border: 2px solid #e7e7e7;
                border-radius: 8px;
                /* GIẢM PADDING: Gọn gàng hơn */
                padding: 1rem; 
                cursor: pointer;
                transition: all 0.3s ease;
                background: #fff;
                display: flex; /* MỚI: Dùng flex để thẻ new-address giãn 100% */
                flex-direction: column; /* MỚI */
            }

            .address-card:hover {
                border-color: #ccc;
                background-color: #fcfcfc;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
                transform: translateY(-2px);
            }

            .address-card input[type="radio"] {
                position: absolute; opacity: 0; width: 0; height: 0;
            }
            
            .address-card .radio-check {
                position: absolute;
                /* Điều chỉnh vị trí radio */
                top: 1rem; 
                right: 1rem;
                width: 20px;
                height: 20px;
                border: 2px solid #ccc;
                border-radius: 50%;
                background: #fff;
                transition: all 0.2s ease;
            }
            
            .address-card.selected .radio-check::after {
                content: '';
                position: absolute;
                top: 50%; left: 50%;
                transform: translate(-50%, -50%);
                width: 10px; height: 10px;
                border-radius: 50%;
                background: var(--primary-color, #08C);
            }

            .address-card.selected {
                border-color: var(--primary-color, #08C); 
                background-color: #f8faff;
                box-shadow: 0 4px 16px rgba(0, 102, 204, 0.1);
            }
            
            .address-card.selected .radio-check {
                border-color: var(--primary-color, #08C);
            }

            .address-card label {
                display: flex; 
                align-items: center;
                cursor: pointer;
                font-weight: 600;
                /* GIẢM FONT/MARGIN: Gọn gàng hơn */
                font-size: 1rem; 
                margin-bottom: 0.5rem; 
                color: #333;
                padding-right: 25px; 
            }
            
            .address-card label i {
                margin-right: 0.5rem;
                color: var(--primary-color, #08C);
            }

            .address-card .badge-default {
                font-size: 0.7rem;
                padding: 0.2em 0.6em;
                margin-left: 0.75rem;
                font-weight: 500;
                vertical-align: middle;
                background-color: var(--primary-color, #08C);
                color: #fff;
                border-radius: 4px;
            }
            
            /* MỚI: CSS cho phần thân thẻ, để đẩy actions xuống dưới */
            .address-card-body {
                flex-grow: 1; /* Đẩy actions xuống cuối */
            }

            .address-card .address-details {
                /* GIẢM FONT/LINE-HEIGHT: Gọn gàng hơn */
                font-size: 0.875rem; 
                color: #555;
                line-height: 1.6; 
                padding-right: 25px; 
            }
            
            .address-card .address-details i {
                margin-right: 8px;
                color: #777;
                width: 1em;
                text-align: center;
            }

            .address-actions {
                border-top: 1px solid #eee;
                /* GIẢM PADDING/MARGIN/FONT: Gọn gàng hơn */
                padding-top: 0.75rem; 
                margin-top: 0.75rem;
                font-size: 0.85rem; 
            }
            
            .address-actions a {
                font-weight: 600;
                text-decoration: none;
                color: var(--primary-color, #08C);
                margin-right: 0.5rem;
            }
            .address-actions a:hover { text-decoration: underline; }
            .address-actions a.text-danger:hover { color: #c00 !important; }
            .address-actions span { color: #ccc; margin: 0 0.25rem; }

            /* =================================================
               CSS MỚI: Thiết kế lại thẻ "New Address" (giống hình)
               ================================================= */
            .address-card.new-address {
                align-items: center;
                justify-content: center;
                text-align: center;
                border-style: dashed;
                border-width: 2px;
                height: 100%; /* Giãn 100% chiều cao của grid row */
            }

            /* Ghi đè CSS của .address-card-body và .address-actions */
            .address-card.new-address .address-card-body,
            .address-card.new-address .address-actions {
                display: none; 
            }

            /* Ghi đè label mặc định */
            .address-card.new-address label.new-address-label {
                padding: 0;
                margin: 0;
                font-size: 0.95rem;
                font-weight: 600;
                color: #555;
            }
            .address-card.new-address label {
                padding-right: 0;
                margin-bottom: 0;
            }
            
            .address-card.new-address.selected {
                 border-style: solid;
            }
            
        </style>
        </head>

    <body>
        <jsp:include page="/view/common/header.jsp"/>
        <main class="main">
            <%-- Header trang --%>
            <div class="page-header">
                <div class="container d-flex flex-column align-items:center">
                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                        <%-- FIX: Đã xoá <div class="container"> thừa --%>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="demo4.html">Home</a></li>
                            <li class="breadcrumb-item">
                                <a href="category.html">Shop</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                My Account
                            </li>
                        </ol>
                    </nav>
                    <h1>Address</h1>
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
                if (!newAddressForm) return;

                if (selectedValue === 'new') {
                    $(newAddressForm).slideDown(300);
                } else {
                    $(newAddressForm).slideUp(300);
                }
            }
        
            document.addEventListener('DOMContentLoaded', function() {
                const selectedRadio = document.querySelector('input[name="saved_address"]:checked');
                if (selectedRadio) {
                    toggleAddressForm(selectedRadio.value);
                }
                
                // Ngăn chặn click vào link Edit/Delete làm chọn thẻ (dự phòng)
                document.querySelectorAll('.address-actions a').forEach(link => {
                    link.addEventListener('click', function(e) {
                        e.stopPropagation();
                        // Thêm logic xử lý Edit/Delete của bạn ở đây
                        // Ví dụ: alert('Bạn đã click ' + e.target.innerText);
                    });
                });
            });
        </script>
    </body>
</html>