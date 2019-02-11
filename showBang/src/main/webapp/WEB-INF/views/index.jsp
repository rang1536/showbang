<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JB쇼방-전북 부동산·공동구매의 모든 것</title>
	<meta property="og:url"           content="http://www.jbshow.kr/showBang/" />
	<meta property="og:type"          content="website" />
	<meta property="og:title"         content="쇼방 - 입주의 모든것" />
	<meta property="og:description"   content="JTV 후원 전북부동산박람회 2월15 ~ 17일 화산체육관, 입주/이사 공동구매혜택, 분양권매매/상가분양/임대 정보 등 다양한 부동산 정보와 대박 선물" />
	<meta property="og:image"         content="http://www.jbshow.kr/showBang/resources/files/ad/kakaotestad1.PNG" />
	
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
		.mDetailTbTitle{width:25%;padding:1%;font-weight:bold;font-size:14px;color:#000000;border-right:1px solid #ddd;text-align:center;}
		.mDetailTbBody{padding:2%;font-size:13px;color:#000000;font-weight:bold;}
		
		/* 복합지역 */
		.ca{padding:2%;}
		.caWishMemulbody{border:3px solid #ddd;text-align:center;font-weight:bold;font-size:16px;color:#030066;height:50px;}
	
	</style>
	
	<script>
	/* 서버URL */
	var serverURL = 'http://202.31.237.159:8080/www/';
	var userRank = '';
	
	setTimeout(function(){
		location.href = '#page2';
	},1500);
	
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('db14bd661e98066d6723a57ef3908430');
	
	var mySwiper = '';
	var mySwiper2 = '';
	var mySwiper3 = '';
	$(document).ready(function(){
		$('#page1').bind('pageshow',function(event, ui){
			
		})
		
		$('#page2').bind('pageshow',function(event, ui){
			/* 광고슬라이드 */
			mySwiper = new Swiper('#mAdContainer', { //메인화면광고
				// Optional parameters
				direction: 'horizontal',
				speed:400,
				autoplay:{
					delay:2000,
					disableOnInteraction:false //터치후에도 자동재생 멈추지 않음
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'bullets',
				},
				loop: true
		    }) 
			
			mySwiper2 = new Swiper('#fAdContainer', { //메인화면광고
				// Optional parameters
				direction: 'horizontal',
				speed:400,
				autoplay:{
					delay:2000,
					disableOnInteraction:false //터치후에도 자동재생 멈추지 않음
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'bullets',
				},
				loop: true
		    }) 
			/* console.log('??1')
			$('#tvAd').prop('autoplay','yes'); */
			setMainMenuBtn();
			getMainMemulWishList();
			getCaBoradList();
		})
		
		$('#page3').bind('pageshow',function(event, ui){
			getMemulBoradList(1);
			
			mySwiper3 = new Swiper('#bAdContainer', { //부동산 메인화면광고
				// Optional parameters
				direction: 'horizontal',
				speed:400,
				autoplay:{
					delay:2000,
					disableOnInteraction:false //터치후에도 자동재생 멈추지 않음
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'bullets',
				},
				loop: true
		    }) 
		})
		
		//커뮤니티 
		$('#page4').bind('pageshow',function(event, ui){
			getCommunityBoradList(1);
			
			/* mySwiper3 = new Swiper('#bAdContainer', { //부동산 메인화면광고
				// Optional parameters
				direction: 'horizontal',
				speed:400,
				autoplay:{
					delay:2000,
					disableOnInteraction:false //터치후에도 자동재생 멈추지 않음
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'bullets',
				},
				loop: true
		    })  */
		})
		
		$('#page5').bind('pagebeforeshow',function(event, ui){
			setCompanyListHtml();
		})
	})
	
	/* 메인 - 업종세팅 */
	function setMainMenuBtn(){
		$.ajax({
			url : serverURL + 'setMainMenuBtn',
			dataType : 'json',
			type : 'post',
			success : function(data){
				var html = '';
				html += '<tr>';
				$.each(data, function(i, list){
					if(i == 3 || i == 6 || i == 9 || i== 12 || i == 15){
						html += '</tr>';
						html += '<tr>';
					}
					
					html += '<td onclick="setCompanyList('+list.comCateNo+')" style="width:33%;height:60px;text-align:center;font-size:15px;color:#000000;font-weight:bold;border:2px solid #ddd">';
					html += list.comCateName;
					html += '<input type="hidden" id="comCateNoHidden" />'
					html += '</td>';
					
					if(i == list.length){
						html += '</tr>';
					}
				})
				$('#mainMenuBtnGroup').empty();
				$('#mainMenuBtnGroup').html(html);
			}
		})
	}
	
	/* 메인 - 부동산 */
	function getMainMemulWishList(){
  		var local = $('#caLocal').val();
  		$.ajax({
  			url : serverURL + 'getCaBoardList',
  			dataType : 'json',
  			type : 'post',
  			data : {'type':'1'},
  			success : function(data){
  				var html = '';
  				
  				if(data.length == 0){
  					html += '<tr><td colspan="2" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						if(i <= 7){
  							html += '<tr>';
  	  						if(data.boardTitle.length > 15){
  	  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle.substring(0,15)+'..</td>';
  	  						}else{
  	  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle+'</td>';
  	  						}  					
  	  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.regDate.substring(5,10)+'</td>';
  	  	  					html += '</tr>';
  						}
  						
  					})
  				}
  				/* html += '</table>'; */
  				
  				
  				$('#mainMemulListTb').empty();
  				$('#mainMemulListTb').html(html);
  				
  			}
  		})
  	}
	
	//메인- 게시글
	function getCaBoradList(){
  		var local = $('#caLocal').val();
  		$.ajax({
  			url : serverURL + 'getCaBoardList',
  			dataType : 'json',
  			type : 'post',
  			data : {'type':'2'},
  			success : function(data){
  				var html = '';
  				
  				if(data.length == 0){
  					html += '<tr><td colspan="2" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						if(i <= 7){
  							html += '<tr>';
  	  						if(data.boardTitle.length > 15){
  	  							html += '	<td onclick="communityDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle.substring(0,15)+'..</td>';
  	  						}else{
  	  							html += '	<td onclick="communityDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle+'</td>';
  	  						}  					
  	  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.regDate.substring(5,10)+'</td>';
  	  	  					html += '</tr>';
  						}
  						
  					})
  				}
  				/* html += '</table>'; */
  				
  				
  				$('#mainBoardListTb').empty();
  				$('#mainBoardListTb').html(html);
  				
  			}
  		})
  	}
	
	//
	function setCompanyList(comCateNo){
		$('#comCateNoHidden').val(comCateNo);
		location.href = '#page5';
	}
	
	/* 업체목록 조회 */
	function setCompanyListHtml(){
		var comCateNo = $('#comCateNoHidden').val();
		$('.loader').toggleClass('loading');
		$.ajax({
			url : serverURL+'setCompanyList',
			dataType : 'json',
			type : 'post',
			data : {'comCateNo':comCateNo},
			success: function(data){
				//console.log('조회완료');
				//console.log(data.length)
				
				var checkCnt = 0;
				html = '<table style="width:100%;">';
				html += '<tr><td style="height:10px;"></td></tr>'
				if(data.length == 0){
					html += '<tr>';
					html += '<td style="font-size:14px;text-align:center;color:#BDBDBD;">현재 등록된 플러스 광고가 없습니다.</td>';
					html += '</tr>';
				}else{
					$.each(data, function(i, list){
						if(list.comPlus == 2){
							html += '<tr>';
							html += '<td style="width:30%;">';
							if(list.thumnail == null || list.thumnail == ''){
								html += '<img src="resources/files/thumnail/testbi1.PNG" style="width:100%;border-radius:10%;height:80px;"/>';								
							}else{
								html += '<img src="resources/files/thumnail/'+list.thumnail+'" style="width:100%;border-radius:10%;height:80px;"/>';
							}
							html += '</td>';
							html += '<td style="width:5%;"></td>';
							html += '<td style="width:65%;" onclick="getComDetail('+list.comNo+')">';
							html += '	<font style="color:#47C83E;font-size:14px;">업체명</font>&nbsp;&nbsp;<font style="font-weight:bold;font-size:15px;color:#030066;">'+list.comName+'</font><br/>';
							html += '	<font style="color:#47C83E;font-size:14px;">회사정보</font><br/>';
							if(list.comInfo != null){
								if(list.comInfo.length > 25){
									html += '	<font style="font-size:13px;color:#000000;">'+list.comInfo.substring(0,24)+'...</font>';
								}else{
									html += '	<font style="font-size:13px;color:#000000;">'+list.comInfo+'</font>';
								}
							}else{
								html += '	<font style="font-size:13px;color:#C3C3C3;">소개글이 없습니다.</font>';
							}
							
							html += '</td>';
							html += '</tr>';
							html += '<tr><td colspan="3" style="height:2px;border-bottom:1px solid #EAEAEA;"></td></tr>'
							checkCnt++;
						}						
					})
					if(checkCnt == 0){
						html += '<tr>';
						html += '<td style="font-size:14px;text-align:center;color:#BDBDBD;">현재 등록된 플러스 광고가 없습니다.</td>';
						html += '</tr>';
					}
				}
				html += '</table>';
				
				var checkCnt2 = 0;
				var html2 = '<table style="width:100%;">';
				html2 += '<tr><td colspan="3" style="height:10px;"></td></tr>'
				
				if(data.length == 0){
					html2 += '<tr>';
					html2 += '<td style="font-size:14px;text-align:center;color:#BDBDBD;">현재 등록된 업체가 없습니다.</td>';
					html2 += '</tr>';
				}else{
					$.each(data, function(i, list){
						if(list.comPlus == 1){
							html2 += '<tr>';
							html2 += '<td style="width:30%;">';
							if(list.thumnail == null || list.thumnail == ''){
								html2 += '<img src="resources/files/thumnail/testbi1.PNG" style="width:100%;border-radius:10%;height:80px;"/>';								
							}else{
								html2 += '<img src="resources/files/thumnail/'+list.thumnail+'" style="width:100%;border-radius:10%;height:80px;"/>';
							}
							html2 += '</td>';
							html2 += '<td style="width:5%;"></td>';
							html2 += '<td style="width:65%;" onclick="getComDetail('+list.comNo+')">';
							html2 += '	<font style="color:#47C83E;font-size:14px;">업체명</font>&nbsp;&nbsp;<font style="font-weight:bold;font-size:15px;color:#030066;">'+list.comName+'</font><br/>';
							html2 += '	<font style="color:#47C83E;font-size:14px;">회사정보</font><br/>';
							if(list.comInfo != null){
								if(list.comInfo.length > 25){
									html2 += '	<font style="font-size:13px;color:#000000;">'+list.comInfo.substring(0,24)+'...</font>';
								}else{
									html2 += '	<font style="font-size:13px;color:#000000;">'+list.comInfo+'</font>';
								}
							}else{
								html2 += '	<font style="font-size:13px;color:#C3C3C3;">소개글이 없습니다.</font>';
							}
							html2 += '</td>';
							html2 += '</tr>';
							html2 += '<tr><td colspan="3" style="height:2px;border-bottom:1px solid #EAEAEA;"></td></tr>'
							checkCnt2++;
						}					
					})
					if(checkCnt2 == 0){
						html2 += '<tr>';
						html2 += '<td style="font-size:14px;text-align:center;color:#BDBDBD;">현재 등록된 업체가 없습니다.</td>';
						html2 += '</tr>';
					}
				}
				html2 += '</table>';
				
				$('.loader').toggleClass('loading');
				
				$('#companyPlusListDiv').empty();
				$('#companyPlusListDiv').html(html);
				
				$('#companyListDiv').empty();
				$('#companyListDiv').html(html2);
			}
		})	
	}
	
	/* 업체상세보기 */
	function getComDetail(comNo){
		//location.href='#page6';
		$('.loader').toggleClass('loading');
		$.ajax({
			url : serverURL+'getComDetail',
			data : {'comNo':comNo},
			dataType : 'json',
			type : 'post',
			success : function(data){
				//console.log(data);
				
				$('#orderTelVal').val();
				$('#orderHpVal').val();
				$('#orderProVal').val();
				if(data.comTel != null){
					$('#orderTelVal').val(data.comTel);
				}else if(data.comTel == null && data.comHp != null){
					$('#orderTelVal').val(data.comHp);
				}
				if(data.comHp != null){
					$('#orderHpVal').val(data.comHp);
				}
				
				
				var html = ''; //상품정보 - 회사정보
				var mainImgHtml = ''; //상품정보 - 메인이미지
				var ceoCommentHtml = ''; //상품정보 - 사장님 코멘트
				var productHtml = ''; //상품정보 - 판매상품정보 >> 세팅해야함 ㅠ
				
				if(data.comMainImg != null || data.comMainImg != ''){
					mainImgHtml += '<img src="resources/files/comCate/'+data.comMainImg+'" style="width:100%;height:250px;"/>';
				}
				
				html += '<table style="width:100%;background-color:#FFFFFF;padding:2%;">';
				html += '	<tr>';
				html += '		<td colspan="2" style="color:#002266;font-size:25px;font-weight:bold;text-align:center;border-bottom:1px solid #ddd;padding-top:8px;padding-bottom:8px;">'+data.comName+'</td>';
				html += '	</tr>';
				html += '	<tr>';
				html += '		<td style="color:#002266;font-size:14px;font-weight:bold;width:30%;">업종</td>';		
				html += '		<td style="color:#000000;font-size:14px;">'+data.comCateName+'</td>';
				html += '	</tr>';
				html += '	<tr>';
				html += '		<td style="color:#002266;font-size:14px;font-weight:bold;">결제방식</td>';		
				html += '		<td style="color:#000000;font-size:14px;">'+data.comPayInfo+'</td>';
				html += '	</tr>';
				html += '	<tr>';
				html += '		<td colspan="2" style="color:#002266;font-size:14px;font-weight:bold;">';
				html += '			<font style="border:1px solid #ddd;font-size:12px;color:#CC3D3D;padding:2px;">할인특가</font>&nbsp;&nbsp;&nbsp;';
				html += '			<font style="border:1px solid #ddd;font-size:12px;color:#476600;padding:2px;">쇼방가맹점</font>&nbsp;&nbsp;&nbsp;';
				html += '			<font style="border:1px solid #ddd;font-size:12px;color:#050099;padding:2px;">핫타임</font>&nbsp;&nbsp;&nbsp;';
				html += '		</td>';		
				html += '	</tr>';
				html += '</table>';
				
				ceoCommentHtml += '<tr>';
				ceoCommentHtml += '<td>'+data.comCeoComment+'</td>';
				ceoCommentHtml += '</tr>';
				
				var checkCnt = 0;
				$.each(data.sbComProductList, function(i, list){
					productHtml += '<tr>';
					productHtml += '<td style="width:30%;height:80px;">';
					if(list.proSumnail == null || list.proSumnail == ''){
						productHtml += '';								
					}else{
						productHtml += '<img src="resources/files/product/'+list.proSumnail+'" style="width:100%;border-radius:10%;height:80px;"/>';
					}
				
					productHtml += '</td>';
					productHtml += '<td style="width:5%;"></td>';
					productHtml += '<td style="width:65%;" onclick="getProductDetail('+list.proNo+')">';
					
					if(list.proType == 1){
						productHtml += '	<font style="border:1px solid #ddd;font-size:12px;color:#AA1212;font-weight:bold;">상시판매</font><br/>';
					}else if(list.proType == 2){
						productHtml += '	<font style="border:1px solid #ddd;font-size:12px;color:#AA1212;font-weight:bold;">기간판매</font><br/>';
					}else if(list.proType == 3){
						productHtml += '	<font style="border:1px solid #ddd;font-size:12px;color:#AA1212;font-weight:bold;">한정수량판매</font><br/>';
					}
					
					productHtml += '';
					productHtml += '	<font style="color:#47C83E;font-size:14px;">상품명</font>&nbsp;&nbsp;<font style="font-weight:bold;font-size:16px;color:#030066;">'+list.proName+'</font><br/>';
					productHtml += '	<font style="color:#47C83E;font-size:14px;">가격정보</font>&nbsp;&nbsp;<font style="color:#FF0000;font-size:14px;text-decoration:line-through;">'+numberWithCommas(list.proPrice)+'</font><br/>';
					if(list.proDiscount != null && list.proPrice != null){
						productHtml += '	<font style="font-size:18px;color:#000000;font-weight:bold;">'+numberWithCommas((list.proPrice/100)*(100-list.proDiscount))+'원</font>';
						productHtml += '	<font style="font-size:13px;color:#C90000;font-weight:bold;">('+list.proDiscount+'% 할인가 적용)</font>';
						
					}else{
						productHtml += '	<font style="font-size:13px;color:#C3C3C3;">상담문의</font>';
					}
					
					productHtml += '</td>';
					productHtml += '</tr>';
					productHtml += '<tr><td colspan="3" style="height:2px;border-bottom:1px solid #EAEAEA;"></td></tr>'
					checkCnt++;
				})
		
				if(checkCnt == 0){
					productHtml += '<tr>';
					productHtml += '<td style="font-size:14px;text-align:center;color:#BDBDBD;">현재 등록된 상품정보가 없습니다.</td>';
					productHtml += '</tr>';
				}
				
				$('.loader').toggleClass('loading');
				$('#comDetailMainImgDiv').empty();
				$('#comDetailMainImgDiv').html(mainImgHtml);
				
				$('#comDetailMainInfoDiv').empty();
				$('#comDetailMainInfoDiv').html(html);
				
				$('#ceoCommentTb').empty();
				$('#ceoCommentTb').html(ceoCommentHtml);
				
				$('#comProductTb').empty();
				$('#comProductTb').html(productHtml);
				
				getComInfo(data);
				location.href='#page6';
			}			
		})
	}
	
	function getProductDetail(proNo){
		$('.loader').toggleClass('loading');
		$.ajax({
			url : serverURL+'getProductDetail',
			data : {'proNo':proNo},
			type : 'post',
			dataType : 'json',
			success : function(data){
				setProDetail(data);
			}
		})	
	}
	
	/* 상품상세보기 */
	function setProDetail(data){
		//location.href='#page6';
		console.log(data);
		
		$('#orderProVal').val();
		$('#orderProVal').val(data.proNo);		
		
		var html = ''; //상품상세 - 상품메인정보
		var imgHtml = ''; //상품상세 - 메인이미지
		var imgListHtml = ''; //기타 이미지 목록
		var commentHtml = ''; //상품상세 - 상품코멘트
		
		if(data.proSumnail != null || data.proSumnail != ''){
			imgHtml += '<img src="resources/files/product/'+data.proSumnail+'" style="width:100%;height:250px;"/>';
		}
		
		html += '<table style="width:100%;background-color:#FFFFFF;padding:2%;">';
		html += '	<tr>';
		html += '		<td colspan="2" style="color:#002266;font-size:25px;font-weight:bold;text-align:center;border-bottom:1px solid #ddd;padding-top:8px;padding-bottom:8px;">'+data.proName+'</td>';
		html += '	</tr>';
		html += '	<tr>';
		html += '		<td style="color:#002266;font-size:14px;width:30%;">가격</td>';		
		html += '		<td style="color:#000000;font-size:18px;font-weight:bold;"><font style="color:#FF0000;font-size:14px;text-decoration:line-through;">'+numberWithCommas(data.proPrice)+' >></font>&nbsp;&nbsp;'+numberWithCommas((data.proPrice/100)*(100-data.proDiscount))+'원</td>';
		html += '	</tr>';
		html += '	<tr>';
		html += '		<td style="color:#002266;font-size:14px;">할인적용</td>';		
		html += '		<td style="color:#000000;font-size:14px;font-weight:bold;">'+data.proDiscount+'% 할인적용</td>';
		html += '	</tr>';
		html += '	<tr>';
		html += '		<td colspan="2" style="color:#002266;font-size:14px;font-weight:bold;">';
		html += '			<font style="border:1px solid #ddd;font-size:12px;color:#CC3D3D;padding:2px;">할인특가</font>&nbsp;&nbsp;&nbsp;';
		html += '			<font style="border:1px solid #ddd;font-size:12px;color:#476600;padding:2px;">쇼방가맹점</font>&nbsp;&nbsp;&nbsp;';
		html += '		</td>';		
		html += '	</tr>';
		html += '</table>';
		
		commentHtml += '<tr>';
		commentHtml += '<td>'+data.proComment+'</td>';
		commentHtml += '</tr>';
		
		var checkCnt = 0;
		$.each(data.imgList, function(i, list){
			imgListHtml += '<tr>';
			imgListHtml += '<td>';
			imgListHtml += '<img src="resources/files/sumnail/'+list.imgFileName+'" style="width:100%;height:250px;"/>';
			imgListHtml += '</td>';
			imgListHtml += '</tr>';
			checkCnt++;
		});
		
		if(checkCnt == 0){
			imgListHtml += '<tr>';
			imgListHtml += '<td style="font-size:14px;text-align:center;color:#BDBDBD;">현재 등록된 상품이미지가 없습니다.</td>';
			imgListHtml += '</tr>';
		}
		
		$('.loader').toggleClass('loading');
		$('#proDetailMainImgDiv').empty();
		$('#proDetailMainImgDiv').html(imgHtml);
		
		$('#proDetailMainInfoDiv').empty();
		$('#proDetailMainInfoDiv').html(html);
		
		$('#proCommentTb').empty();
		$('#proCommentTb').html(commentHtml);
		
		$('#proImgTb').empty();
		$('#proImgTb').html(imgListHtml);
		
		location.href='#page9';
	}			
		
	
	/* 컴마찍기 */
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	/* 업체정보 */
	function getComInfo(data){
		console.log(data);
		var html = ''; //업체정보
		var payHtml = '';//결제정보
		var comHtml = ''; //사업자정보
		var comIntroHtml = ''; //회사소개
		var comAsHtml = ''; //As정보
		
		html += '<tr>';
		html += '	<td style="font-size:14px;width:30%;">영업시간</td>';
		html += '	<td style="font-size:14px;font-weight:bold;color:#000000;">09:00 ~ 18:00</td>';
		html += '</tr>';
		html += '<tr>';
		html += '	<td style="font-size:14px;width:30%;">전화번호</td>';
		html += '	<td style="font-size:14px;font-weight:bold;color:#000000;">'+data.comTel+'</td>';
		html += '</tr>';
		
		payHtml += '<tr>';
		payHtml += '	<td style="font-size:14px;width:30%;">최소주문금액</td>';
		payHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;">10,000원</td>';
		payHtml += '</tr>';
		payHtml += '<tr>';
		payHtml += '	<td style="font-size:14px;width:30%;">결제방식</td>';
		payHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;">'+data.comPayInfo+'</td>';
		payHtml += '</tr>';
		
		comHtml += '<tr>';
		comHtml += '	<td style="font-size:14px;width:30%;">사업자명</td>';
		comHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;">'+data.comName+'</td>';
		comHtml += '</tr>';
		comHtml += '<tr>';
		comHtml += '	<td style="font-size:14px;width:30%;">사업자번호</td>';
		comHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;">'+data.comRrn+'</td>';
		comHtml += '</tr>';
		comHtml += '<tr>';
		comHtml += '	<td style="font-size:14px;width:30%;">소재지</td>';
		comHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;">'+data.comAddress+'</td>';
		comHtml += '</tr>';
		
		comIntroHtml += '<tr>';
		comIntroHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;"><pre>'+data.comInfo+'</pre></td>';
		comIntroHtml += '</tr>';
		
		if(data.comAsImg != null && data.comAsImg != ''){
			comAsHtml += '<tr>';
			comAsHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;"><img src="resources/files/as/'+data.comAsImg+'" style="width:100%;height:500px;"/></td>';
			comAsHtml += '</tr>';
		}
		comAsHtml += '<tr>';
		comAsHtml += '	<td style="font-size:14px;font-weight:bold;color:#000000;"><pre>'+data.comAs+'</pre></td>';
		comAsHtml += '</tr>';
		
		
		$('#comIntroDetailTb').empty();
		$('#comIntroDetailTb').html(comIntroHtml);
		
		$('#comInfoDetailTb').empty();
		$('#comInfoDetailTb').html(html);
		
		$('#comPayInfoDetailTb').empty();
		$('#comPayInfoDetailTb').html(payHtml);
		
		$('#comCeoDetailTb').empty();
		$('#comCeoDetailTb').html(comHtml);
		
		$('#comAsDetailTb').empty();
		$('#comAsDetailTb').html(comAsHtml);
	}
	
	function snsShare(type){
		if(type == 1){
			facebookShare();
		}else if(type == 3){
			kakaoLink();
		}else if(type == 4){
			bandShare();
		}
	}
	
	//상담전화, 문자
	function order(type){
		var tel = $('#orderTelVal').val();
		var proNo = $('#orderProVal').val();
		var hp = $('#orderHpVal').val();
		var customerNo = $('#loginUserNo').val();
		
		if(proNo == '' || proNo == null){
			proNo = 0;
		}
		
		var html = '';
		console.log('업체확인 : '+tel+', '+proNo)
		if(type == 1){
			if(tel != null && tel != ''){
				if(confirm('담당자와 상담연결을 하시겠습니까?')){
					document.location.href = 'tel:'+tel;
				}
			}
		}else if(type == 2){
			html += '<form id="inquireForm" method="post">';
			html += '	<input type="hidden" name="proNo" value="'+proNo+'"/>';
			html += '	<input type="hidden" name="orderHp" value="'+hp+'"/>';
			html += '	<input type="hidden" name="customerNo" value="'+customerNo+'"/>';
			html += '	<table style="width:100%;text-align:center;padding:2%;border:1px solid #F2CB61">';
			html += '		<tr>';
			html += '			<td style="color:#003399;font-weight:bold;font-size:14px;width:100%;">';
			html += '				* 해당업체/상품에 관하여 문의사항을 남겨주세요';
			html += '			</td>';
			html += '		</tr>';
			html += '		<tr>';
			html += '			<td>';
			html += '				<textarea rows="15" cols="100" style="width:100%;" name="inqText" id="inqText"></textarea>';
			html += '			</td>';
			html += '		</tr>';
			html += '		<tr>';
			html += '			<td style="text-align:right;">';
			html += '				<button type="button" onclick="addInquire();" style="width:30%;height:26px;font-size:15px;background-color:#22741C;color:#ffffff;">등록하기</button>';
			html += '			</td>';
			html += '		</tr>';
			html += '	</table>';
			html += '</form>';
			
			inquirePopUp(html);
		}
	}
	
	/* 문자상담 팝업창 */
	function inquirePopUp(txt){
	    modal({
	        type: 'success',
	        title: '문자신청/문의',
	        text: txt,
	        buttons: [{
	    		text: '닫기', //Button Text
	    		val: 'close', //Button Value
	    		eKey: true, //Enter Keypress
	    		addClass: 'btn-light-blue', //Button Classes (btn-large | btn-small | btn-green | btn-light-green | btn-purple | btn-orange | btn-pink | btn-turquoise | btn-blue | btn-light-blue | btn-light-red | btn-red | btn-yellow | btn-white | btn-black | btn-rounded | btn-circle | btn-square | btn-disabled)
	    		onClick: function(dialog) {
	    			return true;
	    		}
	    	}]
	    });
	}
	
	function addInquire(){
		//alert('문자푸시를 이용한 쌍방 발송 구현');
		var inquireText = $('#inqText').val();
		if(inquireText == null || inquireText == ''){
			alert('문의하실 내용을 입력해주세요');
			return;
		}
		
		console.log($('#inquireForm').serialize());
		//서버로 보내고 처리하는 로직 구현방법 미정(문자/푸시/DB저장 등)
		$.ajax({
			url : serverURL+'addInquire',
			data : $('#inquireForm').serialize(),  
			dataType : 'json',
			type : 'post',
			success : function(data){
				if(data.result == 'succ'){
					alert('문의하신 내용의 접수가 완료되었습니다');
					return;
				}else{
					alert('내용등록에 실패하였습니다\n같은 문제가 지속될 경우 고객센터 063-229-3435로 연락주세요');
					return;
				}
			}
		})
	}
	
	/* 카카오톡 공유하기 */
	function kakaoLink(){
		// 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
		Kakao.Link.sendDefault({
			objectType: 'feed',
			content: {
				title: '쇼방',
				description: '#공동구매 #입주의모든것 #부동산 #부동산 정보',
				imageUrl: 'http://jbshow.kr/showBang/resources/files/ad/kakaotestad1.PNG',
				link: {
					mobileWebUrl: 'http://jbshow.kr/showBang/',
					webUrl: 'http://jbshow.kr/showBang/'
				}
			},
			social: {
				likeCount: 10000,
				commentCount: 45,
				sharedCount: 10000
			},
			buttons: [
				{
					title: '웹으로 보기',
					link: {
						mobileWebUrl: 'http://jbshow.kr/showBang/',
						webUrl: 'http://jbshow.kr/showBang/'
					}
				},
				{
					title: '앱으로 보기',
					link: {
						mobileWebUrl: 'http://jbshow.kr/showBang/',
						webUrl: 'http://jbshow.kr/showBang/'
					}
				}
			]
		});
	}
	
	/* 페이스북 공유하기 */
	function facebookShare(){
		window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent('http://jbshow.kr/showBang'),'facebook-share-dialog','width=600,height=400'); 
		return false;
	}
	
	/* 밴드공유하기 */
	function bandShare(){
		window.open('http://band.us/plugin/share?body='+encodeURI('http://jbshow.kr/showBang'),'width=600, height=600');
		return false;
	}
	
	/* 광고 및 업체 등록문의 */
	function adOrder(type){
		var value = "adOrder";
		var html = '';
		html += '<form id="adOrderForm" method="post">';
		html += '<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">';
		html += '	<tr>';
		html += '		<td	style="width:100%;">';
		if(type == 1){
			html += '			<input type="radio" name="adType" value="1" checked/>플러스 업체';
			html += '			<input type="radio" name="adType" value="2" />일반업체등록';
		}else if(type == 2){
			html += '			<input type="radio" name="adType" value="1" />플러스 업체';
			html += '			<input type="radio" name="adType" value="2" checked/>일반업체등록';
		}
		html += '		</td>';
		html += '	</tr>';
		html += '	<tr><td style="height:10px;"></td></tr>';
		html += '	<tr>';
		html += '		<td>';
		html += '			<font style="font-weight:bold;color:#000000;">&nbsp;*업체번호</font><br/>';
		html += '			<input type="number" name="callbackHp" id="callbackHp" placeholder="회신받을 전화번호를 입력 (-빼고 숫자만 입력)" style="width:100%;height:30px;"/>';
		html += '		</td>';
		html += '	</tr>';
		html += '	<tr><td style="height:30px;"></td></tr>';
		html += '	<tr>';
		html += '		<td style="text-align:right;">';
		html += '			<button type="button" style="height:30px;" onclick="adOrderSms('+value+')">업체등록상담신청</button>';
		html += '		</td>';
		html += '	</tr>';
		html += '</table>';
		html += '</form>';
		
		adOrderPopUp(html);
	}
	
	/* 광고신청문의 문자 */
	function adOrderSms(value){
		var formData = "";
		var adType = "";
		if(value == 'adOrder'){
			adType = $('input:radio[name="adType"]:checked').val();
			if(adType == undefined){
				alert('플러스/일반 등록 옵션을 선택하세요');
				return;
			}
			
			var callbackHp = $('#callbackHp').val();
			console.log(callbackHp);
			if(callbackHp == null || callbackHp == '' || callbackHp == undefined){
				alert('회신받을 핸드폰 번호를 입력하세요. \n주의 : "-" 빼고 숫자만 입력하셔야 됩니다');
				return;
			}else{
				callbackHp.replaceAll('-','');
				callbackHp = callbackHp.trim();
				$('#callbackHp').val(callbackHp);
			}
			
			formData = $('#adOrderForm').serialize();
		}else{
			var brokerName = $('#brokerName').val();
			var brokerHp = $('#brokerHp').val();
			
			if(brokerName == '' || brokerName == null || brokerName == undefined){
				alert('업체명 또는 대표자 이름을 입력하세요');
				return;
			}
			
			if(brokerHp == '' || brokerHp == null || brokerHp == undefined){
				alert('회신받을 휴대폰번호를 입력하세요');
				return;
			}
			
			formData = $('#askBrokerForm').serialize();
		}
		
		
		//console.log($('#adOrderForm').serialize());
		$.ajax({
			url : serverURL + 'adOrderSms',
			data : formData,
			dataType : 'json',
			type : 'post',
			success : function(data){
				if(data.result == 'succ'){
					modal({text:'신청이 완료되었습니다'});
				}else{
					modal({text:'상담신청에 실패하였습니다<br/>해당문제가 지속될 경우 고객센터 063-229-3435로 연락바랍니다.'});					
				}
				
			}
		})
	}
	
	/* 광고신청 팝업창 */
	function adOrderPopUp(txt){
	    modal({
	        type: 'success',
	        title: '플러스업체/일반업체 신청',
	        text: txt,
	        buttons: [{
	    		text: '닫기', //Button Text
	    		val: 'close', //Button Value
	    		eKey: true, //Enter Keypress
	    		addClass: 'btn-light-blue', //Button Classes (btn-large | btn-small | btn-green | btn-light-green | btn-purple | btn-orange | btn-pink | btn-turquoise | btn-blue | btn-light-blue | btn-light-red | btn-red | btn-yellow | btn-white | btn-black | btn-rounded | btn-circle | btn-square | btn-disabled)
	    		onClick: function(dialog) {
	    			return true;
	    		}
	    	}]
	    });
	}
	
	/* replaceAll */
	String.prototype.replaceAll = function(org, dest) {
	    return this.split(org).join(dest);
	}
	
	/* 방 구하는 글 조회 */
  	function getMemulBoradList(curPage){
  		$('.loader').toggleClass('loading');
		
  		$.ajax({
  			url : serverURL + 'getMemulBoradList',
  			dataType : 'json',
  			type : 'post',
  			data : {'curPage':curPage},
  			success : function(data){
  				var html = '';
  				html += '	<tr><td><input type="hidden" id="memulBoardCurPage" value="'+curPage+'"/></td></tr>';
  				html += '	<tr>';
  				html += '		<td style="width:65%;border:1px solid #6B8A24;text-align:center;font-weight:bold;">제목</td>';
  				html += '		<td style="width:20%;text-align:center;border:1px solid #6B8A24;font-weight:bold;">등록일</td>';
  				html += '		<td style="width:15%;text-align:center;border:1px solid #6B8A24;font-weight:bold;">조회수</td>';
  				html += '	</tr>'
  				if(data.length == 0){
  					html += '<tr><td colspan="3" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						html += '<tr>';
  						if(data.boardTitle.length > 10){
  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle.substring(0,10)+'..</td>';
  						}else{
  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle+'</td>';
  						}  					
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.regDate.substring(5,10)+'</td>';
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.selCnt+'</td>';
  	  					html += '</tr>';
  					})
  					//if(data.length > 9){
  						html += '<tr>';
  	  					html += '	<td colspan="3" style="text-align:center;">';
  	  					html += '		<font onclick="getMemulBoradList('+(curPage-1)+')" style="padding:2px;font-weight:bold;"> ◀ 이전 </font>&nbsp;&nbsp;&nbsp;&nbsp;';
  	  					html += '		<font onclick="getMemulBoradList('+(curPage+1)+')" style="padding:2px;font-weight:bold;"> 다음 ▶ </font>';
  	  					html += '	</td>';
  	  					html += '</tr>';
  					//} 					
  				}
  				
  				$('.loader').toggleClass('loading');
  				
  				$('#memulListTb').empty();
  				$('#memulListTb').html(html);
  				$('#memulListTb').slideDown();
  			}
  		})
  	}
	
	//부동산 게시글 자세히 보기
	function boardDetail(boardNo){
		if(userRank == 'broker'){
			//책임중개사만 열람가능
		}else{
			var html = '';
			html += '<br/><br/>';
			html += '<div style="width:100%;padding 3%;font-weight:bold;font-size:20px;">';
			html += '	쇼방에 등록된 책임중개사만 열람이 가능합니다.';
			html += '</div><br/><br/>';
			
			alertPop(html);
		}
	}
	
	function alertPop(txt){
	    modal({
	        type: 'info',
	        title: '알림',
	        text: txt,
	        buttons: [{
	    		text: '닫기', //Button Text
	    		val: 'close', //Button Value
	    		eKey: true, //Enter Keypress
	    		addClass: 'btn-light-blue', //Button Classes (btn-large | btn-small | btn-green | btn-light-green | btn-purple | btn-orange | btn-pink | btn-turquoise | btn-blue | btn-light-blue | btn-light-red | btn-red | btn-yellow | btn-white | btn-black | btn-rounded | btn-circle | btn-square | btn-disabled)
	    		onClick: function(dialog) {
	    			return true;
	    		}
	    	}]
	    });
	}
	
	/* 책임중개사 등록문의 */
	function askBrokerPop(){
		var html = '';
		html += '<form id="askBrokerForm" method="post">';
		html += '<input type="hidden" name="adType" value="3"/>';
		html += '<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">';
		html += '	<tr><td style="height:10px;"></td></tr>';
		html += '	<tr>';
		html += '		<td>';
		html += '			<font style="font-weight:bold;color:#000000;">&nbsp;*상호</font><br/>';
		html += '			<input type="text" name="brokerName" id="brokerName" placeholder="업체상호 혹은 대표자 이름" style="width:100%;height:30px;"/>';
		html += '		</td>';
		html += '	</tr>';
		html += '	<tr><td style="height:10px;"></td></tr>';
		html += '	<tr>';
		html += '		<td>';
		html += '			<font style="font-weight:bold;color:#000000;">&nbsp;*회신번호</font><br/>';
		html += '			<input type="number" name="brokerHp" id="brokerHp" placeholder="회신받을 전화번호를 입력 (-빼고 숫자만 입력)" style="width:100%;height:30px;"/>';
		html += '		</td>';
		html += '	</tr>';
		/* html += '	<tr><td style="height:10px;"></td></tr>';
		html += '	<tr>';
		html += '		<td>';
		html += '			<font style="font-weight:bold;color:#000000;">&nbsp;*위치</font>&nbsp;&nbsp;&nbsp;&nbsp;';
		html += '			<button type="button">주소찾기</button>';
		html += '		</td>';
		html += '	</tr>';
		html += '	<tr><td style="height:7px;"></td></tr>';
		html += '	<tr>';
		html += '		<td>';
		html += '			<input type="number" name="brokerAdd" id="brokerAdd" placeholder="주소" style="width:100%;height:30px;"/>';			
		html += '			<input type="number" name="brokerSangseAdd" id="brokerSangseAdd" placeholder="상세주소" style="width:100%;height:30px;"/>';
		html += '		</td>';
		html += '	</tr>'; */
		html += '	<tr><td style="height:30px;"></td></tr>';
		html += '	<tr>';
		html += '		<td style="text-align:right;">';
		html += '			<button type="button" style="height:30px;" onclick="adOrderSms()">책임중개사등록 상담신청</button>';
		html += '		</td>';
		html += '	</tr>';
		html += '</table>';
		html += '</form>';
		
		askBrokerPopUp(html);
	}
	
	/* 책임중개사신청 팝업창 */
	function askBrokerPopUp(txt){
	    modal({
	        type: 'success',
	        title: '책임중개사 신청문의',
	        text: txt,
	        buttons: [{
	    		text: '닫기', //Button Text
	    		val: 'close', //Button Value
	    		eKey: true, //Enter Keypress
	    		addClass: 'btn-light-blue', //Button Classes (btn-large | btn-small | btn-green | btn-light-green | btn-purple | btn-orange | btn-pink | btn-turquoise | btn-blue | btn-light-blue | btn-light-red | btn-red | btn-yellow | btn-white | btn-black | btn-rounded | btn-circle | btn-square | btn-disabled)
	    		onClick: function(dialog) {
	    			return true;
	    		}
	    	}]
	    });
	}
	
	/* 방구하기 등록 */
	function memulOrder(type){
		if(type == 1){
			location.href = '#page10';
		}else if(type == 2){
			location.href = '#page3';
		}
		
	}
	
	/* 내가사는동네 커뮤니티 입장 비번입력 팝업 */
	function goSecretCummunity(){
		var html = '';
		html += '<form id="askBrokerForm" method="post">';
		html += '<table style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">';
		html += '	<tr><td style="height:10px;"></td></tr>';
		html += '	<tr>';
		html += '		<td>';
		html += '			<font style="font-weight:bold;color:#000000;">&nbsp;*인증코드</font><br/>';
		html += '			<input type="password" name="secretCode" id="secretCode" placeholder="인증코드(힌트 : 지정이니셜+동호수)" style="width:100%;height:30px;"/>';
		html += '		</td>';
		html += '	</tr>';
		html += '	<tr><td style="height:30px;"></td></tr>';
		
		html += '	<tr>';
		html += '		<td style="text-align:right;">';
		html += '			<button type="button" style="height:30px;" onclick="goInSecretCummunity()">입장하기</button>';
		html += '		</td>';
		html += '	</tr>';
		html += '</table>';
		html += '</form>';
		
		goSecretCummunityPop(html);
	}
	
	/* 내가사는동네 비번 팝업창 */
	function goSecretCummunityPop(txt){
	    modal({
	        type: 'success',
	        title: '인증코드 입력',
	        text: txt,
	        buttons: [{
	    		text: '닫기', //Button Text
	    		val: 'close', //Button Value
	    		eKey: true, //Enter Keypress
	    		addClass: 'btn-light-blue', //Button Classes (btn-large | btn-small | btn-green | btn-light-green | btn-purple | btn-orange | btn-pink | btn-turquoise | btn-blue | btn-light-blue | btn-light-red | btn-red | btn-yellow | btn-white | btn-black | btn-rounded | btn-circle | btn-square | btn-disabled)
	    		onClick: function(dialog) {
	    			return true;
	    		}
	    	}]
	    });
	}
	
	/* 글쓰기 */
	function addCommunity(){
		alert('글쓰기 입력폼 으로 이동~!!');
	}
	
	/* 커뮤니티 글 조회 */
  	function getCommunityBoradList(curPage){
  		$('.loader').toggleClass('loading');
		
  		$.ajax({
  			url : serverURL + 'getCommunityBoradList',
  			dataType : 'json',
  			type : 'post',
  			data : {'curPage':curPage},
  			success : function(data){
  				var html = '';
  				html += '	<tr><td><input type="hidden" id="memulBoardCurPage" value="'+curPage+'"/></td></tr>';
  				html += '	<tr>';
  				html += '		<td style="width:65%;border:1px solid #6B8A24;text-align:center;font-weight:bold;">제목</td>';
  				html += '		<td style="width:20%;text-align:center;border:1px solid #6B8A24;font-weight:bold;">등록일</td>';
  				html += '		<td style="width:15%;text-align:center;border:1px solid #6B8A24;font-weight:bold;">조회수</td>';
  				html += '	</tr>'
  				if(data.length == 0){
  					html += '<tr><td colspan="3" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						html += '<tr>';
  						if(data.boardTitle.length > 10){
  							html += '	<td onclick="communityDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle.substring(0,10)+'..</td>';
  						}else{
  							html += '	<td onclick="communityDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="font-weight:bold;font-size:12px;">['+data.boardLocal+']</font> '+data.boardTitle+'</td>';
  						}  					
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.regDate.substring(5,10)+'</td>';
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.selCnt+'</td>';
  	  					html += '</tr>';
  					})
  					//if(data.length > 9){
  						html += '<tr>';
  	  					html += '	<td colspan="3" style="text-align:center;">';
  	  					html += '		<font onclick="getCommunityBoradList('+(curPage-1)+')" style="padding:2px;font-weight:bold;"> ◀ 이전 </font>&nbsp;&nbsp;&nbsp;&nbsp;';
  	  					html += '		<font onclick="getCommunityBoradList('+(curPage+1)+')" style="padding:2px;font-weight:bold;"> 다음 ▶ </font>';
  	  					html += '	</td>';
  	  					html += '</tr>';
  					//} 					
  				}
  				
  				$('.loader').toggleClass('loading');
  				
  				$('#cummunityListTb').empty();
  				$('#cummunityListTb').html(html);
  				$('#cummunityListTb').slideDown();
  			}
  		})
  	}
	
	//직접입력 고를때 이벤트처리(입력폼 보이기/감추기)
	function boardLocalChange(val){
		console.log('val : '+val);
		if(val == '직접입력'){
			$('#boardLocalDirectDiv').slideDown();
			$('#boardLocalDirect').focus();
		}else{
			$('#boardLocalDirectDiv').css('display','none');
		}
	}
	
	//부동산 방구하기 글 등록
	function addMemulBoard(){
		alert('글 서버 등록~!!');
		var boardTitle = $('#boardTitle').val();
		var boardBody = $('#boardBody').val();
		var boardLocal = $('#boardLocal').val();
		
		if(boardTitle == null || boardTitle == ''){
			alert('글 제목을 입력해주세요');
			return;
		}
		
		if(boardBody == null || boardBody == ''){
			alert('글 내용을 입력해주세요');
			return;
		}
		
		if(boardLocal == null || boardLocal == ''){
			alert('희망지역을 선택해주세요');
			return;
		}
		
		if(boardLocal == '직접입력'){
			boardLocal = $('#boardLocalDirect').val();
			if(boardLocal == null || boardLocal == ''){
				alert('희망지역을 입력해주세요.\n지역이 상관없으시다면 "전체"라고 입력해주세요');
				return;
			}
		}
		
		$('#writeUserNo').val($('#loginUserNo').val()); //작성자 세팅
		$.ajax({
			url : serverURL + 'addMemulBoard',
			dataType : 'json',
			type : 'post',
			data : $('#addMemulBoardForm').serialize(),
			success : function(data){
				//console.log('입력확인 : '+data.result);
				if(data.result == 'succ'){
					alert('글이 등록되었습니다');
					location.href='#page3';
				}else{
					alert('등록실패\n같은 문제가 지속될 경우 고객센터 063-229-3435로 문의바랍니다.');
					location.href='#page3';
				}
			}
		})
	}
	
	</script>
</head>
<body>
<div class="orderInfo">
	<input type="hidden" id="orderTelVal" value=""/>
	<input type="hidden" id="orderProVal" value=""/>
	<input type="hidden" id="orderHpVal" value=""/>
</div>

<div>
	<input type="hidden" id="loginUserNo" value="2"/>
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

<!-- 메인화면 -->
<section id="page1" data-role="page">
	
	<div class="content" data-role="content" style="width:100%;height:100%;text-align:center;">
		<br/><br/><br/><br/><br/><br/>
		<img src="resources/img/showbang.png"/>
		<br/><br/>
		<font style="font-size:30px;color:#F2CB61;font-weight:bold;">쇼</font><font style="font-size:30px;color:#0100FF;font-weight:bold;">방</font>
		<br/>
		<div style="height:10px;"></div>
		<font style="font-size:14px;color:#99004C;font-weight:bold;">입주의 모든것</font>
		<br/><br/><br/>
		
	</div>
	<!--하단배너 영역ed -->
</section>

<section id="page2" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">공동구매</font></a></li>
				<li><a href="#page3" data-transition="none"><font style="font-size:14px;color:#000000;">부동산</font></a></li>	
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<!-- 상단슬라이드 -->
		<div class="swiper-container" id="mAdContainer" style="width:100%;">
			<div class="swiper-wrapper" id="adWrapper">
				<div class="swiper-slide"><img src="resources/files/slide/topbanner1.PNG" style="width:100%;height:125px;"/></div>
				<div class="swiper-slide"><img src="resources/files/slide/topbanner2.PNG" style="width:100%;height:125px;"/></div>
			</div>
			<!-- If we need pagination -->
		    <div class="swiper-pagination"></div>
		</div>
		
		<!-- 공동구매 -->
		<div style="width:100%;height:1px;"></div>
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		
		<table style="width:100%;text-align:center;" id="mainMenuBtnGroup">
			
		</table>
		
		<!-- 중간광고베너 -->
		<div style="width:100%;height:1px;"></div>
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		<div style="width:100%;">
			<img src="resources/files/ad/middlebanner.PNG" style="width:100%;"/> 
		</div>
		<!-- <div style="width:100%;height:1px;"></div> -->
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		
		<!-- 부동산 원해요 -->
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">매물</font> 원해요</td>
					<td style="width:20%;font-weight:bold;font-size:13px;"><a href="#page3">더보기+</a></td>
				</tr>
			</table>
			
			<table id="mainMemulListTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		
		<!-- 최신게시글 -->
		<div style="padding:2%;width:100%;">
			<table style="width:100%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">최신글</font></td>
					<td style="width:20%;font-weight:bold;font-size:13px;"><a href="#page4">더보기+</a></td>
				</tr>
			</table>
		
		
			<table id="mainBoardListTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		
		<!-- 하단 -->
		<!-- <table style="width:100%;">
			<tr>
				<td rowspan="4" style="font-size:14px;font-weight:bold;text-align:center;border-right:3px solid #ddd;padding-right:2%;width:30%;">전북<br/>부동산박람회</td>
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
		</table> -->
		
		<div class="swiper-container" id="fAdContainer" style="width:100%;">
			<div class="swiper-wrapper" id="fAdWrapper">
				<div class="swiper-slide"><img src="resources/files/ad/footbanner1.PNG" style="width:100%;height:125px;"/></div>
				<div class="swiper-slide"><img src="resources/files/ad/footbanner2.PNG" style="width:100%;height:125px;"/></div>
			</div>
			<!-- If we need pagination -->
		    <div class="swiper-pagination"></div>
		</div>
	</div>
	
</section>

<!-- 부동산 : 목록 -->
<section id="page3" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page2" data-transition="none"><font style="font-size:14px;color:#000000;">공동구매</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">부동산</font></a></li>	
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		<!-- 상단슬라이드 -->
		<div class="swiper-container" id="bAdContainer" style="width:100%;">
			<div class="swiper-wrapper" id="adWrapper">
				<div class="swiper-slide"><img src="resources/files/ad/debangad.PNG" style="width:100%;height:125px;"/></div>
				<div class="swiper-slide"><img src="resources/files/ad/utopad.PNG" style="width:100%;height:125px;"/></div>
			</div>
			<!-- If we need pagination -->
		    <div class="swiper-pagination"></div>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#476600">집</font> 구합니다</td>
					<td onclick="askBrokerPop();" style="width:35%;font-weight:bold;font-size:13px;"><a>책임중개사 문의+</a></td>
				</tr>
			</table>
			
			<table id="memulListTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table style="width:100%;">
			<tr>
				<td onclick="memulOrder(1)" style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">방 구하기 등록</td>
			</tr>
		</table>
	</div>
</section>

<!-- 커뮤니티 -->
<section id="page4" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page2" data-transition="none"><font style="font-size:14px;color:#000000;">공동구매</font></a></li>
				<li><a href="#page3" data-transition="none"><font style="font-size:14px;color:#000000;">부동산</font></a></li>	
				<li><a href="#page4" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<!-- 상단슬라이드 -->
		<div class="swiper-container" id="cAdContainer" style="width:100%;">
			<div class="swiper-wrapper" id="adWrapper">
				<div class="swiper-slide"><img src="resources/files/ad/cummunityad.PNG" style="width:100%;height:125px;"/></div>
			</div>
			<!-- If we need pagination -->
		    <div class="swiper-pagination"></div>
		</div>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;게시글목록<font style="font-size:12px;"> (공개글)</font></td>
					<td style="width:35%;font-weight:bold;font-size:13px;text-align:right;"><a onclick="addCommunity()">글쓰기+</a></td>
				</tr>
			</table>
			
			<table id="cummunityListTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		
		<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
			<table style="width:100%;">
				<tr>
					<td onclick="goSecretCummunity()" style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">내가 사는동네 커뮤니티 입장하기 ▶</td>
				</tr>
			</table>
		</div>	
	</div>
	
</section>

<!-- 업종 별 리스트 -->
<section id="page5" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;border-bottom:1px solid #ddd;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page2" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">공동구매</font></a></li>
				<li><a href="#page3" data-transition="none"><font style="font-size:14px;color:#000000;">부동산</font></a></li>	
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">커뮤니티</font></a></li>
							
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		<table style="width:100%;">
			<tr>
				<td style="width:70%;font-size:14px;font-weight:bold;color:#000000;">
					<img src="resources/img/info.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;쇼방 플러스 업체&nbsp;&nbsp;&nbsp;&nbsp;<font style="border:1px solid #ddd;font-size:10px;color:#476600;">광고</font>
				</td>
				<td onclick="adOrder(1)" style="font-size:12px;color:#476600;text-align:right;">광고문의+&nbsp;</td>
			</tr>
		</table>
		
		<div style="width:100%;padding-left:2%;padding-right:2%;" id="companyPlusListDiv">
		
		</div>
		<br/>
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		
		<table style="width:100%;">
			<tr>
				<td style="width:70%;font-size:14px;font-weight:bold;color:#000000;">
					<img src="resources/img/info.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;쇼방 등록 업체
				</td>
				<td onclick="adOrder(2)" style="font-size:12px;color:#476600;text-align:right;">업체등록문의+&nbsp;</td>
			</tr>
		</table>
		
		<div style="width:100%;padding-left:2%;padding-right:2%;" id="companyListDiv">
		
		</div>
	</div>
	
</section>

<!-- 업체 상품정보 -->
<section id="page6" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;border-bottom:1px solid #ddd;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">상품정보</font></a></li>
				<li><a href="#page7" data-transition="none"><font style="font-size:14px;color:#000000;">업체정보</font></a></li>	
				<li><a href="#page8" data-transition="none"><font style="font-size:14px;color:#000000;">SNS공유</font></a></li>
							
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;">
			<div style="width:100%;padding:3%;" id="comDetailMainImgDiv">
				
			</div>
			
			<div style="width:100%;padding-left:12%;padding-right:12%;padding-top:7px;padding-bottom:10px;" id="comDetailMainInfoDiv">
				
			</div>			
		</div>
		
		<div style="width:100%;background-color:#BDBDBD;height:6px;"></div>
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/notice.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">사장님알림</font></td>
				</tr>
			</table>
			
			<table id="ceoCommentTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#000000">상품/시공 정보</font></td>
				</tr>
			</table>
			
			<table id="comProductTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table style="width:100%;">
			<tr>
				<td onclick="order(1)" style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">전화신청</td>
				<td onclick="order(2)" style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">견적문의</td>
			</tr>
		</table>
	</div>
</section>

<!-- 업체 상세정보 -->
<section id="page7" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;border-bottom:1px solid #ddd;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page6" data-transition="none"><font style="font-size:14px;color:#000000;">상품정보</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">업체정보</font></a></li>	
				<li><a href="#page8" data-transition="none"><font style="font-size:14px;color:#000000;">SNS공유</font></a></li>						
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/info.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">회사소개</font></td>
				</tr>
			</table>
			
			<table id="comIntroDetailTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/info.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">업체정보</font></td>
				</tr>
			</table>
			
			<table id="comInfoDetailTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/info.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">결제정보</font></td>
				</tr>
			</table>
			
			<table id="comPayInfoDetailTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/info.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">사업자정보</font></td>
				</tr>
			</table>
			
			<table id="comCeoDetailTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/info.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">A/S</font></td>
				</tr>
			</table>
			
			<table id="comAsDetailTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				<tr>
					<td style="font-size:14px;width:100%;text-align:center;">등록된 A/S정보가 없습니다.</td>
				</tr>
			</table>
		</div>
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table style="width:100%;">
			<tr>
				<td onclick="order(1)" style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">전화신청</td>
				<td onclick="order(2)" style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">견적문의</td>
			</tr>
		</table>
	</div>
</section>

<!-- SNS공유 -->
<section id="page8" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;border-bottom:1px solid #ddd;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page6" data-transition="none"><font style="font-size:14px;color:#000000;">상품정보</font></a></li>
				<li><a href="#page7" data-transition="none"><font style="font-size:14px;color:#000000;">업체정보</font></a></li>	
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">SNS공유</font></a></li>
							
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<table style="width:100%;padding:2%;color:#000000;">
			<tr>
				<td>해당 업체정보를 <font style="color:#003399;font-weight:bold;">facebook</font>으로 공유</td>
				<td style="width:25%;"><img onclick="snsShare(1);" src="resources/img/facebook.png" style="width:80px;height:80px;"/></td>
			</tr>
		</table>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<table style="width:100%;padding:2%;">
			<tr>
				<td>해당 업체정보를 <font style="color:#CCA63D;font-weight:bold;">카카오톡</font>으로 공유</td>
				<td style="width:25%;"><img onclick="snsShare(3);" src="resources/img/kakao.png" style="width:80px;height:80px;"/></td>
			</tr>
		</table>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<table style="width:100%;padding:2%;">
			<tr>
				<td>해당 업체정보를 <font style="color:#476600;font-weight:bold;">NAVER밴드</font>로 공유</td>
				<td style="width:25%;"><img onclick="snsShare(4);" src="resources/img/band.jpg" style="width:80px;height:80px;"/></td>
			</tr>
		</table>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
	</div>
	
	<!-- <div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table style="width:100%;">
			<tr>
				<td style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">전화걸기</td>
				<td style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">상담신청</td>
			</tr>
		</table>
	</div> -->
</section>

<!-- 업체 상품정보 -->
<section id="page9" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;border-bottom:1px solid #ddd;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">상품정보</font></a></li>
				<li><a href="#page7" data-transition="none"><font style="font-size:14px;color:#000000;">업체정보</font></a></li>	
				<li><a href="#page8" data-transition="none"><font style="font-size:14px;color:#000000;">SNS공유</font></a></li>
							
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;">
			<div style="width:100%;padding:3%;" id="proDetailMainImgDiv">
				
			</div>
			
			<div style="width:100%;padding-left:12%;padding-right:12%;padding-top:7px;padding-bottom:10px;" id="proDetailMainInfoDiv">
				
			</div>			
		</div>
		
		<div style="width:100%;background-color:#BDBDBD;height:6px;"></div>
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/notice.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">상품상세설명</font></td>
				</tr>
			</table>
			
			<table id="proCommentTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		
		<div style="width:100%;padding:2%;" >
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/list.PNG" style="width:18px;height:18px;"/>&nbsp;&nbsp;<font style="color:#000000">상품 이미지 상세</font></td>
				</tr>
			</table>
			
			<table id="proImgTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table style="width:100%;">
			<tr>
				<td onclick="order(1)" style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">전화신청</td>
				<td onclick="order(2)" style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">견적문의</td>
			</tr>
		</table>
	</div>
</section>


<!-- 부동산 : 집구하기 등록 -->
<section id="page10" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;" onclick="javascript:location.href='#page2'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#page2" data-transition="none"><font style="font-size:14px;color:#000000;">공동구매</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:14px;">부동산</font></a></li>	
				<li><a href="#page4" data-transition="none"><font style="font-size:14px;color:#000000;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;background-color:#ddd;height:8px;"></div>
		<!-- 상단슬라이드 -->
		<!-- <div class="swiper-container" id="bAdContainer" style="width:100%;">
			<div class="swiper-wrapper" id="adWrapper">
				<div class="swiper-slide"><img src="resources/files/ad/debangad.PNG" style="width:100%;height:125px;"/></div>
				<div class="swiper-slide"><img src="resources/files/ad/utopad.PNG" style="width:100%;height:125px;"/></div>
			</div>
			If we need pagination
		    <div class="swiper-pagination"></div>
		</div> 
		
		<div style="width:100%;background-color:#ddd;height:8px;"></div>-->
		
		<div style="padding:2%;width:100%;">
			<table style="width:100%;" style="padding:2%;">
				<tr>
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/write.PNG" style="width:25px;height:25px;"/>&nbsp;&nbsp;<font style="font-size:18px;font-weight:bold;color:#000000;">등록</font></td>
					<td style="width:35%;font-weight:bold;font-size:14px;text-align:right;color:#0100FF;"><a onclick="wishMemulPop();" >상세설명보기 ▶</a></td>
				</tr>
			</table>
			
			<form id="addMemulBoardForm" method="post">	
				<input type="hidden" name="writeUserNo" id="writeUserNo"/>
				<table id="wishMemulFormTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
					<tr>
						<td class="mDetailTbTitle">제목</td>
						<td class="mDetailTbBody">
							<input type="text" name="boardTitle" id="boardTitle" placeholder="글 제목"/>
						</td>
					</tr>
					<tr>
						<td class="mDetailTbTitle">내용</td>
						<td class="mDetailTbBody">
							<textarea name="boardBody" id="boardBody" rows="20" cols="40" placeholder="상세내용"></textarea>
						</td>
					</tr>
					<tr>
						<td class="mDetailTbTitle">희망지역</td>
						<td class="mDetailTbBody">
							<select name="boardLocal" id="boardLocal" data-native-menu="false" style="text-align:center;" onchange="boardLocalChange(this.value);">
								<option>희망지역</option>
								<option value="에코시티">에코시티</option>
								<option value="만성지구">만성지구</option>
								<option value="효천지구">효천지구</option>
								<option value="혁신도시">혁신도시</option>
								<option value="신시가지">신시가지</option>
								<option value="직접입력">직접입력</option>
							</select>
							<div id="boardLocalDirectDiv" style="display:none;">
								<input type="text" name="boardLocalDirect" id="boardLocalDirect" placeholder="희망지역 입력"/>
							</div>
						</td>
					</tr>
					<tr>
						<td onclick="addMemulBoard();" colspan="2" style="height:30px;border:1px solid #003399;font-weight:bold;font-size:15px;text-align:center;color:#000000;">등록하기</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed">
		<table style="width:100%;">
			<tr>
				<td onclick="memulOrder(2)" style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">목록으로 돌아가기</td>
			</tr>
		</table>
	</div>
</section>
</body>
</html>