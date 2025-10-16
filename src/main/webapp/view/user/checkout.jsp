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
            <main class="main main-test">
                <div class="container checkout-container">
                    <ul class="checkout-progress-bar d-flex justify-content-center flex-wrap">
                        <li>
                            <a href="cart.html">Shopping Cart</a>
                        </li>
                        <li class="active">
                            <a href="checkout.html">Checkout</a>
                        </li>
                        <li class="disabled">
                            <a href="#">Order Complete</a>
                        </li>
                    </ul>

                    <div class="login-form-container">
                        <h4>
                            View Purchasing Policy
                            <button data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="btn btn-link btn-toggle">
                                here
                            </button>
                        </h4>
                    </div>

                    <div class="row">
                        <div class="col-lg-7">
                            <form action="#" id="checkout-form">
                                <ul class="checkout-steps">
                                    <li>
                                        <h2 class="step-title" data-toggle="collapse" data-target="#contactDetailsCollapse" aria-expanded="true" aria-controls="contactDetailsCollapse">
                                            CONTACT DETAILS
                                        </h2>
                                        <div class="collapse show" id="contactDetailsCollapse">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>First name
                                                            <abbr class="required" title="required">*</abbr>
                                                        </label>
                                                        <input type="text" class="form-control" required />
                                                        <span class="error-message text-danger" style="display: none"></span>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Last name
                                                            <abbr class="required" title="required">*</abbr>
                                                        </label>
                                                        <input type="text" class="form-control" required />
                                                        <span class="error-message text-danger" style="display: none"></span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>Phone
                                                    <abbr class="required" title="required">*</abbr></label>
                                                <input type="text" class="form-control" required />
                                                <span class="error-message text-danger" style="display: none" ></span>
                                            </div>

                                            <div class="form-group">
                                                <label>Email address
                                                    <abbr class="required" title="required">*</abbr></label>
                                                <input type="email" class="form-control" required />
                                                <span class="error-message text-danger" style="display: none"></span>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="section-separator">
                                        <h2 class="step-title" data-toggle="collapse" data-target="#deliveryAddressCollapse" aria-expanded="true" aria-controls="deliveryAddressCollapse">
                                            DELIVERY ADDRESS
                                        </h2>
                                        <div class="collapse show" id="deliveryAddressCollapse">
                                            <div class="select-custom mb-3">
                                                <label>Select a Saved Address</label>
                                                <select name="saved_address" class="form-control">
                                                    <option value="new" selected="selected">
                                                        Use New Address (Default)
                                                    </option>
                                                    <option value="1">Home: 123 Main St, Ha Noi</option>
                                                    <option value="2">
                                                        Office: 456 Business Ave, Can Tho
                                                    </option>
                                                </select>
                                            </div>

                                            <div class="address-input-fields">
                                                <div class="row custom-select-address">
                                                    <div class="col-md-6 form-group-half">
                                                        <div class="select-custom">
                                                            <label>Town / City
                                                                <abbr class="required" title="required">*</abbr></label>
                                                            <select name="city" class="form-control" required>
                                                                <option value="" disabled selected>
                                                                    Select City
                                                                </option>
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
                                                            <select
                                                                name="district"
                                                                class="form-control"
                                                                required
                                                                >
                                                                <option value="" disabled selected>
                                                                    Select District
                                                                </option>
                                                                <option value="0">Thot Not</option>
                                                                <option value="1">Muong Diem</option>
                                                                <option value="2">Tan Loc Dong</option>
                                                                <option value="3">Tan Hung</option>
                                                            </select>
                                                            <span
                                                                class="error-message text-danger"
                                                                style="display: none"
                                                                ></span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="select-custom form-group">
                                                    <label
                                                        >Ward / Commune
                                                        <abbr class="required" title="required"
                                                              >*</abbr
                                                        ></label
                                                    >
                                                    <select name="ward" class="form-control" required>
                                                        <option value="" disabled selected>
                                                            Select Ward
                                                        </option>
                                                        <option value="0">Thuan Hoa</option>
                                                        <option value="1">Co Do</option>
                                                        <option value="2">Cai Tau Ha</option>
                                                        <option value="3">Trung Kien</option>
                                                    </select>
                                                    <span
                                                        class="error-message text-danger"
                                                        style="display: none"
                                                        ></span>
                                                </div>

                                                <div class="form-group mb-1 pb-2">
                                                    <label
                                                        >Street address
                                                        <abbr class="required" title="required"
                                                              >*</abbr
                                                        ></label
                                                    >
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        placeholder="House number and street name"
                                                        required
                                                        />
                                                    <span
                                                        class="error-message text-danger"
                                                        style="display: none"
                                                        ></span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="section-separator">
                                        <h2
                                            class="step-title"
                                            data-toggle="collapse"
                                            data-target="#additionalInfoCollapse"
                                            aria-expanded="true"
                                            aria-controls="additionalInfoCollapse"
                                            >
                                            ADDITIONAL INFORMATION
                                        </h2>
                                        <div class="collapse show" id="additionalInfoCollapse">
                                            <div class="form-group mb-1">
                                                <div class="custom-control custom-checkbox">
                                                    <input
                                                        type="checkbox"
                                                        class="custom-control-input"
                                                        id="delivery-notes-toggle"
                                                        data-toggle="collapse"
                                                        data-target="#collapseThree"
                                                        aria-controls="collapseThree"
                                                        />
                                                    <label
                                                        class="custom-control-label"
                                                        for="delivery-notes-toggle"
                                                        >Delivery Notes</label
                                                    >
                                                </div>
                                            </div>

                                            <div id="collapseThree" class="collapse">
                                                <div class="form-group">
                                                    <label
                                                        >Your notes will be sent to the delivery driver
                                                        <abbr class="required" title="required">*</abbr>
                                                    </label>
                                                    <textarea
                                                        placeholder="Write notes here, e.g., 'Leave package at the porch.'"
                                                        class="form-control"
                                                        required
                                                        ></textarea>
                                                    <span
                                                        class="error-message text-danger"
                                                        style="display: none"
                                                        ></span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="order-comments"
                                                       >Order notes (optional)</label
                                                >
                                                <textarea
                                                    class="form-control"
                                                    placeholder="Notes about your order, e.g. special requests for TankP."
                                                    ></textarea>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </form>
                        </div>

                        <div class="col-lg-5">
                            <div class="order-summary">
                                <h3>YOUR ORDER</h3>

                                <table class="table table-mini-cart">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Product</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product-col">
                                                <h3 class="product-title">
                                                    Circled Ultimate 3D Speaker ×
                                                    <span class="product-qty">4</span>
                                                </h3>
                                            </td>
                                            <td class="price-col">
                                                <span>$1,040.00</span>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="product-col">
                                                <h3 class="product-title">
                                                    Fashion Computer Bag ×
                                                    <span class="product-qty">2</span>
                                                </h3>
                                            </td>
                                            <td class="price-col">
                                                <span>$418.00</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr class="cart-subtotal">
                                            <td>
                                                <h4>Subtotal</h4>
                                            </td>
                                            <td class="price-col">
                                                <span>$1,458.00</span>
                                            </td>
                                        </tr>
                                        <tr class="order-shipping">
                                            <td class="text-left" colspan="2">
                                                <h4 class="m-b-sm" style="display: inline;">Invoice Option</h4>
                                                <span>( + $5 )</span>

                                                <div class="form-group form-group-custom-control">
                                                    <div class="custom-control custom-radio d-flex">
                                                        <input
                                                            type="radio"
                                                            class="custom-control-input"
                                                            name="invoice_option"
                                                            id="invoice_yes"
                                                            checked
                                                            />
                                                        <label class="custom-control-label" for="invoice_yes"
                                                               >Request Invoice</label
                                                        >
                                                    </div>
                                                </div>

                                                <div class="form-group form-group-custom-control mb-0">
                                                    <div class="custom-control custom-radio d-flex mb-0">
                                                        <input
                                                            type="radio"
                                                            name="invoice_option"
                                                            id="invoice_no"
                                                            class="custom-control-input"
                                                            />
                                                        <label class="custom-control-label" for="invoice_no"
                                                               >Do Not Request Invoice</label
                                                        >
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr class="order-total">
                                            <td>
                                                <h4>Total</h4>
                                            </td>
                                            <td>
                                                <b class="total-price" style="color: #0088cc"
                                                   ><span>$1,603.80</span></b
                                                >
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>

                                <div class="payment-methods">
                                    <h4>Payment Method</h4>
                                    <div class="info-box with-icon p-0">
                                        <p>
                                            <strong>Cash on Delivery (COD)</strong>
                                            is available for this order. Please ensure your phone is
                                            accessible to confirm the delivery details.
                                        </p>
                                    </div>
                                </div>

                                <div class="form-group mb-3">
                                    <div class="custom-control custom-checkbox">
                                        <input
                                            type="checkbox"
                                            class="custom-control-input"
                                            id="terms-agree"
                                            required
                                            />
                                        <label class="custom-control-label" for="terms-agree">
                                            By placing your order, you agree to our
                                            <a href="#" target="_blank">Terms and Conditions</a>.
                                        </label>
                                    </div>
                                    <span
                                        class="error-message text-danger"
                                        id="terms-error"
                                        style="display: none"
                                        ></span>
                                </div>

                                <button
                                    type="submit"
                                    class="btn btn-dark btn-place-order"
                                    form="checkout-form"
                                    >
                                    Place order
                                </button>
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
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>
