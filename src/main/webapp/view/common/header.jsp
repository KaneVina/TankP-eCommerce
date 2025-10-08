<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<div class="page-wrapper">
    <div class="top-notice bg-primary text-white">
        <div class="container text-center">
            <h5 class="d-inline-block">Get Up to <b>40% OFF</b> New-Season Styles only <b>TankP</b></h5>
            <a href="#" class="category">MEN</a>
            <a href="#" class="category ml-2 mr-3">WOMEN</a>
            <small>* Limited time only.</small>
            <button title="Close (Esc)" type="button" class="mfp-close">×</button>
        </div>
    </div>

    <header class="header">
        <div class="header-middle sticky-header" data-sticky-options="{'mobile': true}">
            <div class="container">
                <div class="header-left col-lg-2 w-auto pl-0">
                    <button class="mobile-menu-toggler text-primary mr-2"type="button">
                        <i class="fas fa-bars"></i>
                    </button>
                    <a href="${pageContext.request.contextPath}/home" class="logo"> 
                        <img
                            src="${pageContext.request.contextPath}/assets/images/logo/logoDBN.png"
                            width="120" height="50" alt="TankP Logo"/>
                    </a>
                </div>

                <div class="header-right w-lg-max">
                    <div class="header-icon header-search header-search-inline header-search-category w-lg-max text-right mt-0">
                        <a href="#" class="search-toggle" role="button">
                            <i class="icon-search-3"></i></a>
                        <!--thanh search-->
                        <form action="home" method="GET"> 
                            <input type="hidden" name="search" value="searchByName"/>
                            <div class="header-search-wrapper">
                                <input type="search" class="form-control"name="keyword" id="q" placeholder="Search with TankP" required/>
                                <button class="btn icon-magnifier p-0" title="search with TankP" type="submit"></button>
                            </div>
                        </form>
                    </div>

                    <div class="header-contact d-none d-lg-flex pl-4 pr-4">
                        <img alt="phone" src="${pageContext.request.contextPath}/assets/images/phone.png"
                             width="30" height="30" class="pb-1"/>
                        <h6>Call TankP now<a href="tel:+849324423" class="text-dark font1">+849 324 423</a></h6>
                    </div>

                    <a href="${pageContext.request.contextPath}/view/authen/login.jsp" class="header-icon" title="login">
                        <i class="icon-user-2"></i>
                    </a>

                    <a href="${pageContext.request.contextPath}/wishlist.jsp" class="header-icon" title="wishlist">
                        <i class="icon-wishlist-2"></i>
                    </a>

                    <div class="dropdown cart-dropdown">
                        <a href="#" title="Cart" class="dropdown-toggle dropdown-arrow cart-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
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
                                                <a href="${pageContext.request.contextPath}/product.jsp">Ultimate 3D Bluetooth Speaker</a>
                                            </h4>
                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span> × $99.00
                                            </span>
                                        </div>
                                        <figure class="product-image-container">
                                            <a href="${pageContext.request.contextPath}/product.jsp" class="product-image">
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-1.jpg"
                                                    alt="product" width="80" height="80"/>
                                            </a>
                                            <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                        </figure>
                                    </div>
                                    <div class="product">
                                        <div class="product-details">
                                            <h4 class="product-title">
                                                <a href="${pageContext.request.contextPath}/product.jsp">Brown Women Casual HandBag</a>
                                            </h4>
                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span> × $35.00
                                            </span>
                                        </div>
                                        <figure class="product-image-container">
                                            <a href="${pageContext.request.contextPath}/product.jsp" class="product-image">
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-2.jpg"
                                                    alt="product" width="80" height="80"/>
                                            </a>
                                            <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                        </figure>
                                    </div>
                                    <div class="product">
                                        <div class="product-details">
                                            <h4 class="product-title">
                                                <a href="${pageContext.request.contextPath}/product.jsp">Circled Ultimate 3D Speaker</a>
                                            </h4>
                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span> × $35.00
                                            </span>
                                        </div>
                                        <figure class="product-image-container">
                                            <a href="${pageContext.request.contextPath}/product.jsp" class="product-image">
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg"
                                                    alt="product" width="80" height="80"/>
                                            </a>
                                            <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                        </figure>
                                    </div>
                                </div>
                                <div class="dropdown-cart-total">
                                    <span>SUBTOTAL:</span>
                                    <span class="cart-total-price float-right">$134.00</span>
                                </div>
                                <div class="dropdown-cart-action">
                                    <a href="${pageContext.request.contextPath}/cart.jsp" class="btn btn-gray btn-block view-cart"
                                       >View Cart</a>
                                    <a href="${pageContext.request.contextPath}/checkout.jsp" class="btn btn-dark btn-block"
                                       >Checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div
            class="header-bottom sticky-header d-none d-lg-block"
            data-sticky-options="{'mobile': false}">
            <div class="container">
                <nav class="main-nav w-100">
                    <ul class="menu">
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/home">Home</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/shop">Shop</a>
                        </li>
                        <li>
                            <a href="home">Categories</a> 
                            <div class="megamenu megamenu-fixed-width megamenu-3cols">
                                <div class="row">

                                    <%-- Lặp qua các Danh mục Cấp Cha, chỉ lấy 2 cột đầu (index 0 và 1) --%>
                                    <c:forEach var="rootCat" items="${rootCategories}" varStatus="status">
                                        <c:if test="${status.index < 2}">

                                            <div class="col-lg-4">
                                                <%-- Tiêu đề: Tên Danh mục Cấp Cha (Link lọc theo id) --%>
                                                <a href="home?search=category&categoryId=${rootCat.id}" class="nolink">${rootCat.name}</a>
                                                <ul class="submenu">

                                                    <%-- Lặp qua các Danh mục Cấp Con --%>
                                                    <c:forEach var="childCat" items="${childCategories}">

                                                        <%-- KIỂM TRA MỐI QUAN HỆ: Nếu parentID của con khớp với id của cha --%>
                                                        <c:if test="${childCat.parentID == rootCat.id}">
                                                            <li>
                                                                <%-- Link lọc theo danh mục con (Trỏ về home?search=category) --%>
                                                                <a href="home?search=category&categoryId=${childCat.id}">${childCat.name}</a>
                                                            </li>
                                                        </c:if>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </c:if>
                                    </c:forEach>

                                    <%-- Cột 3 (Banner tĩnh) --%>
                                    <div class="col-lg-4 p-0">
                                        <div class="menu-banner">
                                            <figure>
                                                <img src="assets/images/menu-banner.jpg" width="192" height="313" alt="Menu banner">
                                            </figure>
                                            <div class="banner-content">
                                                <h4>
                                                    <span class="">UP TO</span><br />
                                                    <b class="">50%</b>
                                                    <i>OFF</i>
                                                </h4>
                                                <a href="home" class="btn btn-sm btn-dark">SHOP NOW</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </li>

                        <li class="float-right">
                            <a href="${pageContext.request.contextPath}/view/authen/login.jsp" class="pl-5">Login</a>
                        </li>
                        <li class="float-right">
                            <a href="${pageContext.request.contextPath}/view/authen/register.jsp" class="pl-5">Register</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
</div>