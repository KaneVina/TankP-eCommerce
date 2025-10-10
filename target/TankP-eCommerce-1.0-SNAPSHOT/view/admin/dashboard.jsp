<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>TankP - Bootstrap eCommerce</title>

	<meta name="keywords" content="HTML5 Template" />
	<meta name="description" content="TankP - Bootstrap eCommerce Template">
	<meta name="author" content="SW-THEMES">

	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/icons/favicon.png">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="folder btn/updateDB.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/simple-line-icons/css/simple-line-icons.min.css">
</head>

<body>
		<main class="main">
			<div class="page-header">
				<div class="container d-flex flex-column align-items-center">
					<nav aria-label="breadcrumb" class="breadcrumb-nav">
						<div class="container">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="demo4.html">Home</a></li>
								<li class="breadcrumb-item"><a href="category.html">Shop</a></li>
								<li class="breadcrumb-item active" aria-current="page">
									Admin Area
								</li>
							</ol>
						</div>
					</nav>

					<h1>Dash Board</h1>
				</div>
			</div>

			<div class="container account-container custom-account-container">
				<div class="row">
					<div class="sidebar widget widget-dashboard mb-lg-0 mb-3 col-lg-2 order-0">
						<h2 class="text-uppercase"><i class="fas fa-home"></i> MY DASHBOARD</h2>						
						<ul class="nav nav-tabs list flex-column mb-0" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="dashboard-tab" data-toggle="tab" href="#dashboard"
									role="tab" aria-controls="dashboard" aria-selected="true">Dashboard</a>
							</li>

							<li class="nav-item">
								<a class="nav-link" id="order-tab" href="product-management.html"> 
									Product Management
								</a>
							</li>

							<li class="nav-item">
								<a class="nav-link" id="address-tab" href="order-management.html">
									Order Management
								</a>
							</li>

							<li class="nav-item">
								<a class="nav-link" id="edit-tab" href="account-management.html">
									Account Management
								</a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link" id="shop-address-tab" href="my-profile.html">
									My Profile
								</a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link" href="login.html">Logout</a>
							</li>
						</ul>
					</div>
					
					<div class="col-lg-10 order-lg-last order-1 tab-content">
						
						<div class="tab-pane fade show active" id="dashboard" role="tabpanel">
							<div class="dashboard-content">
								<p>
									Hello <strong style="color: #0088CC;">TankP Staff</strong> (not
									<strong class="text-dark">TankP Staff</strong>?
									<a href="login.html" class="btn btn-link ">Log out</a>)
								</p>

								<p>
									From your account dashboard you can view your
									<a class="btn btn-link link-to-tab" href="#order">recent orders</a>,
									manage your
									<a class="btn btn-link link-to-tab" href="#address">shipping and billing
										addresses</a>, and
									<a class="btn btn-link link-to-tab" href="#edit">edit your password and account
										details.</a>
								</p>

								<div class="mb-4"></div>

								<div class="row row-lg">
									<div class="col-6 col-md-4">
										<div class="feature-box text-center pb-4">
											<a href="product-management.html" class="link-to-tab"><i class="fas fa-list"></i></a>
											<div class="feature-box-content">
												<h3>Product Management</h3>
											</div>
										</div>
									</div>

									<div class="col-6 col-md-4">
										<div class="feature-box text-center pb-4">
											<a href="order-management.html" class="link-to-tab"><i class="fas fa-boxes"></i></a>
											<div class=" feature-box-content">
												<h3>Order Management</h3>
											</div>
										</div>
									</div>

									<div class="col-6 col-md-4">
										<div class="feature-box text-center pb-4">
											<a href="account-management.html" class="link-to-tab"><i class="fas fa-user"></i></a>
											<div class="feature-box-content">
												<h3>Account Management</h3>
											</div>
										</div>
									</div>

									<div class="col-6 col-md-4">
										<div class="feature-box text-center pb-4">
											<a href="my-profile.html" class="link-to-tab"><i class="fas fa-id-card"></i></a>
											<div class="feature-box-content p-0">
												<h3>MY PROFILE</h3>
											</div>
										</div>
									</div>

									<div class="col-6 col-md-4">
										<div class="feature-box text-center pb-4">
											<a href="login.html"><i class="fas fa-sign-out-alt"></i></a>
											<div class="feature-box-content">
												<h3>LOGOUT</h3>
											</div>
										</div>
									</div>
								</div></div>
						</div><div class="tab-pane fade" id="order" role="tabpanel">
							<p>Vui lòng t?o file **product-management.html** v?i n?i dung Qu?n lý S?n ph?m.</p>
							<a href="product-management.html" class="btn btn-dark">?i ??n Product Management</a>
						</div><div class="tab-pane fade" id="download" role="tabpanel">
							<div class="download-content">
								<h3 class="account-sub-title d-none d-md-block"><i
										class="sicon-cloud-download align-middle mr-3"></i>Downloads</h3>
								<div class="download-table-container">
									<p>No downloads available yet.</p> <a href="category.html"
										class="btn btn-primary text-transform-none mb-2">GO SHOP</a>
								</div>
							</div>
						</div><div class="tab-pane fade" id="address" role="tabpanel">
							<p>Vui lòng t?o file **order-management.html** v?i n?i dung Qu?n lý ??n hàng.</p>
							<a href="order-management.html" class="btn btn-dark">?i ??n Order Management</a>
						</div><div class="tab-pane fade" id="edit" role="tabpanel">
							<p>Vui lòng t?o file **account-management.html** v?i n?i dung Qu?n lý Tài kho?n.</p>
							<a href="account-management.html" class="btn btn-dark">?i ??n Account Management</a>
						</div><div class="tab-pane fade" id="billing" role="tabpanel">
							<div class="address account-content mt-0 pt-2">
								<h4 class="title">Billing address</h4>

								<form class="mb-2" action="#">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>First name <span class="required">*</span></label>
												<input type="text" class="form-control" required />
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Last name <span class="required">*</span></label>
												<input type="text" class="form-control" required />
											</div>
										</div>
									</div>

									<div class="form-group">
										<label>Company </label>
										<input type="text" class="form-control">
									</div>

									<div class="select-custom">
										<label>Country / Region <span class="required">*</span></label>
										<select name="orderby" class="form-control">
											<option value="" selected="selected">British Indian Ocean Territory
											</option>
											<option value="1">Brunei</option>
											<option value="2">Bulgaria</option>
											<option value="3">Burkina Faso</option>
											<option value="4">Burundi</option>
											<option value="5">Cameroon</option>
										</select>
									</div>

									<div class="form-group">
										<label>Street address <span class="required">*</span></label>
										<input type="text" class="form-control"
											placeholder="House number and street name" required />
										<input type="text" class="form-control"
											placeholder="Apartment, suite, unit, etc. (optional)" required />
									</div>

									<div class="form-group">
										<label>Town / City <span class="required">*</span></label>
										<input type="text" class="form-control" required />
									</div>

									<div class="form-group">
										<label>State / Country <span class="required">*</span></label>
										<input type="text" class="form-control" required />
									</div>

									<div class="form-group">
										<label>Postcode / ZIP <span class="required">*</span></label>
										<input type="text" class="form-control" required />
									</div>

									<div class="form-group mb-3">
										<label>Phone <span class="required">*</span></label>
										<input type="number" class="form-control" required />
									</div>

									<div class="form-group mb-3">
										<label>Email address <span class="required">*</span></label>
										<input type="email" class="form-control" placeholder="editor@gmail.com"
											required />
									</div>

									<div class="form-footer mb-0">
										<div class="form-footer-right">
											<button type="submit" class="btn btn-dark py-4">
												Save Address
											</button>
										</div>
									</div>
								</form>
							</div>
						</div><div class="tab-pane fade" id="shipping" role="tabpanel">
							<p>Vui lòng t?o file **my-profile.html** v?i n?i dung My Profile.</p>
							<a href="my-profile.html" class="btn btn-dark">?i ??n My Profile</a>
						</div></div></div></div><div class="mb-5"></div></main></div><script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>
</html>