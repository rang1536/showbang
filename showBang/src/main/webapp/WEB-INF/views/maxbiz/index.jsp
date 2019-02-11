<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<c:import url="./module/top.jsp"></c:import>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>쇼방</title>
	
	
	<script>
	$(document).ready(function(){
		var addCheck = '${addResult}';
		console.log(addCheck);
		
		if(addCheck != null && addCheck != ''){
			if(addCheck == 'succ'){
				alert('등록되었습니다');
			}else{
				alert('등록에 실패하였습니다. 해당 문제가 계속 될경우 063-229-3435로 문의바랍니다. ');
			}
		}
	})
	</script>
</head>

<body>	


	<section id="intro">
		<div class="container">
			<div class="ror">
				<div class="col-md-8 col-md-offset-2">
					<h1>전북부동산박람회</h1>
					<p>2019.02.15 ~ 2019.02.17 (금~토요일)</p>
					<p>전주화산체육관 AM 10:00~ PM 06:00</p>
				</div>
			</div>
		</div>
	</section>


	<section class="section1">
		<div class="container">
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="servicebox text-center">
					<div class="service-icon">
						<div class="dm-icon-effect-1" data-effect="slide-left">
							<a href="javascript:void(0);" class=""> <i class="active dm-icon fa fa-bars fa-3x"></i> </a>
						</div>
						<div class="servicetitle">
							<h4>박람회소개</h4>
							<hr>
						</div>
						<p><font style="font-weight:bold;color:#000000;">전북부동산박람회 - 입주의 모든 것</font><br/>JTV후원, 2월 15일 ~ 17일, 전주화산체육관</p>
					</div><!-- service-icon -->
				</div><!-- servicebox -->
			</div><!-- large-4 -->

			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="servicebox text-center">
					<div class="service-icon">
						<div class="dm-icon-effect-1" data-effect="slide-bottom">
							<a href="javascript:void(0);" class=""> <i class="active dm-icon fa fa-laptop fa-3x"></i> </a>
						</div>
						<div class="servicetitle">
							<h4>참여업체</h4>
							<hr>
						</div>
						<p><font style="font-weight:bold;color:#000000;">JB쇼방 - 공동구매의 모든 것</font><br/>가전/가구/인테리어/중문/줄눈/커튼/블라인드/인덕션/정수기/탄성/음식물처리기/나노썬팅/주방용품/새집증후군/욕실케어/포장이사/반신욕사우나/이동식주택/신규분양/공인중개사/대출/법무사/태양광/전원주택/경매/여행</p>
					</div><!-- service-icon -->
				</div><!-- servicebox -->
			</div>
			<!-- large-4 -->

			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="servicebox text-center">
					<div class="service-icon">
						<div class="dm-icon-effect-1" data-effect="slide-right">
							<a href="javascript:void(0);" class=""> <i class="active dm-icon fa fa-book fa-3x"></i> </a>
						</div>
						<div class="servicetitle">
							<h4>정식입주박람회 진행</h4>
							<hr>
						</div>
						<p><font style="font-weight:bold;color:#000000;">홍대INT 기획사와 업무제휴</font><br/>홍대INT와 정식입주박람회 진행<br/>효천지구, 바구멀 등 신규아파트 추진<br/><font style="font-weight:bold;color:#002266;">문의 : 063-229-3435</font></p>
					</div><!-- service-icon -->
				</div><!-- servicebox -->
			</div><!-- large-4 -->
		</div><!-- end container -->
	</section><!-- end section -->
	

	<section class="section5">
		<div class="container">
			<div class="col-lg-6 col-md-6 col-sm-12 columns">
				<div class="widget" data-effect="slide-left">
					<img src="resources/maxbiz/img/slider_02.png" alt="">
				</div><!-- end widget -->
			</div><!-- large-6 -->
			
			<div class="col-lg-6 col-md-6 col-sm-12 columns">
				<div class="widget clearfix">
					<div class="services_lists">
						<div class="services_lists_boxes clearfix">
							<div class="col-lg-3 col-md-3 col-sm-12">
								<div class="services_lists_boxes_icon" data-effect="slide-bottom">
									<a href="javascript:void(0);" class=""> <i class="active dm-icon-medium fa fa-key fa-2x"></i> </a>
								</div>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9">
								<div class="servicetitle">
									<h4>온·오프라인 통합 시스템 구축</h4>
									<hr>
								</div>
								<p>부동산박람회, 정식입주박람회 진행<br/>방문고객 전원 쇼방APP 설치</p>
							</div>
						</div><!-- services_lists_boxes -->

						<div class="services_lists_boxes clearfix">
							<div class="col-lg-3 col-md-3 col-sm-12">
								<div class="services_lists_boxes_icon" data-effect="slide-bottom">
									<a href="javascript:void(0);" class=""> <i class="active dm-icon-medium fa fa-download fa-2x"></i> </a>
								</div>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9">
								<div class="servicetitle">
									<h4>지속적인 회원 확보</h4>
									<hr>
								</div>
								<p>JB쇼방 공동구매 이벤트 진행<br/>어플을 통한 공동구매 혜택 상시 제공<br/>커뮤니티 활성화</p>
							</div>
						</div><!-- services_lists_boxes -->


						<div class="services_lists_boxes clearfix">
							<div class="col-lg-3 col-md-3 col-sm-12">
								<div class="services_lists_boxes_icon_none" data-effect="slide-bottom">
									<a href="javascript:void(0);" class=""> <i class="active dm-icon-medium fa fa-dollar fa-2x"></i> </a>
								</div>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9">
								<div class="servicetitle">
									<h4>박람회 + 쇼방APP -> 시너지 극대화!!</h4>
									<hr>
								</div>
								<p>지속적인 부동산박람회, 정식입주박람회 진행<br/>박람회(오프라인) + 쇼방어플(온라인) 으로 시너지 효과 상승 및 지속유지</p>
							</div>
						</div><!-- services_lists_boxes -->

					</div><!-- services_lists -->
				</div><!-- end widget -->
			</div><!-- large-6 -->
		</div><!-- end container -->
	</section><!-- end section2 -->

	<section class="section4 text-center">
		<div class="general-title">
			<h3>JB쇼방 APP 다운로드</h3>
			<hr>
		</div>
		<div class="portfolio-wrapper">
			<div id="owl-demo" class="owl-carousel">
		
				<div class="item">
					<a data-rel="prettyPhoto" href="resources/maxbiz/img/foot1.png">
						<img class="lazyOwl" style="height:180px;" src="resources/maxbiz/img/foot1.png" data-src="resources/maxbiz/img/foot1.png" alt="">
						<div>
							<small>입주의 모든 것 - 신축</small>
							<span>쇼방</span>
							<i class="fa fa-search"></i>
						</div>
					</a>
				</div>

        		<div class="item">
					<a data-rel="prettyPhoto" href="resources/maxbiz/img/foot2.jpg">
						<img class="lazyOwl" style="height:180px;" src="resources/maxbiz/img/foot2.jpg" data-src="resources/maxbiz/img/foot2.jpg" alt="">
						<div>
							<small>입주의 모든 것 - 주택</small>
							<span>쇼방</span>
							<i class="fa fa-search"></i>
						</div>
					</a>
				</div>

				<div class="item">
					<a data-rel="prettyPhoto" href="resources/maxbiz/img/foot3.jpg">
						<img class="lazyOwl" style="height:180px;" src="resources/maxbiz/img/foot3.jpg" data-src="resources/maxbiz/img/foot3.jpg" alt="">
						<div>
							<small>입주의 모든 것 - 주택</small>
							<span>쇼방</span>
							<i class="fa fa-link"></i>
						</div>
					</a>
				</div>

				<div class="item">
					<a data-rel="prettyPhoto" href="resources/maxbiz/img/foot4.jpg">
						<img class="lazyOwl" style="height:180px;" src="resources/maxbiz/img/foot4.jpg" data-src="resources/maxbiz/img/foot4.jpg" alt="">
						<div>
							<small>입주의 모든 것 - 주택</small>
							<span>쇼방</span>
							<i class="fa fa-link"></i>
						</div>
					</a>
				</div>

				<div class="item">
					<a data-rel="prettyPhoto" href="resources/maxbiz/img/foot5.jpg">
						<img class="lazyOwl" style="height:180px;" src="resources/maxbiz/img/foot5.jpg" data-src="resources/maxbiz/img/foot5.jpg" alt="">
						<div>
							<small>입주의 모든 것 - 만성지구</small>
							<span>쇼방</span>
							<i class="fa fa-search"></i>
						</div>
					</a>
				</div>

				<div class="item">
					<a data-rel="prettyPhoto" href="resources/maxbiz/img/foot7.jpg">
						<img class="lazyOwl" style="height:180px;" src="resources/maxbiz/img/foot7.jpg" data-src="resources/maxbiz/img/foot7.jpg" alt="">
						<div>
							<small>입주의 모든 것 - 에코시티</small>
							<span>쇼방</span>
							<i class="fa fa-search"></i>
						</div>
					</a>
				</div>

				<div class="item">
					<a data-rel="prettyPhoto" href="resources/maxbiz/img/foot6.jpg">
						<img class="lazyOwl" style="height:180px;" src="resources/maxbiz/img/foot6.jpg" data-src="resources/maxbiz/img/foot6.jpg" alt="">
						<div>
							<small>입주의 모든 것 - 효천지구</small>
							<span>쇼방</span>
							<i class="fa fa-search"></i>
						</div>
					</a>
				</div>

			</div> 
		</div>
		<a class="button large" href="javascript:alert('2월 15일부터 다운로드 가능합니다!')">쇼방APP 다운로드</a>
	</section>
	<!-- end section1 -->

	<section class="section2">
		<div class="container">
			<div class="message text-center">
				<h2 class="big-title"><span>입주박람회 및 업무제휴</span> 알아보기</h2>
				<p class="small-title">입주박람회 진행 및 방법 등 기획안을 제공하며 업무제휴를 원하시는 업체분들의 제휴신청 방법을 알려드립니다.</p>
				<a class="button large" href="javascript:void(0);">입주박람회 기획안</a> <a class=" dmbutton large" href="javascript:void(0);">업무제휴 방법</a>
			</div>
			<!-- end message -->
		</div>
		<!-- end container -->
	</section>
	<!-- end section2 -->

	<section class="section1 text-center">
		<div class="container">
			<div class="general-title">
				<h3>JB쇼방 앱 광고 패키지</h3>
				<hr>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-effect="slide-bottom">
					<div class="custom-box">
						<div class="servicetitle">
							<h4>일반업체제휴</h4>
							<hr>
						</div>
						<div class="icn-main-container">
							<span class="icn-container">10만</span>
						</div>
						<p>JB쇼방 어플에서 제공하는 업체목록에 등록되며 쇼방에서 주최하는 각종 박람회 등 행사 참여우선권 부여</p>
						<ul class="pricing">
							<li>월 10만원 (6개월 의무계약)</li>
							<li>업체목록 내 배너제공</li>
							<li>상품 4개 등록</li>
							<li>박람회 참가 우선권 제공</li>
							<li>박람회 부스 비용 할인</li>
							<li></li>
						</ul>
						<a class="btn btn-primary" href="addCompanyForm">신청하기</a>
					</div>
					<!-- end custombox -->
				</div>
				<!-- end col-4 -->

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-effect="slide-bottom">
					<div class="custom-box">
						<div class="servicetitle">
							<h4>스폰업체제휴</h4>
							<hr>
						</div>
						<div class="icn-main-container">
							<span class="icn-container">20만</span>
						</div>
						<p>JB쇼방 어플에서 제공하는 업체목록에 등록되며 앱 메인페이지에 광고배너 제공. 쇼방에서 주최하는 각종 박람회 등 행사 참여우선권 부여</p>
						<ul class="pricing">
							<li>월 20만원 (6개월 의무계약)</li>
							<li style="font-weight:bold;color:#000000;">JB쇼방 앱 메인 화면 배너 제공</li>
							<li>업종 내 배너 제공</li>
							<li>상품 10개 등록</li>
							<li>박람회 참가 우선권 제공</li>
							<li>박람회 부스 비용 할인</li>
							
						</ul>
						<a class="btn btn-primary" href="addCompanyForm">신청하기</a>
					</div>
					<!-- end custombox -->
				</div>
				<!-- end col-4 -->

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-effect="slide-bottom">
					<div class="custom-box">
						<div class="servicetitle">
							<h4>메인스폰제휴</h4>
							<hr>
						</div>
						<div class="icn-main-container">
							<span class="icn-container">50만</span>
						</div>
						<p>JB쇼방 앱 내 메인화면 등 상,하단 대형 광고배너 제작 및 제공하여 보다 강력한 홍보효과. 링크 랜딩페이지를 제작, 제공</p>
						<ul class="pricing">
							<li>월 50만원 (기간 협의 가능)</li>
							<li style="font-weight:bold;color:#000000;">앱 메인 상,하단 대형 배너 제공</li>
							<li style="font-weight:bold;color:#000000;">업종 내 상단 위치 제공</li>
							<li style="font-weight:bold;color:#000000;">상품 20개 등록</li>
							<li>박람회 참가 우선권 제공</li>
							<li>박람회 부스 비용 할인</li>
						</ul>
						<a class="btn btn-primary" href="addCompanyForm">신청하기</a>
					</div>
					<!-- end custombox -->
				</div>
				<!-- end col-4 -->

			</div>
		</div>
		<!-- end container -->
	</section>
	<!-- end section1 -->

	<section class="section3">
		<div class="container withpadding">
			<div class="message">
				<div class="col-lg-9 col-md-9 col-sm-9">
					<h3>전북부동산박람회 참여업체 업체등록!</h3>
					<p>2월 15 ~ 17일 전북부동산박람회에 참여하시는 업체분들은 해당 링크를 통해서 업체등록을 해주시기 바랍니다. 등록 시 궁금하신점이나 문의사항은 전주쇼방으로 전화주시기 바랍니다. 감사합니다</p>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-12">
					<a class="dmbutton button large pull-right" href="addCompanyForm"><i class="fa fa-download"></i> 업체등록</a>
				</div>
			</div>
			<!-- end message -->
		</div>
		<!-- end container -->
	</section>
	<!-- end section3 -->

  	<c:import url="./module/footer.jsp"></c:import>
	<div class="dmtop">Scroll to Top</div>

	<!-- JavaScript Libraries -->
	<!-- <script src="resources/maxbiz/lib/jquery/jquery.min.js"></script>
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
	
	Template Main Javascript File
	<script src="resources/maxbiz/js/main.js"></script> -->



</body>
</html>