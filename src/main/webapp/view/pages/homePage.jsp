<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

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

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
    </head>

    <body>
        <jsp:include page="../common/header.jsp"></jsp:include>

            <main class="main">
                <div class="home-slider slide-animate owl-carousel owl-theme show-nav-hover nav-big mb-2 text-uppercase" data-owl-options="{'loop': false}">
                    <div class="home-slide home-slide1 banner">
                        <img class="slide-bg" src="${pageContext.request.contextPath}/assets/images/demoes/slider/slide-1.jpg" width="1903" height="499" alt="slider image">

                    <div class="container d-flex align-items-center">
                        <div class="banner-layer appear-animate" data-animation-name="fadeInUpShorter">
                            <h4 class="text-transform-none m-b-3">Find the Boundaries.
                                Push Through!</h4>
                            <h2 class="text-transform-none mb-0">Summer Sale</h2>
                            <h3 class="m-b-3">70% Off</h3>
                            <h5 class="d-inline-block mb-0">

                                <span>Starting At</span>
                                <b class="coupon-sale-text text-white bg-secondary align-middle"><sup>$</sup><em

                                        class="align-text-top">199</em><sup>99</sup></b>
                            </h5>
                            <a href="home" class="btn btn-dark btn-lg">Shop Now!</a>
                        </div>

                    </div>
                </div>
                <div class="home-slide home-slide2 banner banner-md-vw">

                    <img class="slide-bg" style="background-color: #ccc;"
                         width="1903" height="499" src="${pageContext.request.contextPath}/assets/images/demoes/slider/slide-2.jpg" alt="slider image">
                    <div class="container d-flex align-items-center">
                        <div class="banner-layer d-flex justify-content-center appear-animate" data-animation-name="fadeInUpShorter">
                            <div class="mx-auto">

                                <h4 class="m-b-1">Extra</h4>
                                <h3 class="m-b-2">20% off</h3>
                                <h3 class="mb-2 heading-border">Accessories</h3>

                                <h2 class="text-transform-none m-b-4">Summer Sale</h2>
                                <a href="category.html" class="btn btn-block btn-dark">Shop All Sale</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="info-boxes-slider owl-carousel owl-theme mb-2" data-owl-options="{'dots': false, 'loop': false, 'responsive': {'576': {'items': 
                     2},'992': { 'items': 3}}}">
                    <div class="info-box info-box-icon-left">
                        <i class="icon-shipping"></i>
                        <div class="info-box-content">

                            <h4>FREE SHIPPING &amp; RETURN</h4>
                            <p class="text-body">Free shipping on all orders over $99.</p>
                        </div>
                    </div>


                    <div class="info-box info-box-icon-left">
                        <i class="icon-money"></i>
                        <div class="info-box-content">
                            <h4>MONEY BACK GUARANTEE</h4>

                            <p class="text-body">100% money back guarantee</p>
                        </div>
                    </div>

                    <div class="info-box info-box-icon-left">

                        <i class="icon-support"></i>

                        <div class="info-box-content">
                            <h4>ONLINE SUPPORT 24/7</h4>
                            <p class="text-body">Lorem ipsum dolor sit amet.</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <nav 
                aria-label="breadcrumb" class="breadcrumb-nav">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="${pageContext.request.contextPath}/home"><i class="icon-home"></i></a>
                    </li>

                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Men</a></li>
                    <li class="breadcrumb-item active" aria-current="page">
                        Accessories
                    </li>

                </ol>
            </nav>

            <div class="row">
                <div class="col-lg-9 main-content">
                    <nav
                        class="toolbox 
                        sticky-header"
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
                            </div>

                        </div>
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
                            </div>

                    </nav>
                    <div class="row">
                        <c:forEach items="${listProduct}" var="p">

                            <div class="col-6 col-sm-4 col-md-3">
                                <div class="product-default">
                                    <figure>
                                        <a href="productDetail?id=${p.id}">
                                            <c:choose>
                                                <%--d--%>
                                                <c:when test="${!empty p.galleries}">
                                                    <%-- Lấy ảnh đầu tiên ra --%>
                                                    <c:set var="image1" value="${p.galleries[0].imageUrl}" />

                                                    <%-- 2. KIỂM TRA XEM ẢNH NÀY LÀ LINK NGOÀI (http) HAY FILE LOCAL --%>
                                                    <c:choose>
                                                        <%-- NẾU LÀ LINK NGOÀI (bắt đầu bằng http) --%>
                                                        <c:when test="${fn:startsWith(image1, 'http')}">
                                                            <img src="${image1}" width="280" height="280" alt="${p.name}"/>
                                                        </c:when>
                                                        <%-- NẾU LÀ FILE LOCAL (không có http) --%>
                                                        <c:otherwise>
                                                            <img src="${pageContext.request.contextPath}/assets/images/products/${image1}"
                                                                 width="280" height="280" alt="${p.name}"/>
                                                        </c:otherwise>
                                                    </c:choose>

                                                    <%-- Code cho ảnh hover (ảnh thứ 2, nếu có) --%>
                                                    <c:if test="${fn:length(p.galleries) > 1}">
                                                        <c:set var="image2" value="${p.galleries[1].imageUrl}" />
                                                        <c:choose>
                                                            <%-- Kiểm tra tương tự cho ảnh thứ 2 --%>
                                                            <c:when test="${fn:startsWith(image2, 'http')}">
                                                                <img class="product-hover" src="${image2}" width="280" height="280" alt="${p.name}"/>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <img class="product-hover" 
                                                                     src="${pageContext.request.contextPath}/assets/images/products/${image2}"
                                                                     width="280" height="280" alt="${p.name}"/>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>

                                                </c:when>

                                                <%-- 3. NẾU KHÔNG CÓ ẢNH TRONG GALLERY, DÙNG ẢNH NHỚ EDIT CÁI ẢNH MẶC ĐỊNHHHHHHHHHH --%>
                                                <c:otherwise>
                                                    <img src="${pageContext.request.contextPath}/assets/images/no-image.png"
                                                         width="280" height="280" alt="${p.name}"/>
                                                </c:otherwise>
                                            </c:choose>
                                        </a>
                                    </figure>

                                    <div class="product-details">

                                        <div class="category-wrap">
                                            <div class="category-list">
                                                <c:set 
                                                    var="categoryName" value="N/A"/>
                                                <c:forEach var="cat" items="${rootCategories}">
                                                    <c:if test="${cat.id == p.category_id}">
                                                        <c:set var="categoryName" value="${cat.name}"/>
                                                    </c:if>

                                                </c:forEach>
                                                <c:forEach var="cat" items="${childCategories}">

                                                    <c:if test="${cat.id == p.category_id}">
                                                        <c:set var="categoryName" value="${cat.name}"/>

                                                    </c:if>
                                                </c:forEach>
                                                <a href="home?search=category&categoryId=${p.category_id}" class="product-category">
                                                    ${categoryName}
                                                </a>
                                            </div>

                                        </div>

                                        <h3 class="product-title">

                                            <a href="productDetail?id=${p.id}">${p.name}</a>
                                        </h3>

                                        <div class="ratings-container">
                                            <div class="product-ratings">

                                                <span class="ratings" style="width: 100%"></span>
                                                <span class="tooltiptext tooltip-top"></span>

                                            </div>
                                        </div>


                                        <div class="price-box">
                                            <span class="old-price">${p.oldPrice}</span>
                                            <span class="product-price">${p.newPrice}</span>

                                        </div>

                                        <div class="product-action">

                                            <a href="wishlist.html" class="btn-icon-wish" title="wishlist"><i class="icon-heart"></i></a>
                                            <a href="product.html" class="btn-icon btn-add-cart"><i class="fa fa-arrow-right"></i><span>SELECT OPTIONS</span></a>

                                            <a href="productDetail?id=${p.id}" class="btn-quickview" title="Quick View"><i class="fas fa-external-link-alt"></i></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
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
                        </div>

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

                                                <!-- CẤP CON: Dùng ID động khớp với Cấp Cha -->

                                                <div class="collapse show" id="widget-category-${rootCat.id}">
                                                    <ul class="cat-sublist">

                                                        <c:forEach var="childCat" items="${childCategories}">
                                                            <!-- KIỂM TRA MỐI QUAN HỆ -->

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

                                        </div>
                                        <div
                                            class="filter-price-action d-flex align-items-center justify-content-between flex-wrap"

                                            >
                                            <div class="filter-price-text">

                                                Price:
                                                <span id="filter-price-range"></span>

                                            </div>
                                            <button type="submit" class="btn btn-primary">
                                                Filter

                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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
                            </div>
                        </div>

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
                            </div>
                        </div>

                        <div class="widget widget-featured">
                            <h3 class="widget-title">Featured</h3>
                            <div class="widget-body">

                                <%-- Kiểm tra xem list có rỗng hay không --%>
                                <c:if test="${not empty featuredProducts}">

                                    <div class="owl-carousel widget-featured-products">

                                        <%-- Bắt đầu vòng lặp, nhóm 3 sản phẩm vào 1 slide (featured-col) --%>
                                        <c:forEach items="${featuredProducts}" var="fp" varStatus="status">

                                            <%-- Mở 1 slide mới cho sản phẩm đầu tiên (0), 3, 6, ... --%>
                                            <c:if test="${status.index % 3 == 0}">
                                                <div class="featured-col">
                                                </c:if>

                                                <%-- === BẮT ĐẦU 1 SẢN PHẨM === --%>
                                                <div class="product-default left-details product-widget">
                                                    <figure>
                                                        <%-- Dùng link động đến trang chi tiết sản phẩm --%>
                                                        <a href="productDetail?id=${fp.id}">

                                                            <%-- Logic hiển thị 2 ảnh (ảnh chính và ảnh hover) --%>
                                                            <c:choose>
                                                                <%-- Có ít nhất 1 ảnh --%>
                                                                <c:when test="${!empty fp.galleries}">
                                                                    <%-- Lấy ảnh 1 --%>
                                                                    <c:set var="image1" value="${fp.galleries[0].imageUrl}" />
                                                                    <img src="${fn:startsWith(image1, 'http') ? image1 : pageContext.request.contextPath.concat('/assets/images/products/').concat(image1)}"
                                                                         width="75" height="75" alt="${fp.name}" />

                                                                    <%-- Kiểm tra xem có ảnh thứ 2 (ảnh hover) không --%>
                                                                    <c:if test="${fn:length(fp.galleries) > 1}">
                                                                        <c:set var="image2" value="${fp.galleries[1].imageUrl}" />
                                                                        <img src="${fn:startsWith(image2, 'http') ? image2 : pageContext.request.contextPath.concat('/assets/images/products/').concat(image2)}"
                                                                             width="75" height="75" alt="${fp.name} (hover)" />
                                                                    </c:if>
                                                                </c:when>
                                                                <%-- Không có ảnh nào --%>
                                                                <c:otherwise>
                                                                    <img src="${pageContext.request.contextPath}/assets/images/no-image.png" 
                                                                         width="75" height="75" alt="No image available" />
                                                                </c:otherwise>
                                                            </c:choose>

                                                        </a>
                                                    </figure>

                                                    <div class="product-details">
                                                        <h3 class="product-title">
                                                            <a href="productDetail?id=${fp.id}">${fp.name}</a>
                                                        </h3>
                                                        <div class="price-box">
                                                            <%-- Hiển thị giá động (giá mới) --%>
                                                            <span class="product-price">$${fp.newPrice}</span>

                                                            <%-- Nếu bạn muốn hiển thị cả giá cũ (nếu có) --%>
                                                            <c:if test="${fp.oldPrice > 0 && fp.oldPrice > fp.newPrice}">
                                                                <span class="old-price">$${fp.oldPrice}</span>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Đóng 1 slide sau 3 sản phẩm (2, 5, 8, ...) HOẶC khi là sản phẩm cuối cùng -->
                                                <c:if test="${status.index % 3 == 2 || status.last}">
                                                </div> </c:if>

                                        </c:forEach>
                                    </div>
                                </c:if> 
                            </div>
                        </div>
                    </div>
                </aside>
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
</body>
</html>