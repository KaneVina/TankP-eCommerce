<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="style.css" />
        
        <title>TankP</title>
        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css" />
        <link
            rel="stylesheet"
            type="text/css"
            href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
            />
         <!-- favicon -->
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logo/logoWBN.png">
    </head>
    <style>
    @import url(https://fonts.googleapis.com/css?family=Poppins:100,100italic,200,200italic,300,300italic,regular,italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic);
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
        
    body {
        display: flex;
        flex-direction: column; 
        min-height: 100vh;
    }
        
    main {
        flex-grow: 1;
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
        text-align: center;
    }
        
    .error-content {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 20px;
        position: relative; 
    }

    .error-content h1 {
        font-size: 150px; 
        color: #0088cc; 
        font-weight: 700;
        margin-bottom: -120px; 
        z-index: 10; 
    }
        
    .error-content img {
        width: 500px;
        z-index: 5; 
        -webkit-user-select: none; 
        -ms-user-select: none; 
        user-select: none; 
        pointer-events: none; 
    }
        
    .error-content .error-text {
        font-family: "Poppins", sans-serif;
        position: absolute; 
        left: 50%; 
        transform: translateX(-50%); 
        top: 68%; 
        z-index: 15; 
        color: #333; 
        text-shadow: 1px 1px 3px rgba(255, 255, 255, 0.8); 
        width: 100%;
        max-width: 500px; 
        padding: 0 20px; 
    }
        
    .error-content .error-text h2 {
        font-weight: 600;
        font-size: 30px;
        margin-top: 0; 
        margin-bottom: 0; 
        line-height: 1.2; 
    }
    .error-content .error-text p {
        font-size: 14px; 
        font-weight: 300;
        margin-bottom: 0; 
        line-height: 1.2; 
    }

    .error-content > a.btn-primary { 
        background: #0088cc;
        width: 200px;
        height: 40px;
        margin: 20px auto 30px auto; 
        display: block; 
        line-height: 40px; 
        padding: 0; 
        border-radius: 20px;
        color: #fff;
        border: none;
        font-weight: 600;
        text-decoration: none;
        transition: background-color 0.3s;
        z-index: 20; 
    }
        
    .error-content > a.btn-primary:hover { 
        background: #0077b3; 
    }
    </style>

    <body>
        <jsp:include page="../common/header.jsp" />
        <main>
            <div class="error-content"> 
                
                <h1 class="error-h1">
                    <c:choose>
                        <c:when test="${requestScope.errorCode != null}">${requestScope.errorCode}</c:when>
                        <c:otherwise>ERROR</c:otherwise>
                    </c:choose>
                </h1>
                
                <img src="${pageContext.request.contextPath}/assets/gif/error.gif" alt="error" />
                
                <div class="error-text">
                    <h2>
                        <c:choose>
                            <c:when test="${requestScope.errorCode == 404}">Page Not Found!</c:when>
                            <c:when test="${requestScope.errorCode == 400}">Invalid Request!</c:when>
                            <c:otherwise>An Error Has Occurred!</c:otherwise>
                        </c:choose>
                    </h2>
                    
                    <p>
                        <c:choose>
                            <c:when test="${requestScope.errorMessage != null}">${requestScope.errorMessage}</c:when>
                            <c:otherwise>We’re sorry, the content you’re looking for is currently unavailable..</c:otherwise>
                        </c:choose>
                    </p>
                </div>
                
                <a href="${pageContext.request.contextPath}/home" class="btn btn-primary">
                   Go to Home
                </a>

            </div>
        </main>
        <jsp:include page="../common/footer.jsp" />
        <jsp:include page="../common/loading.jsp" />
        <jsp:include page="../common/mobile-menu.jsp" />
        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>
</html>