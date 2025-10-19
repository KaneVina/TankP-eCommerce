<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <title>TankP eCommerce</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="TankP eCommerce" />
        <meta name="author" content="SW-THEMES" />

        <link rel="icon" type="image/x-icon" 
              href="${pageContext.request.contextPath}/assets/images/icons/favicon.png"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"/>
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
        <style>.config-color-list {
                display: flex;
                gap: 8px;
                list-style: none;
                padding: 0;
            }
            .filter-color {
                width: 30px;
                height: 30px;
                border-radius: 50%;
                display: inline-block;
                border: 1px solid #ddd;
            }
        </style>
    </head>

    <body>
        <jsp:include page="../common/header.jsp"></jsp:include>
            <main class="main">

                <div class="page-wrapper">
                    <main class="main">
                        <div class="container">
                            <nav aria-label="breadcrumb" class="breadcrumb-nav">

                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="${pageContext.request.contextPath}/home"><i class="icon-home"></i></a>

                                </li>
                                <li class="breadcrumb-item"><a href="#">Shop</a></li>

                                <c:if test="${not empty category}">
                                    <li class="breadcrumb-item"><a href="#">${category.name}</a></li>
                                    </c:if>

                                <li class="breadcrumb-item">

                                    <a href="#">${product.name}</a>
                                </li>
                            </ol>

                        </nav>

                        <div class="product-single-container product-single-default">
                            <div class="cart-message d-none">
                                <strong class="single-cart-notice">“${product.name}”</strong>

                                <span>has been added to your cart.</span>
                            </div>

                            <div class="row">

                                <div class="col-lg-5 col-md-6 product-single-gallery">
                                    <div class="product-slider-container">
                                        <div class="label-group"><div class="product-label label-hot">HOT</div></div>

                                        <div class="product-single-carousel owl-carousel owl-theme show-nav-hover">
                                            <c:choose>
                                                <c:when test="${!empty product.galleries}">
                                                    <c:forEach var="gallery" items="${product.galleries}">
                                                        <div class="product-item">
                                                            <%-- Kiểm tra link ngoài hay link local --%>
                                                            <c:set var="imageUrl" value="${gallery.imageUrl}" />
                                                            <c:choose>
                                                                <c:when test="${fn:startsWith(imageUrl, 'http')}">
                                                                    <img class="product-single-image" src="${imageUrl}" data-zoom-image="${imageUrl}" width="468" height="468" alt="${product.name}"/>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <img class="product-single-image" 
                                                                         src="${pageContext.request.contextPath}/assets/images/products/${imageUrl}" 
                                                                         data-zoom-image="${pageContext.request.contextPath}/assets/images/products/${imageUrl}" 
                                                                         width="468" height="468" alt="${product.name}"/>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </div>
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <%-- Ảnh mặc định nếu không có gallery --%>
                                                    <div class="product-item">
                                                        <img class="product-single-image" src="${pageContext.request.contextPath}/assets/images/no-image.png" width="468" height="468" alt="Ảnh mặc định"/>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <span class="prod-full-screen">

                                            <i class="icon-plus"></i>
                                        </span>
                                    </div>

                                    <div class="prod-thumbnail owl-dots">
                                        <c:choose>
                                            <c:when test="${!empty product.galleries}">
                                                <c:forEach var="gallery" items="${product.galleries}">
                                                    <div class="owl-dot">
                                                        <%-- Kiểm tra link ngoài hay link local --%>
                                                        <c:set var="imageUrl" value="${gallery.imageUrl}" />
                                                        <c:choose>
                                                            <c:when test="${fn:startsWith(imageUrl, 'http')}">
                                                                <img src="${imageUrl}" width="110" height="110" alt="Thumbnail"/>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <img src="${pageContext.request.contextPath}/assets/images/products/${imageUrl}" width="110" height="110" alt="Thumbnail"/>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </c:forEach>
                                            </c:when>
                                            <c:otherwise>
                                                <%-- Thumbnail mặc định --%>
                                                <div class="owl-dot">
                                                    <img src="${pageContext.request.contextPath}/assets/images/no-image.png" width="110" height="110" alt="Thumbnail"/>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-6 product-single-details">
                                    <h1 class="product-title">${product.name}

                                    </h1>
                                    <div class="product-nav">
                                        <div class="product-prev">
                                            <a href="#">
                                                <span class="product-link"></span>
                                                <span class="product-popup">
                                                    <span class="box-content">
                                                        <img
                                                            alt="product"
                                                            width="150"
                                                            height="150"
                                                            src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg"
                                                            style="padding-top: 0px"

                                                            />

                                                        <span>Circled Ultimate 3D Speaker</span>

                                                    </span>
                                                </span>

                                            </a>
                                        </div>

                                        <div class="product-next">

                                            <a href="#">
                                                <span class="product-link"></span>


                                                <span class="product-popup">
                                                    <span class="box-content">

                                                        <img

                                                            alt="product"
                                                            width="150"

                                                            height="150"
                                                            src="${pageContext.request.contextPath}/assets/images/products/product-4.jpg"

                                                            style="padding-top: 0px"

                                                            />

                                                        <span>Blue Backpack for the Young</span>

                                                    </span>
                                                </span>

                                            </a>
                                        </div>
                                    </div>


                                    <div class="ratings-container">
                                        <div class="product-ratings">

                                            <span class="ratings" style="width: 0%"></span>
                                            <span class="tooltiptext tooltip-top"></span>

                                        </div>
                                        <a href="#" class="rating-link">( 0 Reviews )</a>
                                    </div>

                                    <hr class="short-divider" />

                                    <div class="price-box">
                                        <span class="old-price">$${product.oldPrice}</span>
                                        <span class="new-price">$${product.newPrice}</span>
                                    </div>

                                    <div class="product-desc">
                                        <p>${product.description}</p>
                                    </div>

                                    <ul class="single-info-list">
                                        <li>QUANTITY: <strong>${product.getTotalStockQuantity()}</strong></li>
                                        <li>
                                            CATEGORY:
                                            <c:if test="${not empty category}">
                                                <strong><a href="#" class="product-category">${category.name}</a></strong>
                                                </c:if>
                                        </li>
                                    </ul>

                                    <div class="product-filters-container">
                                        <div class="product-single-filter">
                                            <label>Color:</label>
                                            <ul class="config-size-list config-swatch-list"> 
                                                <c:set var="displayedColors" value="," />
                                                <c:forEach var="v" items="${product.variants}">
                                                    <c:set var="colorIdToFind" value="${','}${v.color.id}${','}" />

                                                    <%-- Dòng 247: BẮT ĐẦU khối điều kiện IF --%>
                                                    <c:if test="${not empty v.color and not fn:contains(displayedColors, colorIdToFind)}">

                                                        <%-- Nội dung bạn muốn hiển thị nếu điều kiện đúng --%>
                                                        <li>
                                                            <a href="javascript:;"
                                                               title="${v.color.color}"
                                                               style="background-color: ${v.color.hexCode};"> 
                                                            </a>
                                                        </li>

                                                        <%-- Cập nhật biến để tránh trùng lặp màu tiếp theo --%>
                                                        <c:set var="displayedColors" value="${displayedColors}${v.color.id}," />

                                                    </c:if> <%-- KẾT THÚC khối điều kiện IF --%>

                                                </c:forEach>
                                            </ul>
                                        </div>


                                        <div class="product-single-filter">
                                            <label>Size:</label>
                                            <ul class="config-size-list">
                                                <c:set var="displayedSizes" value="" />
                                                <c:forEach var="v" items="${product.variants}">
                                                    <c:if test="${not empty v.size and not fn:contains(displayedSizes, v.size.id)}">
                                                        <li>
                                                            <a href="javascript:;" class="d-flex align-items-center justify-content-center">${v.size.size}</a> 
                                                        </li>
                                                        <c:set var="displayedSizes" value="${displayedSizes} ${v.size.id}" />
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div>

                                        <div class="product-single-filter">

                                            <label></label>
                                            <a class="font1 text-uppercase clear-btn" href="#">Clear</a>

                                        </div>
                                    </div>

                                    <div class="product-action">

                                        <div class="product-single-qty">
                                            <input class="horizontal-quantity form-control" type="text"/>

                                        </div>
                                        <a href="javascript:;"
                                           class="btn btn-dark add-cart mr-2" title="Add to Cart">Add to Cart</a>
                                        <a href="cart.html" class="btn btn-gray view-cart d-none">View cart</a>
                                    </div>

                                    <hr class="divider mb-0 mt-0"/>

                                    <div class="product-single-share mb-3">

                                        <label class="sr-only">Share:</label>

                                        <div class="social-icons mr-2">
                                            <a href="#" class="social-icon social-facebook icon-facebook" target="_blank" 
                                               title="Facebook"></a>
                                            <a href="#" class="social-icon social-twitter icon-twitter" target="_blank" title="Twitter"></a>
                                            <a href="#" class="social-icon social-linkedin fab fa-linkedin-in" 
                                               target="_blank" title="Linkedin"></a>
                                            <a href="#" class="social-icon social-gplus fab fa-google-plus-g" target="_blank" title="Google +"></a>
                                            <a href="#" class="social-icon 
                                               social-mail icon-mail-alt" target="_blank" title="Mail"></a>
                                        </div>
                                        <a href="wishlist.html" class="btn-icon-wish add-wishlist" title="Add to Wishlist" ><i class="icon-wishlist-2"></i><span>Add to Wishlist</span></a>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="product-single-tabs">
                            <ul class="nav nav-tabs" role="tablist">

                                <li class="nav-item">
                                    <a class="nav-link active" id="product-tab-desc" data-toggle="tab" href="#product-desc-content" role="tab" aria-controls="product-desc-content" aria-selected="true"
                                       >Return, Refund and Exchange Policy</a>

                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="product-tab-tags" data-toggle="tab" href="#product-tags-content" role="tab" aria-controls="product-tags-content" aria-selected="false"

                                       >Additional Information</a>
                                </li>
                            </ul>


                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="product-desc-content" role="tabpanel" aria-labelledby="product-tab-desc">

                                    <div class="product-desc-content">
                                        <p>TankP proudly commits to our valued customers:</p>
                                        <ul>

                                            <li><b>Authenticity & Quality: </b>Every product is 100% brand new, authentic, and comes with original tags and packaging.</li>
                                            <li><b>Careful Inspection</b>Each item is thoroughly checked and handled 
                                                with care before delivery to ensure it reaches you in perfect condition.</li>
                                            <li><b>Transparent Information</b>All product images and descriptions provided by TankP are genuine and accurately represent the actual items.</li>

                                        </ul>
                                        <p><b>CUSTOMER RIGHTS</b></p>
                                        <table width="100%">

                                            <tr>
                                                <td width="50%">

                                                    <p>Eligible cases for returns and exchanges:</p>
                                                    <ul>

                                                        <li> Requests made within <b>07 days</b> from the date of receipt.</li>

                                                        <li> Products must remain <b>unused, in original condition</b>, with intact tags and packaging.</li>
                                                        <li> Items <b>damaged</b> due to shipping or manufacturer defects.</li>

                                                        <li> Products not matching the<b> ordered style or specifications</b>.</li>

                                                        <li> Orders with <b>missing items</b>, incorrect quantities, or incomplete sets.</li>
                                                    </ul>

                                                </td>

                                                <td width="50%">

                                                    <p>Cases not eligible for returns and exchanges:</p>
                                                    <ul>

                                                        <li> Requests made <b>after 07 days</b> from the date of receipt.</li>

                                                        <li> Returned items not matching the original product or <b>not purchased from TankP</b>.</li>
                                                        <li> Customer errors such as <b>ordering the wrong product, type</b>, or personal preference (e.g., no longer wanted, doesn’t fit, doesn’t suit).</li>

                                                    </ul>
                                                </td>

                                            </tr>
                                        </table>

                                    </div>
                                </div>
                                <div class="tab-pane fade" id="product-tags-content" role="tabpanel" aria-labelledby="product-tab-tags">

                                    <table class="table table-striped mt-2 size-chart-table">
                                        <thead>

                                            <tr>
                                                <th colspan="3" style=" text-align: center;
                                                    font-size: 1.2em; background-color: #f0f0f0;">
                                                    TankP Size Conversion Chart

                                                </th>
                                            </tr>
                                            <tr>

                                                <th>Size</th>
                                                <th>Men's (Chest/Waist)</th>

                                                <th>Women's (Bust/Waist)</th>
                                            </tr>

                                        </thead>
                                        <tbody>

                                            <tr>
                                                <th>Extra Large (XL)</th>

                                                <td>Chest: 108-115 cm / Waist: 92-100 cm</td>
                                                <td>Bust: 98-105 cm / Waist: 80-88 cm</td>

                                            </tr>
                                            <tr>

                                                <th>Large (L)</th>
                                                <td>Chest: 100-107 cm / Waist: 84-91 cm</td>

                                                <td>Bust: 90-97 cm / Waist: 72-79 cm</td>
                                            </tr>
                                            <tr>

                                                <th>Medium (M)</th>
                                                <td>Chest: 92-99 cm / 
                                                    Waist: 76-83 cm</td>
                                                <td>Bust: 82-89 cm / Waist: 64-71 cm</td>

                                            </tr>
                                            <tr>
                                                <th>Small (S)</th>

                                                <td>Chest: 84-91 cm / Waist: 68-75 cm</td>
                                                <td>Bust: 74-81 cm / Waist: 
                                                    56-63 cm</td>
                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>

                        </div>

                        <div class="products-section pt-0">
                            <h2 class="section-title">Related Products</h2>

                            <div class="products-slider owl-carousel owl-theme dots-top dots-small">

                                <div class="product-default">
                                    <figure>

                                        <a href="product.html">
                                            <img
                                                src="${pageContext.request.contextPath}/assets/images/products/product-1.jpg"

                                                width="280"
                                                height="280"

                                                alt="Ultimate 3D Bluetooth Speaker"
                                                />

                                            <img
                                                src="${pageContext.request.contextPath}/assets/images/products/product-1-2.jpg"

                                                width="280"
                                                height="280"

                                                alt="Ultimate 3D Bluetooth Speaker"
                                                />

                                        </a>
                                        <div class="label-group">

                                            <div class="product-label label-hot">HOT</div>
                                            <div class="product-label label-sale">-20%</div>
                                        </div>

                                    </figure>
                                    <div class="product-details">

                                        <div class="category-list">
                                            <a href="category.html" class="product-category"
                                               >Category</a>

                                        </div>
                                        <h3 class="product-title">

                                            <a href="product.html">Ultimate 3D Bluetooth Speaker</a>
                                        </h3>

                                        <div class="ratings-container">
                                            <div class="product-ratings">

                                                <span class="ratings" style="width: 80%"></span>
                                                <span class="tooltiptext tooltip-top"></span>
                                            </div>

                                        </div>
                                        <div class="price-box">

                                            <del class="old-price">$59.00</del>
                                            <span class="product-price">$49.00</span>

                                        </div>
                                        <div class="product-action">
                                            <a

                                                href="wishlist.html"
                                                title="Wishlist"

                                                class="btn-icon-wish"
                                                ><i class="icon-heart"></i

                                                ></a>
                                            <a href="product.html" class="btn-icon btn-add-cart"

                                               ><i class="fa fa-arrow-right"></i
                                                ><span>SELECT OPTIONS</span></a>

                                            <a
                                                href="ajax/product-quick-view.html"

                                                class="btn-quickview"
                                                title="Quick View"

                                                ><i class="fas fa-external-link-alt"></i></a>
                                        </div>
                                    </div>

                                </div>

                                <div class="product-default">
                                    <figure>

                                        <a href="product.html">
                                            <img

                                                src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg"
                                                width="280"

                                                height="280"
                                                alt="Circled Ultimate 3D Speaker"

                                                />
                                            <img

                                                src="${pageContext.request.contextPath}/assets/images/products/product-3-2.jpg"
                                                width="280"

                                                height="280"
                                                alt="Circled Ultimate 3D Speaker"

                                                />
                                        </a>
                                        <div class="label-group">

                                            <div class="product-label label-hot">HOT</div>
                                            <div class="product-label label-sale">-20%</div>

                                        </div>
                                    </figure>
                                    <div class="product-details">

                                        <div class="category-list">
                                            <a href="category.html" class="product-category"

                                               >Category</a>
                                        </div>

                                        <h3 class="product-title">
                                            <a href="product.html">Circled Ultimate 3D Speaker</a>

                                        </h3>
                                        <div class="ratings-container">
                                            <div class="product-ratings">

                                                <span class="ratings" style="width: 80%"></span>
                                                <span class="tooltiptext tooltip-top"></span>

                                            </div>
                                        </div>

                                        <div class="price-box">
                                            <del class="old-price">$59.00</del>

                                            <span class="product-price">$49.00</span>
                                        </div>
                                        <div class="product-action">

                                            <a
                                                href="wishlist.html"

                                                title="Wishlist"
                                                class="btn-icon-wish"

                                                ><i class="icon-heart"></i
                                                ></a>

                                            <a href="product.html" class="btn-icon btn-add-cart"
                                               ><i class="fa fa-arrow-right"></i

                                                ><span>SELECT OPTIONS</span></a>
                                            <a

                                                href="ajax/product-quick-view.html"
                                                class="btn-quickview"

                                                title="Quick View"
                                                ><i class="fas fa-external-link-alt"></i></a>
                                        </div>

                                    </div>
                                </div>

                                <div class="product-default">

                                    <figure>
                                        <a href="product.html">

                                            <img
                                                src="${pageContext.request.contextPath}/assets/images/products/product-7.jpg"

                                                width="280"
                                                height="280"

                                                alt="Brown-Black Men Casual Glasses"
                                                />

                                            <img
                                                src="${pageContext.request.contextPath}/assets/images/products/product-7-2.jpg"
                                                width="280"

                                                height="280"
                                                alt="Brown-Black Men Casual Glasses"

                                                />
                                        </a>

                                        <div class="label-group">
                                            <div class="product-label label-hot">HOT</div>

                                            <div class="product-label label-sale">-20%</div>
                                        </div>
                                    </figure>

                                    <div class="product-details">
                                        <div class="category-list">

                                            <a href="category.html" class="product-category"
                                               >Category</a>

                                        </div>
                                        <h3 class="product-title">
                                            <a href="product.html">Brown-Black Men Casual Glasses</a>

                                        </h3>
                                        <div class="ratings-container">

                                            <div class="product-ratings">
                                                <span class="ratings" style="width: 80%"></span>

                                                <span class="tooltiptext tooltip-top"></span>
                                            </div>

                                        </div>
                                        <div class="price-box">
                                            <del class="old-price">$59.00</del>

                                            <span class="product-price">$49.00</span>
                                        </div>

                                        <div class="product-action">
                                            <a

                                                href="wishlist.html"
                                                title="Wishlist"

                                                class="btn-icon-wish"
                                                ><i class="icon-heart"></i></a>
                                            <a href="product.html" class="btn-icon 
                                               btn-add-cart"
                                               ><i class="fa fa-arrow-right"></i><span>SELECT OPTIONS</span></a>
                                            <a

                                                href="ajax/product-quick-view.html"
                                                class="btn-quickview"

                                                title="Quick View"
                                                ><i class="fas fa-external-link-alt"></i></a>

                                        </div>
                                    </div>
                                </div>


                                <div class="product-default">
                                    <figure>

                                        <a href="product.html">
                                            <img
                                                src="${pageContext.request.contextPath}/assets/images/products/product-6.jpg"

                                                width="280"
                                                height="280"

                                                alt="Men Black Gentle Belt"
                                                />

                                            <img
                                                src="${pageContext.request.contextPath}/assets/images/products/product-6-2.jpg"

                                                width="280"
                                                height="280"

                                                alt="Men Black Gentle Belt"
                                                />

                                        </a>
                                        <div class="label-group">

                                            <div class="product-label label-hot">HOT</div>
                                            <div class="product-label label-sale">-20%</div>
                                        </div>

                                    </figure>
                                    <div class="product-details">

                                        <div class="category-list">
                                            <a href="category.html" class="product-category"

                                               >Category</a>
                                        </div>
                                        <h3 class="product-title">

                                            <a href="product.html">Men Black Gentle Belt</a>
                                        </h3>

                                        <div class="ratings-container">
                                            <div class="product-ratings">

                                                <span class="ratings" style="width: 80%"></span>
                                                <span class="tooltiptext tooltip-top"></span>

                                            </div>
                                        </div>
                                        <div class="price-box">

                                            <del class="old-price">$59.00</del>
                                            <span class="product-price">$49.00</span>

                                        </div>
                                        <div class="product-action">
                                            <a

                                                href="wishlist.html"
                                                title="Wishlist"

                                                class="btn-icon-wish"
                                                ><i class="icon-heart"></i

                                                ></a>
                                            <a href="product.html" class="btn-icon btn-add-cart"

                                               ><i class="fa fa-arrow-right"></i
                                                ><span>SELECT OPTIONS</span></a>

                                            <a
                                                href="ajax/product-quick-view.html"

                                                class="btn-quickview"
                                                title="Quick View"

                                                ><i class="fas fa-external-link-alt"></i></a>
                                        </div>
                                    </div>

                                </div>

                                <div class="product-default">
                                    <figure>

                                        <a href="product.html">
                                            <img

                                                src="${pageContext.request.contextPath}/assets/images/products/product-4.jpg"
                                                width="280"

                                                height="280"
                                                alt="Blue Backpack for the Young - S"

                                                />
                                            <img

                                                src="${pageContext.request.contextPath}/assets/images/products/product-4-2.jpg"
                                                width="280"

                                                height="280"
                                                alt="Blue Backpack for the Young - S"

                                                />
                                        </a>

                                        <div class="label-group">
                                            <div class="product-label label-hot">HOT</div>
                                            <div class="product-label label-sale">-20%</div>

                                        </div>
                                    </figure>

                                    <div class="product-details">
                                        <div class="category-list">
                                            <a href="category.html" class="product-category"

                                               >Category</a>
                                        </div>

                                        <h3 class="product-title">
                                            <a href="product.html">Blue Backpack for the Young - S</a>

                                        </h3>
                                        <div class="ratings-container">
                                            <div class="product-ratings">

                                                <span class="ratings" style="width: 80%"></span>
                                                <span class="tooltiptext tooltip-top"></span>

                                            </div>
                                        </div>

                                        <div class="price-box">
                                            <del class="old-price">$59.00</del>

                                            <span class="product-price">$49.00</span>
                                        </div>
                                        <div class="product-action">

                                            <a
                                                href="wishlist.html"

                                                title="Wishlist"
                                                class="btn-icon-wish"

                                                ><i class="icon-heart"></i></a>
                                            <a href="product.html" class="btn-icon btn-add-cart">

                                                <i class="fa fa-arrow-right"></i>
                                                <span>SELECT OPTIONS</span></a>

                                            <a
                                                href="ajax/product-quick-view.html"

                                                class="btn-quickview"
                                                title="Quick View"

                                                ><i class="fas fa-external-link-alt"></i
                                                ></a>

                                        </div>
                                    </div>
                                </div>

                            </div>
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
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>