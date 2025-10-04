<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="page-wrapper">
    <div class="top-notice bg-primary text-white">
        <div class="container text-center">
            <h5 class="d-inline-block">Get Up to <b>40% OFF</b> New-Season Styles only <b>TankP</b></h5>
            <a class="category">MEN</a>
            <a class="category ml-2 mr-3">WOMEN</a>
            <small>* Limited time only.</small>
            <button title="Close (Esc)" type="button" class="mfp-close">×</button>
        </div>
    </div>
    <header class="header">
        <div
            class="header-middle sticky-header"
            data-sticky-options="{'mobile': true}">
            <div class="container">
                <div class="header-left col-lg-2 w-auto pl-0">
                    <button
                        class="mobile-menu-toggler text-primary mr-2"
                        type="button">
                        <i class="fas fa-bars"></i>
                    </button>
                    <a href="demo4.html" class="logo">
                        <img
                            src="${pageContext.request.contextPath}/assets/images/logo/logoDBN.png"
                            width="111"
                            height="44"
                            alt="TankP Logo"/>
                    </a>
                </div>
                <div class="header-right w-lg-max">
                    <div
                        class="header-icon header-search header-search-inline header-search-category w-lg-max text-right mt-0">
                        <a href="#" class="search-toggle" role="button">
                            <i class="icon-search-3"></i></a>
                        <form action="#" method="get">
                            <div class="header-search-wrapper">
                                <input
                                    type="search"
                                    class="form-control"
                                    name="q"
                                    id="q"
                                    placeholder="Search with TankP"
                                    required/>
                                <div class="select-custom">
                                    <select id="cat" name="cat">
                                        <option value="">All Categories</option>
                                        <option value="4">Fashion</option>
                                        <option value="12">- Women</option>
                                        <option value="13">- Men</option>
                                        <option value="66">- Jewellery</option>
                                        <option value="67">- Kids Fashion</option>
                                        <option value="5">Electronics</option>
                                        <option value="21">- Smart TVs</option>
                                        <option value="22">- Cameras</option>
                                        <option value="63">- Games</option>
                                        <option value="7">Home &amp; Garden</option>
                                        <option value="11">Motors</option>
                                        <option value="31">- Cars and Trucks</option>
                                        <option value="32">
                                            - Motorcycles &amp; Powersports
                                        </option>
                                        <option value="33">- Parts &amp; Accessories</option>
                                        <option value="34">- Boats</option>
                                        <option value="57">- Auto Tools &amp; Supplies</option>
                                    </select>
                                </div>
                                <button
                                    class="btn icon-magnifier p-0"
                                    title="search with TankP"
                                    type="submit"></button>
                            </div>
                            </form>
                    </div>
                    <div class="header-contact d-none d-lg-flex pl-4 pr-4">
                        <img
                            alt="phone"
                            src="${pageContext.request.contextPath}/assets/images/phone.png"
                            width="30"
                            height="30"
                            class="pb-1"
                            />
                        <h6>Call TankP now<a href="tel:#" class="text-dark font1">+849 324 423</a></h6>
                    </div>

                    <a href="login.html" class="header-icon" title="login"><i class="icon-user-2"></i></a>

                    <a href="wishlist.html" class="header-icon" title="wishlist"><i class="icon-wishlist-2"></i></a>

                    <div class="dropdown cart-dropdown">
                        <a
                            href="#"
                            title="Cart"
                            class="dropdown-toggle dropdown-arrow cart-toggle"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            data-display="static"
                            >
                            <i class="minicart-icon"></i>
                            <span class="cart-count badge-circle">3</span>
                        </a>

                        <div class="cart-overlay"></div>

                        <div class="dropdown-menu mobile-cart">
                            <a href="#" title="Close (Esc)" class="btn-close">×</a>

                            <div class="dropdownmenu-wrapper custom-scrollbar">
                                <div class="dropdown-cart-header">Shopping Cart</div>
                                <div class="dropdown-cart-products">
                                    <div class="product">
                                        <div class="product-details">
                                            <h4 class="product-title">
                                                <a href="product.html"
                                                   >Ultimate 3D Bluetooth Speaker</a>
                                            </h4>

                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span> × $99.00
                                            </span>
                                        </div>
                                        <figure class="product-image-container">
                                            <a href="product.html" class="product-image">
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-1.jpg"
                                                    alt="product"
                                                    width="80"
                                                    height="80"
                                                    />
                                            </a>

                                            <a href="#" class="btn-remove" title="Remove Product"
                                               ><span>×</span></a
                                                >
                                        </figure>
                                    </div>
                                    <div class="product">
                                        <div class="product-details">
                                            <h4 class="product-title">
                                                <a href="product.html"
                                                   >Brown Women Casual HandBag</a
                                                    >
                                            </h4>

                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span> × $35.00
                                            </span>
                                        </div>
                                        <figure class="product-image-container">
                                            <a href="product.html" class="product-image">
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-2.jpg"
                                                    alt="product"
                                                    width="80"
                                                    height="80"
                                                    />
                                            </a>

                                            <a href="#" class="btn-remove" title="Remove Product"
                                               ><span>×</span></a
                                                >
                                        </figure>
                                    </div>
                                    <div class="product">
                                        <div class="product-details">
                                            <h4 class="product-title">
                                                <a href="product.html"
                                                   >Circled Ultimate 3D Speaker</a
                                                    >
                                            </h4>

                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span> × $35.00
                                            </span>
                                        </div>
                                        <figure class="product-image-container">
                                            <a href="product.html" class="product-image">
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg"
                                                    alt="product"
                                                    width="80"
                                                    height="80"
                                                    />
                                            </a>
                                            <a href="#" class="btn-remove" title="Remove Product"
                                               ><span>×</span></a
                                                >
                                        </figure>
                                    </div>
                                    </div>
                                <div class="dropdown-cart-total">
                                    <span>SUBTOTAL:</span>

                                    <span class="cart-total-price float-right">$134.00</span>
                                </div>
                                <div class="dropdown-cart-action">
                                    <a
                                        href="cart.html"
                                        class="btn btn-gray btn-block view-cart"
                                        >View Cart</a
                                        >
                                    <a href="checkout.html" class="btn btn-dark btn-block"
                                       >Checkout</a
                                        >
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div
            class="header-bottom sticky-header d-none d-lg-block"
            data-sticky-options="{'mobile': false}"
            >
            <div class="container">
                <nav class="main-nav w-100">
                    <ul class="menu">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="active">
                            <a href="#">Shop</a>
                        </li>
                        <li class="float-right"><a href="${pageContext.request.contextPath}/view/authen/login.jsp" class="pl-5">Login</a></li>
                        <li class="float-right"><a href="${pageContext.request.contextPath}/view/authen/register.jsp" class="pl-5">Register</a></li>
                    </ul>
                </nav>
            </div>
            </div>
        </header>
    </div>