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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/modalProductStyle.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
    </head>

    <body>
        <jsp:include page="/view/common/header.jsp"/>
        <main class="main">
            <div class="page-header">
                <div class="container d-flex flex-column align-items-center">
                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                        <div class="container"> <ol class="breadcrumb"> 
                                <li class="breadcrumb-item"><a href="demo4.html">Home</a></li> 
                                <li class="breadcrumb-item"><a href="#">Admin Area</a></li> 
                                <li class="breadcrumb-item active" aria-current="page"> Dash Board</li>
                            </ol> 
                        </div>
                    </nav>
                    <h1>Product Management</h1>
                </div>
            </div>

            <div class="container account-container custom-account-container">
                <div class="row">
                    <jsp:include page="/view/common/dashboard-sidebar.jsp" />
                    <div class="col-lg-10 order-lg-last order-1 tab-content">
                        <div class="tab-pane fade show active">
                            <div class="account-content-main">
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <h3 class="account-sub-title d-none d-md-block mb-0"> <i class="fas fa-list align-middle mr-3"></i>Product Management </h3>
                                    <div class="d-flex align-items-center">
                                        <div class="d-flex mr-2 product-search-bar"> <input type="text" class="form-control" placeholder="Search products..." /> <button class="btn btn-sm btn-search-custom" type="button" title="Search"> <i class="fas fa-search"></i> </button> </div>
                                        <button class="action-btn btn-filter shadow-sm mr-2" title="Filter"> <i class="fas fa-filter"></i> <span class="btn-text">Filter</span> </button>
                                        <button type="button" class="action-btn btn-create shadow-sm" title="Create New Product" data-toggle="modal" data-target="#productCreateModal"> <i class="fas fa-plus"></i> <span class="btn-text">Create</span> </button>
                                    </div>
                                </div>
                            </div>
                            <div class="data-table-style text-center">
                                <table class="table table-hover table-striped">
                                    <thead> <tr> <th>ID</th> <th>PRODUCT NAME</th> <th>CATEGORY</th> <th>STOCK</th> <th>LIST PRICE</th> <th>ACTIONS</th> </tr> </thead>
                                    <tbody>
                                        <tr>
                                            <td><span class="data-table-td-style">#001</span></td> <td><span class="data-table-td-style">Traditional Silk Dress</span></td> <td><span class="data-table-td-style">Clothing</span></td> <td><span class="data-table-td-style">3</span></td> <td><span class="data-table-td-style">$30.00</span></td>
                                            <td> <div class="d-flex justify-content-center"> <a href="#" class="action-btn btn-view mx-1" title="Update Product" data-toggle="modal" data-target="#productUpdateModal" data-product-id="001" > <i class="fas fa-edit"></i> <span class="btn-text">View</span> </a> <button class="action-btn btn-delete mx-1" title="Delete"> <i class="fas fa-trash"></i><span class="btn-text">Delete</span> </button> </div> </td>
                                        </tr>
                                        <tr>
                                            <td><span class="data-table-td-style">#002</span></td> <td><span class="data-table-td-style">Handmade Ceramic Mug</span></td> <td><span class="data-table-td-style">Home Goods</span></td> <td><span class="data-table-td-style">45</span></td> <td><span class="data-table-td-style">$15.00</span></td>
                                            <td> <div class="d-flex justify-content-center"> <a href="#" class="action-btn btn-view mx-1" title="Update Product" data-toggle="modal" data-target="#productUpdateModal" data-product-id="002"> <i class="fas fa-edit"></i> <span class="btn-text">View</span> </a> <button class="action-btn btn-delete mx-1" title="Delete"> <i class="fas fa-trash"></i><span class="btn-text">Delete</span> </button> </div> </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr class="mt-0 mb-3 pb-2" />
                                <%-- Phân trang và nút Back --%>
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
        <%-- ========= MODAL TẠO MỚI SẢN PHẨM (DÙNG CSS tp-pro-modal) ========= --%>
        <%-- =================================================================== --%>
        <div class="modal fade tp-pro-modal" id="productCreateModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="productCreateForm" novalidate>
                        <div class="tp-pro-modal__header tp-pro-modal__header--create">
                            <h5 class="tp-pro-modal__title"><i class="fas fa-box-open text-success"></i> CREATE NEW PRODUCT</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="tp-pro-modal__body">
                            <div class="tp-pro-modal__grid">

                                <%-- Cột chính (7/12) --%>
                                <div class="tp-pro-modal__col-main">
                                    <%-- Card: Thông tin cơ bản --%>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-info-circle"></i>Basic Information</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Product Name</label> <input type="text" class="tp-pro-modal__input" placeholder="Product Name" required> </div>
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Category</label> <select class="tp-pro-modal__select" required> <option value="">Select Category</option> <option>T-Shirt</option> <option>Jacket</option> <option>Home Goods</option> <option>Clothing</option> </select> </div>
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Description</label> <textarea class="tp-pro-modal__textarea" placeholder="Description" rows="6"></textarea> </div>
                                        </div>
                                    </div>
                                    <%-- Card: Hình ảnh sản phẩm --%>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-images"></i>Product Images</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Upload Images</label> <div class="tp-pro-modal__custom-file"> <input type="file" class="tp-pro-modal__custom-file-input" id="createProductFile" multiple> <label class="tp-pro-modal__custom-file-label" for="createProductFile">Choose files...</label> </div> </div>
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Or Paste Image URL</label> <input type="text" class="tp-pro-modal__input" placeholder="Or paste image URL"> </div>
                                        </div>
                                    </div>
                                    <%-- Card Featured đã được dời đi --%>
                                </div>

                                <%-- Cột phụ (5/12) --%>
                                <div class="tp-pro-modal__col-side">
                                    <%-- Card: Biến thể sản phẩm --%>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-sitemap"></i>Product Variants</div>
                                        <div class="tp-pro-modal__card-body">
                                            <label class="tp-pro-modal__label">Add Variant by Color</label>
                                            <div class="tp-pro-modal__input-group mb-3">
                                                <select class="tp-pro-modal__select" id="tp-color-select-create">
                                                    <option value="" data-color-name="Select Color">Select Color</option>
                                                    <%-- CẬP NHẬT 5 MÀU --%>
                                                    <option value="#222222" data-color-name="Black">Black</option>
                                                    <option value="#F5F5F5" data-color-name="White">White</option>
                                                    <option value="#0A3161" data-color-name="Blue">Blue</option>
                                                    <option value="#4A4A4A" data-color-name="Gray">Gray</option>
                                                    <option value="#800020" data-color-name="Red">Red</option>
                                                </select>
                                                <div class="tp-pro-modal__input-group-append"> <button class="tp-pro-modal__btn tp-pro-modal__btn--primary" type="button" id="tp-add-variant-btn-create"> <i class="fas fa-plus"></i> Add </button> </div>
                                            </div>
                                            <hr>
                                            <label class="tp-pro-modal__label d-block mb-2 font-weight-bold">Manage Variants</label>
                                            <div class="table-responsive" style="max-height: 280px;"> <%-- Giảm chiều cao bảng 1 chút --%>
                                                <table class="tp-pro-modal__variant-table">
                                                    <thead> <tr> <th>Color</th> <th style="width: 80px;">Size</th> <th>Old Price</th> <th>New Price</th> <th>Qty</th> <th></th> </tr> </thead>
                                                    <tbody id="tp-variants-tbody-create"></tbody>
                                                </table>
                                            </div>
                                            <hr class="mt-2">
                                            <div class="tp-pro-modal__order-stat" style="font-size: 1rem; margin-bottom: 0;"> <span>Total Quantity:</span> <strong id="tp-total-quantity-create">0</strong> </div>
                                        </div>
                                    </div>
                                    <%-- DỜI CARD FEATURED VÀO ĐÂY --%>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-star"></i>Featured</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group" style="margin-bottom: 0;">
                                                <label class="tp-pro-modal__label d-block mb-2">Featured Status</label> 
                                                <label class="tp-pro-modal__switch"> <input type="checkbox" id="createProductFeatured"> <span class="tp-pro-modal__switch-slider"></span> </label>
                                                <span class="tp-pro-modal__switch-label">Mark as Featured</span>
                                                <small>Featured products might be shown on the homepage.</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%-- Footer --%>
                        <div class="tp-pro-modal__footer"> <p class="tp-pro-modal__footer-note">Powered by TankP</p> <button type="reset" class="tp-pro-modal__btn tp-pro-modal__btn--secondary"><i class="fas fa-undo"></i> Reset</button> <button type="submit" class="tp-pro-modal__btn tp-pro-modal__btn--success"><i class="fas fa-check-circle"></i> Create Product</button> </div>
                    </form>
                </div>
            </div>
        </div>

        <%-- =================================================================== --%>
        <%-- ========= MODAL CẬP NHẬT SẢN PHẨM (DÙNG CSS tp-pro-modal) ======== --%>
        <%-- =================================================================== --%>
        <div class="modal fade tp-pro-modal" id="productUpdateModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="productUpdateForm" novalidate>
                        <div class="tp-pro-modal__header">
                            <h5 class="tp-pro-modal__title"><i class="fas fa-pencil-alt text-primary"></i> UPDATE PRODUCT</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="tp-pro-modal__body">
                            <div class="tp-pro-modal__grid">
                                <div class="tp-pro-modal__col-main">
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-info-circle"></i>Basic Information</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Product Name</label> <input type="text" class="tp-pro-modal__input" value="Premium Cotton T-Shirt" required> </div>
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Category</label> <select class="tp-pro-modal__select" required> <option value="">Select Category</option> <option selected>T-Shirt</option> <option>Jacket</option> </select> </div>
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Description</label> <textarea class="tp-pro-modal__textarea" rows="6">A high-quality, pre-shrunk 100% cotton t-shirt.</textarea> </div>
                                        </div>
                                    </div>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-images"></i>Product Images</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Upload Images</label> <div class="tp-pro-modal__custom-file"> <input type="file" class="tp-pro-modal__custom-file-input" id="updateProductFile" multiple> <label class="tp-pro-modal__custom-file-label" for="updateProductFile">Choose files...</label> </div> </div>
                                            <div class="tp-pro-modal__form-group"> <label class="tp-pro-modal__label">Or Paste Image URL</label> <input type="text" class="tp-pro-modal__input" placeholder="Or paste image URL"> </div>
                                        </div>
                                    </div>
                                </div>

                                <%-- Cột phụ (5/12) --%>
                                <div class="tp-pro-modal__col-side">
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-sitemap"></i>Product Variants</div>
                                        <div class="tp-pro-modal__card-body">
                                            <label class="tp-pro-modal__label">Add Variant by Color</label>
                                            <div class="tp-pro-modal__input-group mb-3">
                                                <select class="tp-pro-modal__select" id="tp-color-select-update">
                                                    <option value="" data-color-name="Select Color">Select Color</option>
                                                    <option value="#222222" data-color-name="Black">Black</option>
                                                    <option value="#F5F5F5" data-color-name="White">White</option>
                                                    <option value="#0A3161" data-color-name="Blue">Blue</option>
                                                    <option value="#4A4A4A" data-color-name="Gray">Gray</option>
                                                    <option value="#800020" data-color-name="Red">Red</option>
                                                </select>
                                                <div class="tp-pro-modal__input-group-append"> <button class="tp-pro-modal__btn tp-pro-modal__btn--primary" type="button" id="tp-add-variant-btn-update"> <i class="fas fa-plus"></i> Add </button> </div>
                                            </div>
                                            <hr>
                                            <label class="tp-pro-modal__label d-block mb-2 font-weight-bold">Manage Variants</label>
                                            <div class="table-responsive" style="max-height: 280px;">
                                                <table class="tp-pro-modal__variant-table">
                                                    <thead> <tr> <th>Color</th> <th style="width: 80px;">Size</th> <th>Old Price</th> <th>New Price</th> <th>Qty</th> <th></th> </tr> </thead>
                                                    <tbody id="tp-variants-tbody-update">
                                                        <tr>
                                                            <td><span class="badge" style="background-color: #800020; color: #fff; border: 1px solid #000;">Red</span></td>
                                                            <td> <select class="tp-pro-modal__select tp-variant-size-select"> <option>XL</option> <option>L</option> <option selected>M</option> <option>S</option> </select> </td>
                                                            <td><input type="number" class="tp-pro-modal__input" value="25"></td>
                                                            <td><input type="number" class="tp-pro-modal__input" value="20"></td>
                                                            <td><input type="number" class="tp-pro-modal__input tp-variant-qty-input" value="50"></td>
                                                            <td><button type="button" class="tp-pro-modal__btn tp-pro-modal__btn--danger tp-remove-variant-btn"><i class="fas fa-trash"></i></button></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="badge" style="background-color: #4A4A4A; color: #fff; border: 1px solid #000;">Gray</span></td>
                                                            <td> <select class="tp-pro-modal__select tp-variant-size-select"> <option>XL</option> <option selected>L</option> <option>M</option> <option>S</option> </select> </td>
                                                            <td><input type="number" class="tp-pro-modal__input" value="30"></td>
                                                            <td><input type="number" class="tp-pro-modal__input" value="28"></td>
                                                            <td><input type="number" class="tp-pro-modal__input tp-variant-qty-input" value="20"></td>
                                                            <td><button type="button" class="tp-pro-modal__btn tp-pro-modal__btn--danger tp-remove-variant-btn"><i class="fas fa-trash"></i></button></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <hr class="mt-2">
                                            <div class="tp-pro-modal__order-stat" style="font-size: 1rem; margin-bottom: 0;"> <span>Total Quantity:</span> <strong id="tp-total-quantity-update">70</strong> <%-- Cập nhật tổng Qty mẫu --%></div>
                                        </div>
                                    </div>
                                    <div class="tp-pro-modal__card">
                                        <div class="tp-pro-modal__card-header"><i class="fas fa-star"></i>Featured</div>
                                        <div class="tp-pro-modal__card-body">
                                            <div class="tp-pro-modal__form-group" style="margin-bottom: 0;">
                                                <label class="tp-pro-modal__label d-block mb-2">Featured Status</label> 
                                                <label class="tp-pro-modal__switch"> <input type="checkbox" id="updateProductFeatured" checked> <span class="tp-pro-modal__switch-slider"></span> </label>
                                                <span class="tp-pro-modal__switch-label">Mark as Featured</span>
                                                <small>Featured products might be shown on the homepage.</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%-- Footer --%>
                        <div class="tp-pro-modal__footer"> <p class="tp-pro-modal__footer-note">Powered by TankP</p> <button type="button" class="tp-pro-modal__btn tp-pro-modal__btn--danger"><i class="fas fa-trash"></i> Delete</button> <button type="reset" class="tp-pro-modal__btn tp-pro-modal__btn--secondary"><i class="fas fa-undo"></i> Reset</button> <button type="submit" class="tp-pro-modal__btn tp-pro-modal__btn--primary"><i class="fas fa-save"></i> Save Changes</button> </div>
                    </form>
                </div>
            </div>
        </div>


        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script> 
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>

        <%-- =================================================================== --%>
        <%-- ================ JAVASCRIPT CHO BẢNG BIẾN THỂ =================== --%>
        <%-- =================================================================== --%>
        <script>
            $(document).ready(function () {

                // --- Hàm 1: Thêm một dòng biến thể ---
                function addVariantRow(buttonId, selectId, tbodyId) {
                    var selectedOption = $(selectId + " option:selected");
                    var colorValue = selectedOption.val();
                    var colorName = selectedOption.data("color-name");

                    if (!colorValue) {
                        alert("Please select a color.");
                        return;
                    }

                    // CẬP NHẬT 4 SIZE MỚI
                    var sizes = ["XL", "L", "M", "S"];
                    var sizeOptions = '<option value="">Size</option>'; // Thêm option mặc định
                    sizes.forEach(function (size) {
                        sizeOptions += '<option value="' + size + '">' + size + '</option>';
                    });

                    var newRow =
                            '<tr data-color-name="' + colorName + '">' + // Thêm data attribute để lưu tên màu
                            '    <td>' +
                            '        <span class="badge" style="background-color: ' + colorValue + '; color: ' + (colorValue === '#F5F5F5' ? '#000' : '#fff') + '; border: 1px solid #ccc;">' + colorName + '</span>' + // Chỉnh màu chữ cho White
                            '    </td>' +
                            '    <td>' +
                            // Thêm class để dễ dàng chọn select size này
                            '        <select class="tp-pro-modal__select tp-variant-size-select" required>' + sizeOptions + '</select>' +
                            '    </td>' +
                            '    <td><input type="number" class="tp-pro-modal__input" placeholder="e.g., 25"></td>' +
                            '    <td><input type="number" class="tp-pro-modal__input" placeholder="e.g., 20" required></td>' +
                            '    <td><input type="number" class="tp-pro-modal__input tp-variant-qty-input" value="1" min="0" required></td>' + // Thêm min="0"
                            '    <td>' +
                            '        <button type="button" class="tp-pro-modal__btn tp-pro-modal__btn--danger tp-remove-variant-btn">' +
                            '            <i class="fas fa-trash"></i>' +
                            '        </button>' +
                            '    </td>' +
                            '</tr>';

                    $(tbodyId).append(newRow);
                    // Sau khi thêm, tính lại tổng số lượng
                    calculateTotalQuantity(tbodyId === '#tp-variants-tbody-create' ? '#productCreateModal' : '#productUpdateModal');
                }

                // --- Hàm 2: Xóa một dòng biến thể ---
                $("body").on("click", ".tp-remove-variant-btn", function () {
                    $(this).closest("tr").remove();
                    calculateTotalQuantity("#productCreateModal");
                    calculateTotalQuantity("#productUpdateModal");
                });

                // --- Hàm 3: Tính tổng số lượng ---
                function calculateTotalQuantity(modalId) {
                    var total = 0;
                    var totalSpan = $(modalId + " " + (modalId === "#productCreateModal" ? "#tp-total-quantity-create" : "#tp-total-quantity-update"));
                    $(modalId + " .tp-variant-qty-input").each(function () {
                        var qty = parseInt($(this).val());
                        if (!isNaN(qty) && qty >= 0) { // Cho phép số lượng 0
                            total += qty;
                        }
                    });
                    totalSpan.text(total);
                }

                // --- LOGIC MỚI: Kiểm tra trùng Size/Color khi chọn Size ---
                $("body").on("change", ".tp-variant-size-select", function () {
                    var currentSelect = $(this);
                    var currentRow = currentSelect.closest('tr');
                    var currentColorName = currentRow.data('color-name');
                    var currentSelectedSize = currentSelect.val();
                    var tbody = currentRow.closest('tbody');
                    var isDuplicate = false;

                    // Chỉ kiểm tra nếu người dùng chọn một size cụ thể (không phải option "Size")
                    if (currentSelectedSize) {
                        // Lặp qua TẤT CẢ các hàng KHÁC trong cùng tbody
                        tbody.find('tr').not(currentRow).each(function () {
                            var otherRow = $(this);
                            var otherColorName = otherRow.data('color-name');
                            var otherSelectedSize = otherRow.find('.tp-variant-size-select').val();

                            // Nếu tìm thấy hàng khác cùng màu VÀ cùng size đã chọn
                            if (otherColorName === currentColorName && otherSelectedSize === currentSelectedSize) {
                                isDuplicate = true;
                                return false; // Dừng vòng lặp .each()
                            }
                        });
                    }

                    // Nếu phát hiện trùng lặp
                    if (isDuplicate) {
                        alert('Size "' + currentSelectedSize + '" already exists for color "' + currentColorName + '". Please choose a different size.');
                        currentSelect.val(''); // Reset lại select về option mặc định "Size"
                    }
                });


                // --- Gán sự kiện cho các nút ---
                $("#tp-add-variant-btn-create").on("click", function () {
                    addVariantRow("#tp-add-variant-btn-create", "#tp-color-select-create", "#tp-variants-tbody-create");
                });
                $("#tp-add-variant-btn-update").on("click", function () {
                    addVariantRow("#tp-add-variant-btn-update", "#tp-color-select-update", "#tp-variants-tbody-update");
                });
                $("body").on("input", ".tp-variant-qty-input", function () {
                    var modalId = $(this).closest(".modal").attr("id");
                    calculateTotalQuantity("#" + modalId);
                });
                $('#productUpdateModal').on('shown.bs.modal', function () {
                    // Bạn cần thêm code ở đây để tải dữ liệu variants của sản phẩm cần update
                    // Sau khi tải xong, gọi calculateTotalQuantity
                    calculateTotalQuantity("#productUpdateModal");
                });
                $('.tp-pro-modal__custom-file-input').on('change', function () {
                    var fileName = $(this).val().split('\\').pop();
                    $(this).next('.tp-pro-modal__custom-file-label').html(fileName || 'Choose files...'); // Hiển thị lại placeholder nếu không có file
                });
            });
        </script>
    </body>
</html>