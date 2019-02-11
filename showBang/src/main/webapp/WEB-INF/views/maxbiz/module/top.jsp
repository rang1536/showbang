<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>쇼방</title>
	<!-- Favicons -->
	<link href="resources/maxbiz/img/favicon.png" rel="icon">
	<link href="resources/maxbiz/img/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">
	
	<!-- Bootstrap CSS File -->
	<link href="resources/maxbiz/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Libraries CSS Files -->
	<link href="resources/maxbiz/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="resources/maxbiz/lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
	<link href="resources/maxbiz/lib/hover/hoverex-all.css" rel="stylesheet">
	<link href="resources/maxbiz/lib/jetmenu/jetmenu.css" rel="stylesheet">
	<link href="resources/maxbiz/lib/owl-carousel/owl-carousel.css" rel="stylesheet">
	
	<!-- Main Stylesheet File -->
	<link href="resources/maxbiz/css/style.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/maxbiz/css/colors/blue.css">
	
	<!-- =======================================================
	 Template Name: MaxiBiz
	 Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
	 Author: TemplateMag.com
	 License: https://templatemag.com/license/
	======================================================= -->
	
	<script src="resources/maxbiz/lib/jquery/jquery.min.js"></script>
	<script src="resources/maxbiz/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/maxbiz/lib/php-mail-form/validate.js"></script>
	<script src="resources/maxbiz/lib/prettyphoto/js/prettyphoto.js"></script>
	<script src="resources/maxbiz/lib/isotope/isotope.min.js"></script>
	<script src="resources/maxbiz/lib/hover/hoverdir.js"></script>
	<script src="resources/maxbiz/lib/hover/hoverex.min.js"></script>
	<script src="resources/maxbiz/lib/unveil-effects/unveil-effects.js"></script>
	<script src="resources/maxbiz/lib/owl-carousel/owl-carousel.js"></script>
	<script src="resources/maxbiz/lib/jetmenu/jetmenu.js"></script>
	<script src="resources/maxbiz/lib/animate-enhanced/animate-enhanced.min.js"></script>
	<script src="resources/maxbiz/lib/jigowatt/jigowatt.js"></script>
	<script src="resources/maxbiz/lib/easypiechart/easypiechart.min.js"></script>
	
	<!-- Template Main Javascript File -->
	<script src="resources/maxbiz/js/main.js"></script>
	
	<!-- 우편번호(다음) -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<div class="topbar clearfix">
		<div class="container">
			<div class="col-lg-12 text-right">
				<div class="social_buttons">
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+"><i class="fa fa-google-plus"></i></a>
					<!-- <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble"></i></a>
					<a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS"><i class="fa fa-rss"></i></a> -->
				</div>
			</div>
		</div>
	<!-- end container -->
	</div>
	<!-- end topbar -->

	<header class="header">
		<div class="container">
			<div class="site-header clearfix">
				<div class="col-lg-3 col-md-3 col-sm-12 title-area">
					<div class="site-title" id="title">
						<a href="home" title="">
							<!-- <h4>쇼<span>방</span></h4> -->
							<img src="resources/img/weblogo.PNG" style="width:80px;height:50px;"/>
						</a>
					</div>
				</div>
				<!-- title area -->
				<div class="col-lg-9 col-md-12 col-sm-12">
					<div id="nav" class="right">
						<div class="container clearfix">
							<ul id="jetmenu" class="jetmenu blue">
								<li class="active">
									<a href="home">Home</a>
								</li>
								<li>
									<a href="#">박람회</a>
									<ul class="dropdown">
										<li><a href="addCompanyForm">업체등록</a></li>
										<li><a href="javascript:alert('상품등록은 박람회 이후 부터 가능합니다')">제휴업체 상품등록</a></li>
										<!-- <li><a href="services.html">Services</a></li>
										<li><a href="team-members.html">Team Members</a></li>
										<li><a href="testimonials.html">Testimonials</a></li>
										<li><a href="404.html">404 Error</a></li>
										<li><a href="faq.html">FAQ Page</a></li>
										<li><a href="left-sidebar.html">Left Sidebar</a></li>
										<li><a href="right-sidebar.html">Right Sidebar</a></li>
										<li><a href="fullwidth.html">Full Width</a></li>
										<li><a href="login.html">Login</a></li>
										<li><a href="register.html">Register</a></li>
										<li><a href="contact.html">Contact</a></li> -->
									</ul>
								</li>
								<li>
									<a href="#">공동구매</a>
									<ul class="dropdown">
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">공동구매목록</a></li>
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">공동구매요청</a></li>
										<!-- <li><a href="checkout.html">Checkout</a></li>
										<li><a href="account.html">Account Page</a></li>
										<li><a href="support.html">Support Center</a></li> -->
									</ul>
								</li>
								<li><a href="#">부동산</a>
									<ul class="dropdown">
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">매물요청</a></li>
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">책임중개사등록</a></li>
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">책임중개사찾기</a></li>
										<!-- <li><a href="portfolio-3.html">Portfolio (3 Columns)</a></li>
										<li><a href="gallery-portfolio.html">Gallery</a></li>
										<li><a href="masonry-grid-portfolio.html">Masonry Grid Style</a></li> -->
									</ul>
								</li>
								<li>
									<a href="#">커뮤니티</a>
									<ul class="dropdown">
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">자유게시판</a></li>
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">박람회 게시판</a></li>
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">우리동네 게시판</a></li>
										<li><a href="javascript:alert('3월 부터 정식서비스가 시작됩니다. 감사합니다')">QnA</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div><!-- nav -->
				</div><!-- title area -->
			</div><!-- site header -->
		</div><!-- end container -->
	</header><!-- end header -->
</body>
</html>