<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="sidebar widget widget-dashboard mb-lg-0 mb-3 col-lg-2 order-0">
    <h2 class="text-uppercase"><i class="fas fa-home"></i> My Account</h2>
    <ul class="nav nav-tabs list flex-column mb-0" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="dashboard-tab" data-toggle="tab" href="#dashboard"
               role="tab" aria-controls="dashboard" aria-selected="true">Customer Dashboard</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" id="address-tab" href="${pageContext.request.contextPath}/view/user/orderHistory.jsp">
                Order History
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" id="shop-address-tab" href="${pageContext.request.contextPath}/view/user/profile.jsp">
                My Profile
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" id="edit-tab" href="${pageContext.request.contextPath}/view/user/address.jsp">
                Address
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/view/pages/homePage.jsp">Logout</a>
        </li>
    </ul>
</div>