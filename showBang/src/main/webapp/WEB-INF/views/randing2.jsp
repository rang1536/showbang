<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>전북부동산박람회 - 입주의모든것!!</title>
	<meta property="og:type" content="website">
	<meta property="og:title" content="전북부동산박람회">
	<meta property="og:url" content="http://www.jbshow.kr">
	<meta property="og:image" content="http://www.jbshow.kr/resources/img/showbang.png">
	<meta property="og:description" content="JTV 후원 전북부동산박람회 2월15 ~ 17일 화산체육관, 입주/이사 공동구매혜택, 분양권매매/상가분양/임대 정보 등 다양한 부동산 정보와 대박 선물">
	<meta name="description" content="JTV 후원 전북부동산박람회 2월15 ~ 17일 화산체육관, 입주/이사 공동구매혜택, 분양권매매/상가분양/임대 정보 등 다양한 부동산 정보와 대박 선물">
	
	<meta name="twitter:card" content="summary">
	<meta name="twitter:title" content="전북부동산박람회">
	<meta name="twitter:description" content="JTV 후원 전북부동산박람회 2월15 ~ 17일 화산체육관, 입주/이사 공동구매혜택, 분양권매매/상가분양/임대 정보 등 다양한 부동산 정보와 대박 선물">
	<meta name="twitter:image" content="http://www.jbshow.kr/resources/img/showbang.png">
	<meta name="twitter:domain" content="http://www.jbshow.kr">
	
	<link rel="canonical" href="http://www.jbshow.kr">
	<meta name="naver-site-verification" content="386830e1722986ad012f3a82d27ac917108c5f9e"/>
	
	<link rel="stylesheet" href="resources/js/jquery.mobile-1.4.5.css">
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/jquery.mobile-1.4.5.js"></script>
    
	<!-- 우편번호(다음) -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    
    <link href="resources/js/jquery.modal.css" type="text/css" rel="stylesheet" />
    <script src="resources/js/jquery.modal.min.js"></script>
    
	<style>
	
	/* .container {margin-right: auto;margin-left: auto;padding-bottom: 100px;width:45%;height:auto;}
	.container2 {margin-right: auto;margin-left: auto;width:100%;height:auto;}
	.question {font-weight:bold;} */
	.inputBox{width:100%;height:30px;margin-top:5px;}
	.tdBottom{text-align:center;margin-top:5px;}
	.show{display:none;}
	@media ( max-width: 480px ) {
		/* .container {
		 width:auto;
		}
		.container2 {
		 width:auto;
		} */
		.question {
		font-weight:bold;
		float:none;
		width:auto;
		}
		.inputBox{width:100%;;height:30px;margin-top:5px;}
		.tdBottom{text-align:center;margin-top:5px;}
	}
	</style>
	
	<script>
		function topMenu(type){
			//$('#tvAd').pause();
			if(type == 1){
				$('.container').css('display','none');
				//$('#tvAd').prop('autoplay','yes');
				
				//$('#tvAdDiv').css('display','');
				$('#main').slideDown();
			}else if(type == 2){
				$('.container').css('display','none');
				$('#comInfo').slideDown();
			}else if(type == 3){
				$('.container').css('display','none');
				$('#roadInfo').slideDown();
			}
		}
		
		function playAdVideo(){
	  		var html = '<div width:100%;>';
	  		html += '<video src="resources/files/ad/tvad.mp4" style="width:100%;" autoplay controls/>';
	  		html += '</div>';
	  		playVideoPop(html);
	  		
	  	}
	  	
		//팝업창
		function playVideoPop(txt){
			modal({
			    type: 'info',
			    title: 'JTV광고 영상시청',
			    text: txt,
			    buttons: [{
					text:'닫기', //Button Text
					val: 'close', //Button Value
					eKey: true, //Enter Keypress
					addClass: 'btn-light-blue', //Button Classes (btn-large | btn-small | btn-green | btn-light-green | btn-purple | btn-orange | btn-pink | btn-turquoise | btn-blue | btn-light-blue | btn-light-red | btn-red | btn-yellow | btn-white | btn-black | btn-rounded | btn-circle | btn-square | btn-disabled)
					onClick: function(dialog) {
						return true;
					}
				}]
			});
		}
	</script>
</head>
<body>
<section id="page1" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:16px;">박람회</font></a></li>
				<li><a href="#page2" data-transition="none"><font style="font-size:16px;">참가업체</font></a></li>	
				<li><a href="#page3" data-transition="none"><font style="font-size:16px;">오시는길</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div>
			<table style="width:100%;border:2px solid #E0B94F;margin-top:5px;margin-bottom:10px;">
				<tr>
					<td style="height:30px;font-size:20px;font-weight:bold;background-color:#000000;color:#ffffff;text-align:center;">전북부동산박람회 <font style="color:#FF0000;">JTV 광고</font></td>
				</tr>
				<tr>
					<td><video src="resources/files/ad/tvad.mp4" controls style="width:100%;" poster="resources/img/stayscreen.PNG"></video></td>
				</tr>
			</table>
		</div>
		<img src="resources/img/randinglast.jpg" style="width:100%;">
	</div>
	
</section>

<section id="page2" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<div data-role="navbar">
			<ul>
				<li><a href="#page1" data-transition="none"><font style="font-size:16px;">박람회</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:16px;">참가업체</font></a></li>	
				<li><a href="#page3" data-transition="none"><font style="font-size:16px;">오시는길</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#F2CB61;height:8px;"></div>
		<br/><br/>
		<div style="font-weight:bold;font-size:35px;color:#000000;text-align:center;width:100%;">참&nbsp;가&nbsp;업&nbsp;체</div>
		
		<br/>
		<div style="font-size:16px;color:#000000;text-align:center;width:100%;">우리지역 분야별 최고의 업체들이</div>
		<div style="font-size:16px;color:#000000;text-align:center;width:100%;">함께 모여 주최하는 박람회입니다.</div>
		<br/><br/>
		<div style="width:100%;background-color:#F2CB61;height:8px;"></div>
		
		
		<!-- <div style="padding:4%;color:#000000;font-size:14px;">
			현재 참여업체의 요청으로 박람회 참여 업체는 박람회 개최일 10일전(2019.02.05) 공개됩니다.
		</div> -->
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 분양사</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			대방디엠시티 ㅣ 로마네시티 ㅣ 유탑유블레스
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 공인중개사</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			 아트부동산 ㅣ OK부동산 ㅣ 로또부동산
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 가전</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			하이마트 전북지사 ㅣ 전자랜드 ㅣ 삼성디지털프라자
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 가구</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			전주가구엑스포 ㅣ 전주가구타운 ㅣ 우드트랩 원목가구 ㅣ 레이디가구
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 인테리어<br/><font style="color:#8C8C8C;font-size:12px;">(토탈인테리어 / 중문 / 방범망 / 시스템에어컨 / 커튼 / 단열필름 / 탄성코트)</font></div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			부자하우스 ㅣ 동화중문 ㅣ 코렌아트 ㅣ 창테크 ㅣ 에어컨플러스 ㅣ 창마루 ㅣ 창스토리 ㅣ 나노프로텍트 ㅣ 나노글라스 ㅣ 나노마스터 ㅣ 3M 아토즈 ㅣ SKC ES윈도우필름 ㅣ 칠스토리   
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 주방<br/><font style="color:#8C8C8C;font-size:12px;">(인덕션 / 음식물처리기 / 정수기)</font></div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			휘슬러쿡 ㅣ 퍼펙트쿡 ㅣ 히트인덕션 ㅣ 전기레인져스 ㅣ 독일알텐바흐 세라믹 렌지 ㅣ 친환경 실리콘주방 ㅣ 웨이스트킹 전주점 ㅣ 다이손 ㅣ 싱크미 ㅣ 싱크퓨어 ㅣ 끌리니 ㅣ 인싱크이레이터 ㅣ 청호나이스
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 태양광</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			태양&태양광 ㅣ 
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 이동식주택</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			광주 이동식주택 ㅣ 
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 청소</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			 크린존 ㅣ 하하크린 ㅣ 동행 ㅣ 매직라인
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 금융/투자/경매</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			 NH농협 ㅣ DB생명 ㅣ 서울재무법인 ㅣ 경매법인 삼오
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 홈&리빙</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			 편백나무 반식욕기 ㅣ 참좋은숯침대 ㅣ 이상벽 닥터큐 ㅣ 월딘코리아 ㅣ 투투샤워기 ㅣ 전기찜팩/스포츠크림 ㅣ 제주 이미애 갈옷 ㅣ 아메징 ㅣ 정도웰빙약초 ㅣ 무주발효천마 ㅣ 고려엑스포공사 ㅣ 진도미역 ㅣ 봉평메밀 ㅣ 한산모시젓갈 ㅣ 문진땅콩 ㅣ 용대리황태 ㅣ 강원도 인제꿀 ㅣ 청해원젓갈 ㅣ 버섯더덕마죽 
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
		<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;padding:2%;">▷ 여행사</div>
		<div style="padding:4%;color:#000000;font-size:14px;">
			중국여행 ㅣ 
		</div>
		<div style="width:100%;background-color:#ddd;height:4px;"></div>
		
	</div>
	
	<!-- <div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table>
			<tr>
				<td rowspan="4" style="font-size:14px;font-weight:bold;text-align:center;border-right:3px solid #4C4C4C;padding-right:2%;width:30%;">전북<br/>부동산박람회</td>
				<td style="text-align:left;padding-left:5%;font-size:10px;">상호명:전주쇼방 | 대표자:윤재호</td>
			</tr>
			<tr>
				<td style="text-align:left;padding-left:5%;font-size:10px;">사업자번호:802-24-00678 | TEL:063-229-3435</td>
			</tr>
			<tr>
				<td style="text-align:left;padding-left:5%;font-size:10px;">주소 : 전주시 완산구 천잠로303 대학본관 157</td>
			</tr>
			<tr>
				<td style="text-align:left;padding-left:5%;font-size:10px;">Copyright(C) 2018~2019전주쇼방 ALL RIGHT RESERVERD</td>
			</tr>
		</table>
	</div> -->
</section>

<section id="page3" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<div data-role="navbar">
			<ul>
				<li><a href="#page1" data-transition="none"><font style="font-size:16px;">박람회</font></a></li>
				<li><a href="#page2" data-transition="none"><font style="font-size:16px;">참가업체</font></a></li>	
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:16px;">오시는길</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;background-color:#ffffff">
		<div style="font-weight:bold;font-size:16px;color:#ffffff;background-color:#000000;padding-top:5px;padding-bottom:5px;text-align:center;width:100%;">찾아오시는길</div>
		<div style="font-weight:bold;font-size:14px;color:#000000;padding:2%;"><img src="resources/img/roadinfo.PNG" style="width:16px;">&nbsp;&nbsp;전주IC방면</div>
		<img src="resources/img/road1.PNG" style="width:100%;">
		<br/>
		<img src="resources/img/roadinfo1.PNG" style="width:100%;">
		<div style="font-weight:bold;font-size:14px;color:#000000;padding:2%;"><img src="resources/img/roadinfo.PNG" style="width:16px;">&nbsp;&nbsp;서전주IC방면</div>
		<img src="resources/img/road2.PNG" style="width:100%;">
		<br/>
		<img src="resources/img/roadinfo2.PNG" style="width:100%;">
		<br/><br/>
		<div style="font-weight:bold;font-size:14px;color:#000000;padding:2%;"><img src="resources/img/roadinfo.PNG" style="width:16px;">&nbsp;&nbsp;화산체육관 경유버스</div>
		<img src="resources/img/roadinfo3.PNG" style="width:100%;">
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table>
			<tr>
				<td rowspan="4" style="font-size:14px;font-weight:bold;text-align:center;border-right:3px solid #4C4C4C;padding-right:2%;width:30%;">전북<br/>부동산박람회</td>
				<td style="text-align:left;padding-left:5%;font-size:10px;">상호명:전주쇼방 | 대표자:윤재호</td>
			</tr>
			<tr>
				<td style="text-align:left;padding-left:5%;font-size:10px;">사업자번호:802-24-00678 | TEL:063-229-3435</td>
			</tr>
			<tr>
				<td style="text-align:left;padding-left:5%;font-size:10px;">주소 : 전주시 완산구 천잠로303 대학본관 157</td>
			</tr>
			<tr>
				<td style="text-align:left;padding-left:5%;font-size:10px;">Copyright(C) 2018~2019전주쇼방 ALL RIGHT RESERVERD</td>
			</tr>
		</table>
	</div>
</section>
<!-- <div class="container2" style="border-bottom:3px solid #ddd;background-color:#F2CB61;">
	<div style="width:80%;margin-left:10%;text-align:center;padding-top:10px;padding-bottom:10px;">
		<font onclick="topMenu(1)" style="font-weight:bold;color:#030066;padding-left:15px;padding-right:15px;width:30%;font-size:15px;">박람회</font>
		<font onclick="topMenu(2)" style="font-weight:bold;color:#030066;padding-left:15px;padding-right:15px;width:30%;font-size:15px;">참가업체</font>
		<font onclick="topMenu(3)" style="font-weight:bold;color:#030066;padding-left:15px;padding-right:15px;width:30%;font-size:15px;">오시는길</font> 
		<table style="width:100%;">
			<tr>
				<td style="width:33%;background-color:#CC3D3D;color:#ffffff;font-size:20px;text-align:center;">박람회</td>
				<td style="width:33%;background-color:#CC3D3D;color:#ffffff;font-size:20px;text-align:center;">참가업체</td>
				<td style="width:33%;background-color:#CC3D3D;color:#ffffff;font-size:20px;text-align:center;">오시는길</td>
			</tr>
		</table>
	</div>
</div>

<div class="container" id="tvAdDiv">
	<video src="resources/files/ad/tvad.mp4" id="tvAd" loop controls style="width:100%;"/>
</div>	

<div class="container" id="main">
	<div>
		<table style="width:100%;border:2px solid #E0B94F;margin-top:5px;margin-bottom:10px;">
			<tr>
				<td style="height:30px;font-size:20px;font-weight:bold;background-color:#000000;color:#ffffff;text-align:center;">전북부동산박람회 <font style="color:#FF0000;">JTV 광고</font></td>
			</tr>
			<tr>
				<td><video src="resources/files/ad/tvad.mp4" controls style="width:100%;" poster="resources/img/stayscreen.PNG"></video></td>
			</tr>
		</table>
	</div>
	<img src="resources/img/randing3.jpg" style="width:100%;">
</div>

<div class="container" id="comInfo" style="display:none;">
	<br/><br/>
	<div style="font-weight:bold;font-size:35px;color:#000000;text-align:center;width:100%;">참&nbsp;가&nbsp;업&nbsp;체</div>
	
	<br/>
	<div style="font-size:16px;color:#000000;text-align:center;width:100%;">우리지역 분야별 최고의 업체들이</div>
	<div style="font-size:16px;color:#000000;text-align:center;width:100%;">함께 모여 주회하는 박람회입니다.</div>
	<div style="width:100%;border-bottom:2px solid #ddd;height:7px;"></div>
	<br/>
	
	<div style="padding:4%;color:#000000;font-size:14px;">
		현재 참여업체의 요청으로 박람회 참여 업체는 박람회 개최일 10일전(2019.02.05) 공개됩니다.
	</div>
	<br/><br/><br/><br/><br/><br/>
	<br/><br/>
	<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;">★ 분양사</div>
	<div style="padding:4%;color:#000000;font-size:14px;">
		
	</div>
	<br/><br/>
	
	<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;">★ 공인중개사</div>
	<div style="padding:4%;color:#000000;font-size:14px;">
		 
	</div>
	<br/><br/>
	
	<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;">★ 인테리어</div>
	<div style="padding:4%;color:#000000;font-size:14px;">
		 
	</div>
	<br/><br/>
	
	<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;">★ 금융/투자</div>
	<div style="padding:4%;color:#000000;font-size:14px;">
		 
	</div>
	<br/><br/>
	
	<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;">★ 홈&리빙</div>
	<div style="padding:4%;color:#000000;font-size:14px;">
		부자하우스 ㅣ 
	</div>
	<br/><br/>
	
	<div style="font-weight:bold;font-size:15px;color:#030066;width:100%;">★ 가구</div>
	<div style="padding:4%;color:#000000;font-size:14px;">
		전주가구EXPO ㅣ 
	</div>
	<br/><br/>
</div>

<div class="container" id="roadInfo" style="display:none;">
	
	<div style="font-weight:bold;font-size:16px;color:#ffffff;background-color:#000000;padding-top:5px;padding-bottom:5px;text-align:center;width:100%;">찾아오시는길</div>
	<div style="font-weight:bold;font-size:14px;color:#000000;padding:2%;"><img src="resources/img/roadinfo.PNG" style="width:16px;">&nbsp;&nbsp;전주IC방면</div>
	<img src="resources/img/road1.PNG" style="width:100%;">
	<br/>
	<img src="resources/img/roadinfo1.PNG" style="width:100%;">
	<div style="font-weight:bold;font-size:14px;color:#000000;padding:2%;"><img src="resources/img/roadinfo.PNG" style="width:16px;">&nbsp;&nbsp;서전주IC방면</div>
	<img src="resources/img/road2.PNG" style="width:100%;">
	<br/>
	<img src="resources/img/roadinfo2.PNG" style="width:100%;">
	<br/><br/>
	<div style="font-weight:bold;font-size:14px;color:#000000;padding:2%;"><img src="resources/img/roadinfo.PNG" style="width:16px;">&nbsp;&nbsp;화산체육관 경유버스</div>
	<img src="resources/img/roadinfo3.PNG" style="width:100%;">
</div> -->

<!-- <div class="container2" style="text-align:center;background-color:#ddd;">
	<table>
		<tr>
			<td rowspan="4" style="font-size:14px;font-weight:bold;text-align:center;border-right:3px solid #4C4C4C;padding-right:2%;width:30%;">전북<br/>부동산박람회</td>
			<td style="text-align:left;padding-left:5%;font-size:10px;">상호명:전주쇼방 | 대표자:윤재호</td>
		</tr>
		<tr>
			<td style="text-align:left;padding-left:5%;font-size:10px;">사업자번호:802-24-00678 | TEL:063-229-3435</td>
		</tr>
		<tr>
			<td style="text-align:left;padding-left:5%;font-size:10px;">주소 : 전주시 완산구 천잠로303 대학본관 157</td>
		</tr>
		<tr>
			<td style="text-align:left;padding-left:5%;font-size:10px;">Copyright(C) 2018~2019전주쇼방 ALL RIGHT RESERVERD</td>
		</tr>
	</table>
</div> -->
</body>
</html>