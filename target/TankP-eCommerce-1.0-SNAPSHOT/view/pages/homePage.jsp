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
        <!-- favicon -->
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
    </head>

    <body>
        <jsp:include page="../common/header.jsp"></jsp:include>
            <main class="main">
                <div class="category-banner-container bg-gray">
                    <div
                        class="category-banner banner text-uppercase"
                        style="
                        background: no-repeat 60% / cover
                        url('${pageContext.request.contextPath}/assets/images/banners/banner-top.jpg');
                    "
                    >
                    <div class="container position-relative">
                        <div class="row">
                            <div
                                class="pl-lg-5 pb-5 pb-md-0 col-md-5 col-xl-4 col-lg-4 offset-1"
                                >
                                <h3>
                                    Fashion Deals<br />with <b style="color: #0088cc">TankP</b>
                                </h3>
                                <a href="category.html" class="btn btn-dark">Get Yours!</a>
                            </div>
                            <div class="pl-lg-3 col-md-4 offset-md-0 offset-1 pt-3">
                                <div class="coupon-sale-content">
                                    <h4
                                        class="m-b-1 coupon-sale-text bg-white text-transform-none"
                                        >
                                        Exclusive COUPON
                                    </h4>
                                    <h5 class="mb-2 coupon-sale-text d-block ls-10 p-0">
                                        <i class="ls-0">UP TO</i><b class="text-dark">$100</b> OFF
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <nav aria-label="breadcrumb" class="breadcrumb-nav">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="demo4.html"><i class="icon-home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="demo4.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Men</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Accessories
                        </li>
                    </ol>
                </nav>

                <div class="row">
                    <div class="col-lg-9 main-content">
                        <nav
                            class="toolbox sticky-header"
                            data-sticky-options="{'mobile': true}"
                            >
                            <div class="toolbox-left">
                                <a href="#" class="sidebar-toggle"
                                   ><svg
                                        data-name="Layer 3"
                                        id="Layer_3"
                                        viewBox="0 0 32 32"
                                        xmlns="http://www.w3.org/2000/svg"
                                        >
                                    <line x1="15" x2="26" y1="9" y2="9" class="cls-1"></line>
                                    <line x1="6" x2="9" y1="9" y2="9" class="cls-1"></line>
                                    <line
                                        x1="23"
                                        x2="26"
                                        y1="16"
                                        y2="16"
                                        class="cls-1"
                                        ></line>
                                    <line x1="6" x2="17" y1="16" y2="16" class="cls-1"></line>
                                    <line
                                        x1="17"
                                        x2="26"
                                        y1="23"
                                        y2="23"
                                        class="cls-1"
                                        ></line>
                                    <line x1="6" x2="11" y1="23" y2="23" class="cls-1"></line>
                                    <path
                                        d="M14.5,8.92A2.6,2.6,0,0,1,12,11.5,2.6,2.6,0,0,1,9.5,8.92a2.5,2.5,0,0,1,5,0Z"
                                        class="cls-2"
                                        ></path>
                                    <path
                                        d="M22.5,15.92a2.5,2.5,0,1,1-5,0,2.5,2.5,0,0,1,5,0Z"
                                        class="cls-2"
                                        ></path>
                                    <path
                                        d="M21,16a1,1,0,1,1-2,0,1,1,0,0,1,2,0Z"
                                        class="cls-3"
                                        ></path>
                                    <path
                                        d="M16.5,22.92A2.6,2.6,0,0,1,14,25.5a2.6,2.6,0,0,1-2.5-2.58,2.5,2.5,0,0,1,5,0Z"
                                        class="cls-2"
                                        ></path>
                                    </svg>
                                    <span>Filter</span>
                                </a>

                                <div class="toolbox-item toolbox-sort">
                                    <label>Sort By:</label>

                                    <div class="select-custom">
                                        <select name="orderby" class="form-control">
                                            <option value="menu_order" selected="selected">
                                                Default sorting
                                            </option>
                                            <option value="popularity">Sort by popularity</option>
                                            <option value="rating">Sort by average rating</option>
                                            <option value="date">Sort by newness</option>
                                            <option value="price">
                                                Sort by price: low to high
                                            </option>
                                            <option value="price-desc">
                                                Sort by price: high to low
                                            </option>
                                        </select>
                                    </div>
                                    <!-- End .select-custom -->
                                </div>
                                <!-- End .toolbox-item -->
                            </div>
                            <!-- End .toolbox-left -->

                            <div class="toolbox-right">
                                <div class="toolbox-item toolbox-show">
                                    <label>Show:</label>

                                    <div class="select-custom">
                                        <select name="count" class="form-control">
                                            <option value="10">10</option>
                                            <option value="20">20</option>
                                            <option value="50">50</option>
                                        </select>
                                    </div>
                                    <!-- End .select-custom -->
                                </div>
                        </nav>
                        <!--Sản phẩm chính-->
                        <div class="row">
                            <c:forEach items="${listProduct}" var="p">
                                <div class="col-6 col-sm-4 col-md-3">
                                    <div class="product-default">
                                        <figure>
                                            <a href="productDetail?id=${p.id}">
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-1.jpg"
                                                    width="280" height="280" alt="product"/>
                                                <img
                                                    src="${pageContext.request.contextPath}/assets/images/products/product-1-2.jpg"
                                                    width="280" height="280" alt="product"/>
                                            </a>
                                        </figure>

                                        <div class="product-details">
                                            <div class="category-wrap">
                                                <div class="category-list">
                                                    <%-- Khởi tạo biến categoryName để tìm kiếm --%>
                                                    <c:set var="categoryName" value="N/A"/>

                                                    <%-- 1. Tìm kiếm trong danh sách danh mục Cấp Cha --%>
                                                    <c:forEach var="cat" items="${rootCategories}">
                                                        <c:if test="${cat.id == p.categoryId}">
                                                            <c:set var="categoryName" value="${cat.name}"/>
                                                        </c:if>
                                                    </c:forEach>

                                                    <%-- 2. Tìm kiếm trong danh sách danh mục Cấp Con --%>
                                                    <c:forEach var="cat" items="${childCategories}">
                                                        <c:if test="${cat.id == p.categoryId}">
                                                            <c:set var="categoryName" value="${cat.name}"/>
                                                        </c:if>
                                                    </c:forEach>

                                                    <%-- Hiển thị tên và tạo link lọc theo danh mục --%>
                                                    <a href="home?search=category&categoryId=${p.categoryId}" class="product-category">
                                                        ${categoryName}
                                                    </a>
                                                </div>
                                            </div>
                                            <h3 class="product-title">
                                                <a href="product.html">${p.name}</a>
                                            </h3>

                                            <div class="ratings-container">
                                                <div class="product-ratings">
                                                    <span class="ratings" style="width: 100%"></span>
                                                    <span class="tooltiptext tooltip-top"></span>
                                                </div>
                                            </div>

                                            <div class="price-box">
                                                <span class="old-price">${p.old_price}</span>
                                                <span class="product-price">${p.new_price}</span>
                                            </div>

                                            <div class="product-action">
                                                <a href="wishlist.html" class="btn-icon-wish" title="wishlist"><i class="icon-heart"></i></a>
                                                <a href="product.html" class="btn-icon btn-add-cart"><i class="fa fa-arrow-right"></i><span>SELECT OPTIONS</span></a>
                                                <a href="#" class="btn-quickview" title="Quick View"><i class="fas fa-external-link-alt"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- Hết sản phẩm-->

                        <nav class="toolbox toolbox-pagination">
                            <div class="toolbox-item toolbox-show">
                                <label>Show:</label>

                                <div class="select-custom">
                                    <select name="count" class="form-control">
                                        <option value="12">12</option>
                                        <option value="24">24</option>
                                        <option value="36">36</option>
                                    </select>
                                </div>
                                <!-- End .select-custom -->
                            </div>
                            <!-- End .toolbox-item -->

                            <ul class="pagination toolbox-item">
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
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><span class="page-link">...</span></li>
                                <li class="page-item">
                                    <a class="page-link page-link-btn" href="#"
                                       ><i class="icon-angle-right"></i
                                        ></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- End .col-lg-9 -->

                    <!--Category cột trái-->
                    <div class="sidebar-overlay"></div>
                    <aside class="sidebar-shop col-lg-3 order-lg-first mobile-sidebar">
                        <div class="sidebar-wrapper">
                            <div class="widget">
                                <h3 class="widget-title">
                                    <a
                                        data-toggle="collapse"
                                        href="#widget-body-2"
                                        role="button"
                                        aria-expanded="true"
                                        aria-controls="widget-body-2"
                                        >Categories</a>
                                </h3>

                                <div class="collapse show" id="widget-body-2">
                                    <div class="widget-body">
                                        <ul class="cat-list">

                                            <c:forEach var="rootCat" items="${rootCategories}">

                                                <li>
                                                    <a href="#widget-category-${rootCat.id}" 
                                                       data-toggle="collapse" 
                                                       role="button" 
                                                       aria-expanded="true" 
                                                       aria-controls="widget-category-${rootCat.id}">
                                                        ${rootCat.name}
                                                        <span class="toggle"></span>
                                                    </a>

                                                    <%-- CẤP CON: Dùng ID động khớp với Cấp Cha --%>
                                                    <div class="collapse show" id="widget-category-${rootCat.id}">
                                                        <ul class="cat-sublist">
                                                            <c:forEach var="childCat" items="${childCategories}">
                                                                <%-- KIỂM TRA MỐI QUAN HỆ --%>
                                                                <c:if test="${childCat.parentID == rootCat.id}">
                                                                    <li>
                                                                        <a href="home?search=category&categoryId=${childCat.id}">
                                                                            ${childCat.name}
                                                                        </a>
                                                                    </li>
                                                                </c:if>
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="widget">
                                <h3 class="widget-title">
                                    <a
                                        data-toggle="collapse"
                                        href="#widget-body-3"
                                        role="button"
                                        aria-expanded="true"
                                        aria-controls="widget-body-3"
                                        >Price</a
                                    >
                                </h3>

                                <div class="collapse show" id="widget-body-3">
                                    <div class="widget-body pb-0">
                                        <form action="#">
                                            <div class="price-slider-wrapper">
                                                <div id="price-slider"></div>
                                                <!-- End #price-slider -->
                                            </div>
                                            <!-- End .price-slider-wrapper -->

                                            <div
                                                class="filter-price-action d-flex align-items-center justify-content-between flex-wrap"
                                                >
                                                <div class="filter-price-text">
                                                    Price:
                                                    <span id="filter-price-range"></span>
                                                </div>
                                                <!-- End .filter-price-text -->

                                                <button type="submit" class="btn btn-primary">
                                                    Filter
                                                </button>
                                            </div>
                                            <!-- End .filter-price-action -->
                                        </form>
                                    </div>
                                    <!-- End .widget-body -->
                                </div>
                                <!-- End .collapse -->
                            </div>
                            <!-- End .widget -->

                            <div class="widget widget-color">
                                <h3 class="widget-title">
                                    <a
                                        data-toggle="collapse"
                                        href="#widget-body-4"
                                        role="button"
                                        aria-expanded="true"
                                        aria-controls="widget-body-4"
                                        >Color</a
                                    >
                                </h3>

                                <div class="collapse show" id="widget-body-4">
                                    <div class="widget-body pb-0">
                                        <ul class="config-swatch-list">
                                            <li class="active">
                                                <a href="#" style="background-color: #000"></a>
                                            </li>
                                            <li>
                                                <a href="#" style="background-color: #0188cc"></a>
                                            </li>
                                            <li>
                                                <a href="#" style="background-color: #81d742"></a>
                                            </li>
                                            <li>
                                                <a href="#" style="background-color: #6085a5"></a>
                                            </li>
                                            <li>
                                                <a href="#" style="background-color: #ab6e6e"></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End .widget-body -->
                                </div>
                                <!-- End .collapse -->
                            </div>
                            <!-- End .widget -->

                            <div class="widget widget-size">
                                <h3 class="widget-title">
                                    <a
                                        data-toggle="collapse"
                                        href="#widget-body-5"
                                        role="button"
                                        aria-expanded="true"
                                        aria-controls="widget-body-5"
                                        >Sizes</a
                                    >
                                </h3>

                                <div class="collapse show" id="widget-body-5">
                                    <div class="widget-body pb-0">
                                        <ul class="config-size-list">
                                            <li class="active"><a href="#">XL</a></li>
                                            <li><a href="#">L</a></li>
                                            <li><a href="#">M</a></li>
                                            <li><a href="#">S</a></li>
                                        </ul>
                                    </div>
                                    <!-- End .widget-body -->
                                </div>
                                <!-- End .collapse -->
                            </div>
                            <!-- End .widget -->

                            <div class="widget widget-featured">
                                <h3 class="widget-title">Featured</h3>

                                <div class="widget-body">
                                    <div class="owl-carousel widget-featured-products">
                                        <div class="featured-col">
                                            <div
                                                class="product-default left-details product-widget"
                                                >
                                                <figure>
                                                    <a href="product.html">
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-4.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-4-2.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h3 class="product-title">
                                                        <a href="product.html"
                                                           >Blue Backpack for the Young - S</a
                                                        >
                                                    </h3>
                                                    <div class="ratings-container">
                                                        <div class="product-ratings">
                                                            <span
                                                                class="ratings"
                                                                style="width: 100%"
                                                                ></span>
                                                            <!-- End .ratings -->
                                                            <span class="tooltiptext tooltip-top"></span>
                                                        </div>
                                                        <!-- End .product-ratings -->
                                                    </div>
                                                    <!-- End .product-container -->
                                                    <div class="price-box">
                                                        <span class="product-price">$49.00</span>
                                                    </div>
                                                    <!-- End .price-box -->
                                                </div>
                                                <!-- End .product-details -->
                                            </div>
                                            <div
                                                class="product-default left-details product-widget"
                                                >
                                                <figure>
                                                    <a href="product.html">
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-5.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-5-2.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h3 class="product-title">
                                                        <a href="product.html"
                                                           >Casual Spring Blue Shoes</a
                                                        >
                                                    </h3>
                                                    <div class="ratings-container">
                                                        <div class="product-ratings">
                                                            <span
                                                                class="ratings"
                                                                style="width: 100%"
                                                                ></span>
                                                            <!-- End .ratings -->
                                                            <span class="tooltiptext tooltip-top"></span>
                                                        </div>
                                                        <!-- End .product-ratings -->
                                                    </div>
                                                    <!-- End .product-container -->
                                                    <div class="price-box">
                                                        <span class="product-price">$49.00</span>
                                                    </div>
                                                    <!-- End .price-box -->
                                                </div>
                                                <!-- End .product-details -->
                                            </div>
                                            <div
                                                class="product-default left-details product-widget"
                                                >
                                                <figure>
                                                    <a href="product.html">
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-6.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-6-2.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h3 class="product-title">
                                                        <a href="product.html">Men Black Gentle Belt</a>
                                                    </h3>
                                                    <div class="ratings-container">
                                                        <div class="product-ratings">
                                                            <span
                                                                class="ratings"
                                                                style="width: 100%"
                                                                ></span>
                                                            <!-- End .ratings -->
                                                            <span class="tooltiptext tooltip-top"></span>
                                                        </div>
                                                        <!-- End .product-ratings -->
                                                    </div>
                                                    <!-- End .product-container -->
                                                    <div class="price-box">
                                                        <span class="product-price">$49.00</span>
                                                    </div>
                                                    <!-- End .price-box -->
                                                </div>
                                                <!-- End .product-details -->
                                            </div>
                                        </div>
                                        <!-- End .featured-col -->

                                        <div class="featured-col">
                                            <div
                                                class="product-default left-details product-widget"
                                                >
                                                <figure>
                                                    <a href="product.html">
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-1.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-1-2.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h3 class="product-title">
                                                        <a href="product.html"
                                                           >Ultimate 3D Bluetooth Speaker</a
                                                        >
                                                    </h3>
                                                    <div class="ratings-container">
                                                        <div class="product-ratings">
                                                            <span
                                                                class="ratings"
                                                                style="width: 100%"
                                                                ></span>
                                                            <!-- End .ratings -->
                                                            <span class="tooltiptext tooltip-top"></span>
                                                        </div>
                                                        <!-- End .product-ratings -->
                                                    </div>
                                                    <!-- End .product-container -->
                                                    <div class="price-box">
                                                        <span class="product-price">$49.00</span>
                                                    </div>
                                                    <!-- End .price-box -->
                                                </div>
                                                <!-- End .product-details -->
                                            </div>
                                            <div
                                                class="product-default left-details product-widget"
                                                >
                                                <figure>
                                                    <a href="product.html">
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-2.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-2-2.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h3 class="product-title">
                                                        <a href="product.html"
                                                           >Brown Women Casual HandBag</a
                                                        >
                                                    </h3>
                                                    <div class="ratings-container">
                                                        <div class="product-ratings">
                                                            <span
                                                                class="ratings"
                                                                style="width: 100%"
                                                                ></span>
                                                            <!-- End .ratings -->
                                                            <span class="tooltiptext tooltip-top"></span>
                                                        </div>
                                                        <!-- End .product-ratings -->
                                                    </div>
                                                    <!-- End .product-container -->
                                                    <div class="price-box">
                                                        <span class="product-price">$49.00</span>
                                                    </div>
                                                    <!-- End .price-box -->
                                                </div>
                                                <!-- End .product-details -->
                                            </div>
                                            <div
                                                class="product-default left-details product-widget"
                                                >
                                                <figure>
                                                    <a href="product.html">
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-3.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                        <img
                                                            src="${pageContext.request.contextPath}/assets/images/products/small/product-3-2.jpg"
                                                            width="75"
                                                            height="75"
                                                            alt="product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h3 class="product-title">
                                                        <a href="product.html"
                                                           >Circled Ultimate 3D Speaker</a
                                                        >
                                                    </h3>
                                                    <div class="ratings-container">
                                                        <div class="product-ratings">
                                                            <span
                                                                class="ratings"
                                                                style="width: 100%"
                                                                ></span>
                                                            <!-- End .ratings -->
                                                            <span class="tooltiptext tooltip-top"></span>
                                                        </div>
                                                        <!-- End .product-ratings -->
                                                    </div>
                                                    <!-- End .product-container -->
                                                    <div class="price-box">
                                                        <span class="product-price">$49.00</span>
                                                    </div>
                                                    <!-- End .price-box -->
                                                </div>
                                                <!-- End .product-details -->
                                            </div>
                                        </div>
                                        <!-- End .featured-col -->
                                    </div>
                                    <!-- End .widget-featured-slider -->
                                </div>
                                <!-- End .widget-body -->
                            </div>
                            <!-- End .widget -->

                            <div class="widget widget-block">
                                <h3 class="widget-title">Custom HTML Block</h3>
                                <h5>This is a custom sub-title.</h5>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    Cras non placerat mi. Etiam non tellus
                                </p>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </main>

        <!-- Footer Start -->
        <jsp:include page="../common/footer.jsp"></jsp:include>
        </div>

        <!--loading-->
    <jsp:include page="../common/loading.jsp"/> 


    <!-- mobile-menu-container -->
    <jsp:include page="../common/mobile-menu.jsp"></jsp:include>

        <div class="sticky-navbar">
            <div class="sticky-info">
                <a href="#"> <i class="icon-home"></i>Home </a>
            </div>
            <div class="sticky-info">
                <a href="#" class="">
                    <i class="icon-bars"></i>Shop
                </a>
            </div>
            <div class="sticky-info">
                <a href="wishlist.html" class="">
                    <i class="icon-wishlist-2"></i>Wishlist
                </a>
            </div>
            <div class="sticky-info">
                <a href="login.html" class=""> <i class="icon-user-2"></i>Account </a>
            </div>
            <div class="sticky-info">
                <a href="cart.html" class="">
                    <i class="icon-shopping-cart position-relative">
                        <span class="cart-count badge-circle">3</span> </i
                    >Cart
                </a>
            </div>
        </div>

        <a id="scroll-top" href="#top" title="Top" role="button"
           ><i class="icon-angle-up"></i
            ></a>

        <!-- Plugins JS File -->
        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>

    <!-- Main JS File -->
    <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
</body>
</html>
