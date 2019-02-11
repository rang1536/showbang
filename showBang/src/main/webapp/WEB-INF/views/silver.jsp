<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>실버벨</title>
	
	<LINK REL="SHORTCUT ICON" HREF="resources/img/showbang.png">
	
	<link rel="stylesheet" href="resources/js/jquery.mobile-1.4.5.css">
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/jquery.mobile-1.4.5.js"></script>

    <link href="resources/js/jquery.modal.css" type="text/css" rel="stylesheet" />
    <script src="resources/js/jquery.modal.min.js"></script>
    
    <!-- bootStrap -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	
	<!-- 슬라이더 -->
	<link rel="stylesheet" href="resources/css/swiper.css">
	<link rel="stylesheet" href="resources/css/swiper.min.css">
	
	<script src="resources/js/swiper.js"></script>
	<script src="resources/js/swiper.min.js"></script>
	<!-- <script src="resources/js/swiper.esm.js"></script>
	<script src="resources/js/swiper.esm.bundle.js"></script> -->
	
	<!-- 우편번호(다음) -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    
    <!-- 디자인 -->
    <link href="resources/css/common.css" rel="stylesheet" type="text/css">
	<link href="resources/css/layout.css" rel="stylesheet" type="text/css">
	
	<!-- 카카오톡링크 -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	
	<style>
		/* 공용 */
		.hide{display:none;}
		
		/* 슬라이드 */
		
		/* 사이드메뉴 */
		#slideMenu { width : 250px; height : 100%; position : fixed; top : 0px; right : -252px; z-index : 10; border : 1px solid #c9c9c9; background-color : white; text-align : center; transition: All 0.2s ease; -webkit-transition: All 0.2s ease; -moz-transition: All 0.2s ease; -o-transition: All 0.2s ease; } 
		#slideMenu.open { right : 0px; }
		.slideList{width:100%;border:1px solid #ddd;font-weight:bold;font-size:14px;color:#000000;}
		.slideList:hover{background-color:#FAF4C0;}
		.slideList:active{background-color:#FAF4C0;}
		.slideList:visited{background-color:#FAF4C0;}
		.slideList:link{background-color:#FAF4C0;}
		
		/* 검색창 */
		#searchMenu { width : 100%; height : 60%; position : fixed; top : 0px; right : -100%; z-index : 10; border : 1px solid #c9c9c9; background-color : white; text-align : center; transition: All 0.2s ease; -webkit-transition: All 0.2s ease; -moz-transition: All 0.2s ease; -o-transition: All 0.2s ease; } 
		#searchMenu.open { right : 0px; }
		
		/* 검색폼 */
		#custom-search-input{padding: 3px;border: solid 1px #E4E4E4;border-radius: 6px;background-color: #fff;}
		#custom-search-input input{border: 0;box-shadow: none;}
		#custom-search-input button{margin: 2px 0 0 0;background: none;box-shadow: none;border: 0;color: #666666;padding: 0 8px 0 10px;border-left: solid 1px #ccc;}
		#custom-search-input button:hover{border: 0;box-shadow: none;border-left: solid 1px #ccc;}
		#custom-search-input .glyphicon-search{font-size: 23px;}
		#custom-search-input .glyphicon-volume-up{font-size: 23px;}
		
		/* 버튼 */
		.orange-circle-button {border: .5em solid #E84D0E;font-size: 30px;line-height: 1.1em;color: #ffffff;background-color: #e84d0e;margin: auto;border-radius: 50%;height: 15%;width: 7em;position: relative;}
		.orange-circle-button:hover {color:#ffffff;background-color: #e84d0e;text-decoration: none;border-color: #ff7536;}
		.orange-circle-button:visited {color:#ffffff;background-color: #e84d0e;text-decoration: none;}
		
		/* 매물등록 이미지 테이블 */
		.imgSpace{width:24%;height:80px;;border:1px solid #ddd;text-align:center;}
		
		/* 이미지등록 */
		.fileInputHidden {width:100%;font-size:29px;position:absolute;right:0px;top:0px;opacity:0;filter: alpha(opacity=0);-ms-filter: alpha(opacity=0);cursor:pointer;}		
		.fileInputDiv {position:relative;width:100%;height:80px;overflow:hidden;}
		.mImgView{display:none;width:100%;height:60px;}
		
		/* 로그인 */
		
		/* 로딩중 화면 */
		.loader{width: 100%;height: 100%;top: 0;left: 0;position: fixed;display: block;opacity: 0.8;background: white;z-index: 99;text-align: center;}
		.loader img{position: absolute;top: 50%;left: 42%;z-index: 100;}
		.loading{display:none;}
		.check{font-weight:bold;color:#000000;background-color:#FAE0D4;}
		
		/* 중개사정보 */
		.titleTd{width:25%;border:1px solid #ddd;text-align:center;}
		.bodyTd{width:74%;border:1px solid #ddd;font-weight:bold;}
		
		/* 스크립트 입력폼 */
		.jsInp{width:75%;height:35px;text-align:left;border:2px solid #ddd;border-radius:5px;padding:0.4em}
		
		/* 제휴업체 테이블 */
		.adTd{width:48%;border:1px solid #ddd;}
		.sAd{border:2px solid #FF9090;}
		.sAdChange{border:2px solid #368AFF;}
		
		/* 매물원해요 */
		.wishMemulTitle{width:100%;text-align:center;font-weight:bold;color:#000000;font-size:14px;border-bottom:1px solid #ddd;border-top:1px solid #ddd;padding-top:8px;padding-bottom:8px;background-color:#F6F6F6;}
		.wishMemulbody{border:3px solid #ddd;text-align:center;font-weight:bold;font-size:16px;color:#030066;height:50px;}
	
		/* 매물상세보기 */
		.mDetailTitle{width:100%;text-align:center;font-weight:bold;color:#000000;font-size:14px;border-bottom:1px solid #ddd;border-top:1px solid #ddd;padding-top:8px;padding-bottom:8px;background-color:#F6F6F6;}
		.mDetailTbTitle{width:25%;padding:1%;font-weight:bold;font-size:13px;color:#000000;border-bottom:1px solid #ddd;}
		.mDetailTbBody{padding:2%;font-size:13px;color:#000000;font-weight:bold;border-bottom:1px solid #ddd;}
		
		/* 복합지역 */
		.ca{padding:2%;}
		.caWishMemulbody{border:3px solid #ddd;text-align:center;font-weight:bold;font-size:16px;color:#030066;height:50px;}
	
	</style>
	
	<script>
	
	</script>
</head>
<body>
<div class="orderInfo">
	<input type="hidden" id="orderTelVal" value=""/>
	<input type="hidden" id="orderProVal" value=""/>
</div>

<div class="loader loading">
	<img src="resources/img/2.gif" alt="loading">
</div>

<!-- 사이드메뉴 -->
<input type="hidden" id="slideOpenCheck" value="1"/>
<div id="slideMenu"> 
	<br/>
	<div style="width:100%;background-color:#CC723D;color:#EAEAEA;height:18%;"></div>
	<div style="width:100%;text-align:center;font-weight:bold;" id="privercyInfo">
		<br/><br/><br/>
		사이드메뉴(개인정보)
	</div>
	
	<table style="width:100%;height:48%;border:1px solid #ddd;">
		<tr>
			<td class="slideList" onclick="location.href='#page100';">메인화면 바로가기</td>
		</tr>
		<tr>
			<td class="slideList" style="background-color:#FFFFF6">공동구매 목록보기</td>
		</tr>
		<tr>
			<td class="slideList">내 글 보기</td>
		</tr>
		<tr>
			<td class="slideList" style="background-color:#FFFFF6">개인설정</td>
		</tr>
		<tr>
			<td class="slideList">고객센터</td>
		</tr>
		<tr>
			<td class="slideList" onclick="logOut();" style="background-color:#FFFFF6">로그아웃</td>
		</tr>
	</table>
	<div>
		<div class="swiper-container" id="adContainer" style="width:100%;height:30%;">
			<div class="swiper-wrapper" id="adWrapper">
				<div class="swiper-slide"><img src="resources/files/slide/slideAd1.PNG" style="width:100%;"/></div>
				<div class="swiper-slide"><img src="resources/files/slide/slideAd2.PNG" style="width:100%;"/></div>
				<div class="swiper-slide"><img src="resources/files/slide/slideAd3.PNG" style="width:100%;"/></div>
			</div>
			<!-- If we need pagination -->
		    <div class="swiper-pagination"></div>
		</div>
	</div>
</div> 

<section id="page1" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page1'">
					<img src="resources/img/silverlogo.PNG" style="width:30px;height:20px;"/>
					<font style="color:#002266;font-weight:bold;font-size:20px;">실</font><font style="color:#FF0000;font-weight:bold;font-size:20px;">버</font><font style="color:#476600;font-weight:bold;font-size:20px;">벨</font>
					<br/><font style="color:#476600;font-size:12px;font-weight:bold;">부모님 안부확인 서비스</font>
				</td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">홈<br/>바로가기</font></a></li>
				<li><a href="#page2" data-transition="none"><font style="font-size:14px;color:#000000;">안부<br/>서비스</font></a></li>	
				<li><a href="#page3" data-transition="none"><font style="font-size:14px;color:#000000;">보호<br/>서비스</font></a></li>
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">알림벨<br/>관리</font></a></li>				
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<!-- 상단슬라이드 -->
		<div class="swiper-container" id="mAdContainer" style="width:100%;">
			<div class="swiper-wrapper" id="adWrapper">
				<div class="swiper-slide"><img src="resources/files/ad/silvertop.PNG" style="width:100%;height:125px;"/></div>
			</div>
			<!-- If we need pagination -->
		    <div class="swiper-pagination"></div>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="border-right:1px solid #ddd;width:50%;text-align:center;">
						<img src="resources/img/girl.PNG" style="width:50px;height:50px;"/><br/>
						<font style="font-size:14px;color:#000000;">윤재호님 반갑습니다.</font>
					</td>
					<td style="text-align:center;">
						<font style="font-size:12px;font-weight:bold;color:#000000;">PM 06:07 현재</font><br/>
						아빠&nbsp;&nbsp;&nbsp;<img src="resources/img/green.png" style="width:60px;height:25px;"/><br/>
						엄마&nbsp;&nbsp;&nbsp;<img src="resources/img/red.png" style="width:60px;height:25px;"/>
					</td>
				</tr>
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">안부</font> 서비스</td>
					<td style="width:20%;font-weight:bold;font-size:13px;"><a>더보기+</a></td>
				</tr>
			</table>
			
			<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-31</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:20)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-30</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:10)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-29</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:12)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-28</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:33)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-27</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:40)</td>
  	  	  		</tr>
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/silvermusic.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">알림벨</font> 관리</td>
					<td style="width:20%;font-weight:bold;font-size:13px;"><a>더보기+</a></td>
				</tr>
			</table>
			
			<table id="mainMemulListTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;">손자음성 알림벨녹음</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:32</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;">내 음성 알림벨</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:36</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;">자연의소리</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">01:06</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;">며느리 음성 알림벨</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:15</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;">기본음성 알림벨녹음</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:18</td>
  	  	  		</tr>
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="width:100%;">
			<table>
				<tr>
					<td rowspan="4" style="font-size:14px;font-weight:bold;text-align:center;border-right:3px solid #4C4C4C;padding-right:2%;width:20%;">실버벨</td>
					<td style="text-align:left;padding-left:5%;font-size:10px;">상호명:(주)에이큐브 | 대표자:김상훈</td>
				</tr>
				<tr>
					<td style="text-align:left;padding-left:5%;font-size:10px;">사업자번호:355-88-00188 | TEL:063-229-3435</td>
				</tr>
				<tr>
					<td style="text-align:left;padding-left:5%;font-size:10px;">주소 : 전주시 완산구 천잠로303 대학본관 157</td>
				</tr>
				<tr>
					<td style="text-align:left;padding-left:5%;font-size:10px;">Copyright(C) 2018~2019(주)에이큐브 ALL RIGHT RESERVERD</td>
				</tr>
			</table>
		</div>
	</div>
	
</section>

<section id="page2" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page1'">
					<img src="resources/img/silverlogo.PNG" style="width:30px;height:20px;"/>
					<font style="color:#002266;font-weight:bold;font-size:20px;">실</font><font style="color:#FF0000;font-weight:bold;font-size:20px;">버</font><font style="color:#476600;font-weight:bold;font-size:20px;">벨</font>
					<br/><font style="color:#476600;font-size:12px;font-weight:bold;">부모님 안부확인 서비스</font>
				</td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page1" data-transition="none"><font style="font-size:14px;color:#000000;">홈<br/>바로가기</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">안부<br/>서비스</font></a></li>	
				<li><a href="#page3" data-transition="none"><font style="font-size:14px;color:#000000;">보호<br/>서비스</font></a></li>
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">알림벨<br/>관리</font></a></li>				
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="border-right:1px solid #ddd;width:50%;text-align:center;">
						<img src="resources/img/girl.PNG" style="width:50px;height:50px;"/><br/>
						<font style="font-size:14px;color:#000000;">윤재호님 반갑습니다.</font>
					</td>
					<td style="text-align:center;">
						<font style="font-size:12px;font-weight:bold;color:#000000;">PM 06:07 현재</font><br/>
						아빠&nbsp;&nbsp;&nbsp;<img src="resources/img/green.png" style="width:60px;height:25px;"/><br/>
						엄마&nbsp;&nbsp;&nbsp;<img src="resources/img/red.png" style="width:60px;height:25px;"/>
					</td>
				</tr>
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">관리</font>목록</td>
				</tr>
			</table>
			
			<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
  	  				<td onclick="location.href='#page5'" style="width:30%;height:30px;text-align:center;padding:2%;">
  	  					<img src="resources/img/girl.PNG" style="width:50px;height:50px;"/><br/>
  	  					<font style="font-weight:bold;color:#000000;">엄마</font>
  	  				</td>
  	  				<td onclick="location.href='#page5'" style="width:30%;height:30px;text-align:center;padding:2%;">
  	  					<img src="resources/img/man.PNG" style="width:50px;height:50px;"/><br/>
  	  					<font style="font-weight:bold;color:#000000;">아빠</font>
  	  				</td>
  	  				<td style="width:30%;height:30px;text-align:center;padding:2%;">
  	  					
  	  				</td>
  	  	  		</tr>
  	  	  		
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">푸시</font> 발송내역</td>
					<td style="width:20%;font-weight:bold;font-size:13px;"><a>더보기+</a></td>
				</tr>
			</table>
			
			<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-31</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(15:20)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-31</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:10)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-30</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:12)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-29</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(14:33)</td>
  	  	  		</tr>
  	  	  		<tr>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">19-01-29</td>
  	  				<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;color:#476600;">알림푸시 수신확인(08:40)</td>
  	  	  		</tr>
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
			<table style="width:100%;">
				<tr>
					<td style="width:100%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">안부알림 발송하기</td>
				</tr>
			</table>
	</div>
	
</section>

<section id="page3" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page1'">
					<img src="resources/img/silverlogo.PNG" style="width:30px;height:20px;"/>
					<font style="color:#002266;font-weight:bold;font-size:20px;">실</font><font style="color:#FF0000;font-weight:bold;font-size:20px;">버</font><font style="color:#476600;font-weight:bold;font-size:20px;">벨</font>
					<br/><font style="color:#476600;font-size:12px;font-weight:bold;">부모님 안부확인 서비스</font>
				</td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page1" data-transition="none"><font style="font-size:14px;color:#000000;">홈<br/>바로가기</font></a></li>
				<li><a href="#page2" data-transition="none"><font style="font-size:14px;color:#000000;">안부<br/>서비스</font></a></li>	
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">보호<br/>서비스</font></a></li>
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">알림벨<br/>관리</font></a></li>				
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="border-right:1px solid #ddd;width:50%;text-align:center;">
						<img src="resources/img/girl.PNG" style="width:50px;height:50px;"/><br/>
						<font style="font-size:14px;color:#000000;">윤재호님 반갑습니다.</font>
					</td>
					<td style="text-align:center;">
						<font style="font-size:12px;font-weight:bold;color:#000000;">PM 06:07 현재</font><br/>
						아빠&nbsp;&nbsp;&nbsp;<img src="resources/img/green.png" style="width:60px;height:25px;"/><br/>
						엄마&nbsp;&nbsp;&nbsp;<img src="resources/img/red.png" style="width:60px;height:25px;"/>
					</td>
				</tr>
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;">
				<tr>
					<td style="background-color:#0054FF;color:#FFFFFF;height:30px;text-align:center;">전화번호부 불러오기</td>
				</tr>
			</table>
			
			<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;border-bottom:2px solid #F2CB61;">이름</td>
					<td style="width:40%;text-align:center;font-weight:bold;color:#000000;border-bottom:2px solid #F2CB61;">전화번호</td>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;border-bottom:2px solid #F2CB61;">선택</td>
				</tr>
				<tr>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;">조승완</td>
					<td style="width:40%;text-align:center;font-weight:bold;color:#000000;">010-4251-5559</td>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;"><button type="button">등록</button></td>
				</tr>
				<tr>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;">상훈이</td>
					<td style="width:40%;text-align:center;font-weight:bold;color:#000000;">010-1285-6542</td>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;"><button type="button">등록</button></td>
				</tr>
				<tr>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;">똥깨2</td>
					<td style="width:40%;text-align:center;font-weight:bold;color:#000000;">010-2285-4512</td>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;"><button type="button">등록</button></td>
				</tr>
				<tr>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;">할머니</td>
					<td style="width:40%;text-align:center;font-weight:bold;color:#000000;">010-2585-8742</td>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;"><button type="button">등록</button></td>
				</tr>
				<tr>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;">영희</td>
					<td style="width:40%;text-align:center;font-weight:bold;color:#000000;">010-3696-2552</td>
					<td style="width:30%;text-align:center;font-weight:bold;color:#000000;"><button type="button">등록</button></td>
				</tr>
				<tr>
					<td colspan="3" style="border-top:1px solid #ddd;text-align:right;font-weight:bold;color:#000000;">더보기+</td>
					
				</tr>
			</table>
		</div>
		
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">보호자</font> 목록</td>
					<td style="width:20%;font-weight:bold;font-size:13px;"><a>더보기+</a></td>
				</tr>
			</table>
			
			<table id="mainMemulListTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
					<td style="width:40%;height:30px;border-bottom:1px dotted #ddd;color:#476600;text-align:center;font-weight:bold;">아빠</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;"><button type="button">보호자설정헤제</button></td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;text-align:center;font-weight:bold;">엄마</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;"><button type="button">보호자설정헤제</button></td>
  	  	  		</tr>
			</table>
		</div>
		
		<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table style="width:100%;">
			<tr>
				<td onclick="order(1)" style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">푸시설정</td>
				<td onclick="order(2)" style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">음성명령</td>
			</tr>
		</table>
	</div>
	</div>
	
</section>

<section id="page4" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page1'">
					<img src="resources/img/silverlogo.PNG" style="width:30px;height:20px;"/>
					<font style="color:#002266;font-weight:bold;font-size:20px;">실</font><font style="color:#FF0000;font-weight:bold;font-size:20px;">버</font><font style="color:#476600;font-weight:bold;font-size:20px;">벨</font>
					<br/><font style="color:#476600;font-size:12px;font-weight:bold;">부모님 안부확인 서비스</font>
				</td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page1" data-transition="none"><font style="font-size:14px;color:#000000;">홈<br/>바로가기</font></a></li>
				<li><a href="#page2" data-transition="none"><font style="font-size:14px;color:#000000;">안부<br/>서비스</font></a></li>	
				<li><a href="#page3" data-transition="none"><font style="font-size:14px;color:#000000;">보호<br/>서비스</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">알림벨<br/>관리</font></a></li>				
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="border-right:1px solid #ddd;width:50%;text-align:center;">
						<img src="resources/img/girl.PNG" style="width:50px;height:50px;"/><br/>
						<font style="font-size:14px;color:#000000;">윤재호님 반갑습니다.</font>
					</td>
					<td style="text-align:center;">
						<font style="font-size:12px;font-weight:bold;color:#000000;">PM 06:07 현재</font><br/>
						아빠&nbsp;&nbsp;&nbsp;<img src="resources/img/green.png" style="width:60px;height:25px;"/><br/>
						엄마&nbsp;&nbsp;&nbsp;<img src="resources/img/red.png" style="width:60px;height:25px;"/>
					</td>
				</tr>
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/silvermusic.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">알림벨</font> 관리</td>
					<td style="width:20%;font-weight:bold;font-size:13px;"><a>더보기+</a></td>
				</tr>
			</table>
			<table style="width:100%;">
				<tr>
					<td style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">신규녹음</td>
					<td style="width:50%;background-color:#FFD8D8;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">선택삭제</td>
				</tr>
			</table>
			
			<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;손자음성 알림벨녹음</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:32</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내 음성 알림벨</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:36</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;자연의소리</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">01:06</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;며느리 음성 알림벨</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:15</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기본음성 알림벨녹음</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:18</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시끄러운 소리</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">01:06</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내목소리</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:15</td>
  	  	  		</tr>
  	  	  		<tr>
					<td style="height:30px;border-bottom:1px dotted #ddd;color:#476600;"><input type="checkbox"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;테스트녹음</td>
  	  				<td style="height:30px;border-bottom:1px dotted #ddd;text-align:center;">00:18</td>
  	  	  		</tr>
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
			<table style="width:100%;">
				<tr>
					<td style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">메인알림벨 설정</td>
				</tr>
			</table>
		</div>
	</div>
	
</section>

<section id="page5" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page1'">
					<img src="resources/img/silverlogo.PNG" style="width:30px;height:20px;"/>
					<font style="color:#002266;font-weight:bold;font-size:20px;">실</font><font style="color:#FF0000;font-weight:bold;font-size:20px;">버</font><font style="color:#476600;font-weight:bold;font-size:20px;">벨</font>
					<br/><font style="color:#476600;font-size:12px;font-weight:bold;">부모님 안부확인 서비스</font>
				</td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page1" data-transition="none"><font style="font-size:14px;color:#000000;">홈<br/>바로가기</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">안부<br/>서비스</font></a></li>	
				<li><a href="#page3" data-transition="none"><font style="font-size:14px;color:#000000;">보호<br/>서비스</font></a></li>
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">알림벨<br/>관리</font></a></li>				
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="border-right:1px solid #ddd;width:50%;text-align:center;">
						<img src="resources/img/girl.PNG" style="width:50px;height:50px;"/><br/>
						<font style="font-size:14px;color:#000000;">윤재호님 반갑습니다.</font>
					</td>
					<td style="text-align:center;">
						<font style="font-size:12px;font-weight:bold;color:#000000;">PM 06:07 현재</font><br/>
						아빠&nbsp;&nbsp;&nbsp;<img src="resources/img/green.png" style="width:60px;height:25px;"/><br/>
						엄마&nbsp;&nbsp;&nbsp;<img src="resources/img/red.png" style="width:60px;height:25px;"/>
					</td>
				</tr>
			</table>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/green.png" style="width:30px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">보호</font>신호등</td>
					<td style="width:20%;font-weight:bold;font-size:13px;"></td>
				</tr>
			</table>
			
			<table style="width:100%;">
				<tr>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">24</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">23</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">22</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">21</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">20</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">19</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">18</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">17</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">16</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">15</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">14</td>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">13</td>
				</tr>
				<tr>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">12</td>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">11</td>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">10</td>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">9</td>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">8</td>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">7</td>
					<td style="width:8%;background-color:#CC3D3D;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">6</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">5</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">4</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">3</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">2</td>
					<td style="width:8%;background-color:#476600;color:#002266;height:33px;text-align:center;font-size:16px;font-weight:bold;">1</td>
				</tr>
			</table>
			
			
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
			<table style="width:100%;">
				<tr>
					<td style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">뒤로가기</td>
				</tr>
			</table>
		</div>
	</div>
	
</section>
</body>
</html>