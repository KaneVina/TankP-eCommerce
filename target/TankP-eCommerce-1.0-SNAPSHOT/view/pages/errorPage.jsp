<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="style.css" />
        <title>404 Error</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link
            rel="stylesheet"
            type="text/css"
            href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
        />
    </head>
    <style>
        /* CSS CHỈ ĐƯỢC ÁP DỤNG TRONG PHẠM VI NỘI DUNG 404 */
        
        /* Cần giữ lại @import và * */
        @import url(https://fonts.googleapis.com/css?family=Poppins:100,100italic,200,200italic,300,300italic,regular,italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic);
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        /* Đảm bảo body vẫn là flex-column để xếp chồng header/main/footer */
        body {
            display: flex;
            flex-direction: column; 
            min-height: 100vh;
        }
        
        /* Cấu trúc cho nội dung 404 nằm giữa */
        main {
            flex-grow: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            text-align: center; /* Đảm bảo nội dung được căn giữa */
        }
        
        /* Bắt đầu áp dụng CSS cục bộ cho class .error-content */
        .error-content h1 {
            font-size: 90px;
        }
        .error-content img {
            width: 500px;
        }
        .error-content .error-text { /* Đổi tên class .text thành .error-text */
            font-family: "Poppins", sans-serif;
        }
        .error-content .error-text h2 {
            font-weight: 600;
            font-size: 30px;
        }
        .error-content .error-text p {
            font-size: 10px;
            font-weight: 300;
        }

        /* Style cho nút (btn-primary) */
        .error-content .error-text a.btn-primary { 
            background: #0088cc;
            width: 200px;
            height: 40px;
            margin: 20px auto; 
            display: block; 
            line-height: 40px; 
            padding: 0; 
            border-radius: 20px;
            color: #fff;
            border: none;
            font-weight: 600;
            text-decoration: none;
        }

    </style>

    <body>
        
        <jsp:include page="../common/header.jsp" />

        <main>
            <div class="content-error error-content"> 
                <h1 class="error-h1">404</h1>
                <img src="${pageContext.request.contextPath}/assets/gif/error.gif" alt="error" />
                <div class="error-text">
                    <h2>Look like you're lost</h2>
                    <p>the page you are looking for not available</p>

                    <a href="${pageContext.request.contextPath}/home" class="btn btn-primary">
                        Go To Home
                    </a>
                </div>
            </div>
        </main>

        <jsp:include page="../common/footer.jsp" />

        <jsp:include page="../common/loading.jsp" />

        <jsp:include page="../common/mobile-menu.jsp" />

        <div class="sticky-navbar">
            <div class="sticky-info">
                <a href="${pageContext.request.contextPath}/home"> <i class="icon-home"></i>Home </a>
            </div>
            <div class="sticky-info">
                <a href="${pageContext.request.contextPath}/shop" class="">
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
                        <span class="cart-count badge-circle">3</span>
                    </i>Cart
                </a>
            </div>
        </div>

        <a id="scroll-top" href="#top" title="Top" role="button">
            <i class="icon-angle-up"></i>
        </a>

        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>

        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>