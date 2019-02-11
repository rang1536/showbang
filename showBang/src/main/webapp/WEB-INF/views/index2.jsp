<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JB쇼방-전북 부동산·공동구매의 모든 것</title>
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
	/* 서버URL */
	var serverURL = 'http://202.31.237.159:8080/www/';
	
	setTimeout(function(){
		location.href = '#page2';
	},1500);
	
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
			
			mySwiper = new Swiper('#fAdContainer', { //메인화면광고
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
  			data : {'boardLocal':local},
  			success : function(data){
  				var html = '';
  				
  				if(data.length == 0){
  					html += '<tr><td colspan="2" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						if(i <= 7){
  							html += '<tr>';
  	  						if(data.boardTitle.length > 15){
  	  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;">'+data.boardTitle.substring(0,15)+'..</td>';
  	  						}else{
  	  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;">'+data.boardTitle+'</td>';
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
  			data : {'boardLocal':local},
  			success : function(data){
  				var html = '';
  				
  				if(data.length == 0){
  					html += '<tr><td colspan="2" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						if(i <= 7){
  							html += '<tr>';
  	  						if(data.boardTitle.length > 15){
  	  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;">'+data.boardTitle.substring(0,15)+'..</td>';
  	  						}else{
  	  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;">'+data.boardTitle+'</td>';
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
					productHtml += '	<font style="color:#47C83E;font-size:14px;">가격정보</font><br/>';
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
				//location.href='#page6';
			}			
		})
		getProductDetail(1)
		location.href='#page6';
	}
	
	function getProductDetail(proNo){
		//$('.loader').toggleClass('loading');
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
	
	/* 업체상세보기 */
	function setProDetail(data){
		//location.href='#page6';
		console.log(data);
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
		html += '		<td style="color:#000000;font-size:18px;font-weight:bold;">'+numberWithCommas((data.proPrice/100)*(100-data.proDiscount))+'원</td>';
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
		
		//$('.loader').toggleClass('loading');
		$('#proDetailMainImgDiv').empty();
		$('#proDetailMainImgDiv').html(imgHtml);
		
		$('#proDetailMainInfoDiv').empty();
		$('#proDetailMainInfoDiv').html(html);
		
		$('#proCommentTb').empty();
		$('#proCommentTb').html(commentHtml);
		
		$('#proImgTb').empty();
		$('#proImgTb').html(imgListHtml);
		
		//location.href='#page9';
	}			
		
	
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	function getComInfo(data){
		console.log(data);
		var html = ''; //업체정보
		var payHtml = '';//결제정보
		var comHtml = ''; //사업자정보
		var comIntroHtml = ''; //회사소개
		
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
		
		$('#comInfoDetailTb').empty();
		$('#comInfoDetailTb').html(html);
		
		$('#comPayInfoDetailTb').empty();
		$('#comPayInfoDetailTb').html(payHtml);
		
		$('#comCeoDetailTb').empty();
		$('#comCeoDetailTb').html(comHtml);
		
		$('#comIntroDetailTb').empty();
		$('#comIntroDetailTb').html(comIntroHtml);
	}
	
	function snsShare(type){
		if(type == 1){
			alert('facebook공유!')
		}else if(type == 2){
			alert('인스타그램 공유!')
		}else if(type == 3){
			alert('카카오톡 공유!')
		}else if(type == 4){
			alert('NAVER밴드에 공유!')
		}
	}
	</script>
</head>
<body>
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
					<td style="width:20%;font-weight:bold;font-size:13px;"><a>더보기+</a></td>
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
					<td style="width:20%;font-weight:bold;font-size:13px;"><a>더보기+</a></td>
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
		
	</div>
	
</section>

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
				<td style="font-size:12px;color:#476600;text-align:right;">광고문의+&nbsp;</td>
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
				<td style="font-size:12px;color:#476600;text-align:right;">업체등록문의+&nbsp;</td>
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
					<td style="color:#000000;font-weight:bold;font-size:15px;"><img src="resources/img/info.PNG" style="width:20px;height:20px;"/>&nbsp;&nbsp;<font style="color:#000000">회사소개</font></td>
				</tr>
			</table>
			
			<table id="comIntroDetailTb" style="padding:2%;width:100%;font-size:14px;border:1px solid #F2CB61">
				
			</table>
		</div>
		
		<!-- sns -->
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<table style="width:100%;padding:2%;color:#000000;">
			<tr>
				<td>해당 업체정보를 <font style="color:#003399;font-weight:bold;">facebook</font>으로 공유</td>
				<td style="width:25%;"><img onclick="snsShare(1);" src="resources/img/facebook.png" style="width:100px;height:100px;"/></td>
			</tr>
		</table>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<table style="width:100%;padding:2%;">
			<tr>
				<td>해당 업체정보를 <font style="color:#99004C;font-weight:bold;">인스타그램</font>으로 공유</td>
				<td style="width:25%;"><img onclick="snsShare(2);" src="resources/img/instar.PNG" style="width:100px;height:100px;"/></td>
			</tr>
		</table>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<table style="width:100%;padding:2%;">
			<tr>
				<td>해당 업체정보를 <font style="color:#CCA63D;font-weight:bold;">카카오톡</font>으로 공유</td>
				<td style="width:25%;"><img onclick="snsShare(3);" src="resources/img/kakao.png" style="width:100px;height:100px;"/></td>
			</tr>
		</table>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
		<table style="width:100%;padding:2%;">
			<tr>
				<td>해당 업체정보를 <font style="color:#476600;font-weight:bold;">NAVER밴드</font>로 공유</td>
				<td style="width:25%;"><img onclick="snsShare(4);" src="resources/img/band.jpg" style="width:100px;height:100px;"/></td>
			</tr>
		</table>
		
		<div style="width:100%;background-color:#ddd;height:6px;"></div>
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed" onclick="footerBanner();">
		<table style="width:100%;">
			<tr>
				<td style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">전화걸기</td>
				<td style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">상담신청</td>
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
		
	</div>
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed" onclick="footerBanner();">
		<table style="width:100%;">
			<tr>
				<td style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">전화걸기</td>
				<td style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">상담신청</td>
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
		
	</div>
	
	<!-- <div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed" onclick="footerBanner();">
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
	
	<div style="overflow: hidden;" data-role="footer" data-tap-toggle="false" data-position="fixed" onclick="footerBanner();">
		<table style="width:100%;">
			<tr>
				<td style="width:50%;background-color:#F2CB61;color:#002266;height:33px;text-align:center;font-size:16px;">전화걸기</td>
				<td style="width:50%;background-color:#22741C;color:#ffffff;height:33px;text-align:center;font-size:16px;">상담신청</td>
			</tr>
		</table>
	</div>
</section>
</body>
</html>