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
	/* 사진업로드 확인 변수 */
	var img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12;
	img1 =img2 =img3 =img4 =img5 =img6 =img7 =img8 =img9 =img10 =img11 =img12 = 'noImg';
	
	/* 로그인 체크 */
	var loginCheck = localStorage.getItem('loginCheck');
	var autoLogin = localStorage.getItem('autoLogin');
	var userNo = localStorage.getItem('userNo');
	
	console.log(loginCheck+', '+autoLogin+', '+userNo);
	
	/* 서버URL */
	var serverURL = 'http://202.31.237.159:8080/www/';
	var IMGURL = 'resources/files/mImg/';
	
	
	/* 회원정보 */
	var userData = '';
	
	$(document).ready(function(){		
		if(userNo != null && userNo != ''){
			var data = getUserInfo(userNo);
			var html = '<div style="font-size:14px;background-color:#FFFFE4;"><br/><font style="font-weight:bold;color:#4641D9;">'+data.userName+'</font>'
			if(data.userType == 1) html += '(책임중개사)';
			if(data.userType == 2) html += '(공인중개사)';
			html +=' 님<br/><br/>';
			html += '반갑습니다.</div>';
			
			$('#privercyInfo').empty();
			$('#privercyInfo').html(html);
			//console.log('개인정보?'+html)
			
			
		}
		
		/* 광고슬라이드 */
		/* var mySwiper = new Swiper('#mAdContainer', { //메인화면광고
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
	    }) */
		
		var mySwiper2 = new Swiper('#adContainer', { //사이드메뉴광고
			// Optional parameters
			direction: 'horizontal',
			speed:400,
			autoplay:{
				delay:2000,
				disableOnInteraction:false
			},
			pagination: {
				el: '.swiper-pagination',
				type: 'bullets',
			},
			loop: true
	    })		
		
		setTimeout(function(){
			location.href = '#page100';
		},1500) 
		
		$('#page100').bind('pageshow',function(event, ui){
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
			/* console.log('??1')
			$('#tvAd').prop('autoplay','yes'); */
			slideMenuOpenNClose(2);	
		})
		
		/* 메인페이지 이벤트 */
		$('#page1').bind('pageshow',function(event, ui){
			
			
		})
		
		/* 지역선택창 이벤트 */
		$('#page2').bind('pageshow',function(event, ui){
			var mySwiper3 = new Swiper('#localAd', { //지역선택메뉴광고
				// Optional parameters
				direction: 'horizontal',
				speed:400,
				autoplay:{
					delay:2000,
					disableOnInteraction:false
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'bullets',
				},
				loop: true
		    })
			//console.log('^^')
		})
		
		/* 매물등록 */
		$('#page3').bind('pageshow',function(event, ui){
			setMemulList();
		})
		
		/* 매물등록 */
		$('#page4').bind('pageshow',function(event, ui){
			
		})
		
		$('#page5').bind('pageshow',function(event, ui){
			var mySwiper4 = new Swiper('#loginAd', { //지역선택메뉴광고
				// Optional parameters
				direction: 'horizontal',
				speed:400,
				autoplay:{
					delay:2000,
					disableOnInteraction:false
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'bullets',
				},
				loop: true
		    })
			//console.log('^^')
		})
		
		/* 메인커뮤니티 */
		$('#page9').bind('pageshow',function(event, ui){
			getMainBoradList()
		})
		
		$('#page11').bind('pageshow',function(event, ui){
			getCaMemulList($('#caLocal').val());
		})
	})
	
	/* 사이드메뉴 */
	$(document).on('click','#slideMenuBtn',function(){
		//console.log('확인 슬라이드2');
		slideMenuOpenNClose(1);
	})
	
	function slideMenuOpenNClose(type){
		if(type == 1){
			var slideOpenCheck = $('#slideOpenCheck').val();
			
			if(slideOpenCheck == 1){ //사이드메뉴열기
				$("#searchMenu").removeClass("open"); //검색창이 열려있으면 닫아줌
				$('#searchOpenCheck').val('1');
				
				$("#slideMenu").addClass("open");
				$('#slideOpenCheck').val('2');
				//console.log('확인 슬라이드3');
			}else if(slideOpenCheck == 2){ //사이드메뉴닫기
				$("#slideMenu").removeClass("open");
				$('#slideOpenCheck').val('1');
				//console.log('확인 슬라이드4');
			}	
		}else if(type == 2){
			$("#slideMenu").removeClass("open");
			$('#slideOpenCheck').val('1');
		}
		
	}
	/* 검색창 */
	$(document).on('click','#searchMenuBtn',function(){
		//console.log('확인 슬라이드2');
		var slideOpenCheck = $('#searchOpenCheck').val();
		
		if(slideOpenCheck == 1){
			$("#slideMenu").removeClass("open"); //사이드메뉴가 열려있으면 닫아줌
			$('#slideOpenCheck').val('1');
			
			$("#searchMenu").addClass("open");
			$('#searchOpenCheck').val('2');
			//console.log('확인 슬라이드3');
		}else if(slideOpenCheck == 2){
			$("#searchMenu").removeClass("open");
			$('#searchOpenCheck').val('1');
			//console.log('확인 슬라이드4');
		}
	})
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	/* 매물검색(텍스트) */
	$(document).on('click','.searchTextBtn',function(){
		//$(this).closest('.ansimInfoDiv').find('.ansimInfoTb').toggleClass('hide');
		var searchValue = $(this).closest('tr').find('#searchBang').val();
		//console.log('SEARCHVALUE : '+searchValue);
		
		if(searchValue == null || searchValue == ''){
			alert('검색할 내용을 입력하세요.\n 예)평화동 아파트, 효자동 원룸, 월세 30만원 ... 등');
			return;
		}
		
		if(confirm('"'+searchValue+'" 관련 매물을 검색할까요?')){
			$.ajax({
				url : serverURL+'searchMemul',
				data : {'searchValue':searchValue},
				dataType : 'json',
				type : 'post',
				success:function(data){
					if(data.length == 0){
						alert('해당내용의 매물이 없습니다. 다른 검색어로 검색해보세요');
					}else{
						alert('성공?')
					}
				}
			})
		}
	});
	
	/* 매물검색(음성) */
	$(document).on('click','#searchRadioBtn',function(){
		alert('음성으로 매물검색~!!');
	})
	
	/* 회원정보 조회하기 */
	function getUserInfo(userNo){
		$.ajax({
			url : serverURL+'getUser',
			data : {'userNo':userNo},
			type : 'post',
			dataType : 'json',
			async:false,
			success : function(data){
				//console.log(data);
				if(data.userType == 4){
					alert('공인중개사와 집주인으로 회원가입 하신분들만 매물등록이 가능합니다');
					location.href = serverURL;
				}else{
					userData = data;
				}			
			}
		})
		return userData;
	}
	
	/* 커뮤니티 글 조회 */
  	function getMainBoradList(){
  		$('.loader').toggleClass('loading');
  		
  		$.ajax({
  			url : serverURL + 'getCaBoardList',
  			dataType : 'json',
  			type : 'post',
  			success : function(data){
  				var html = '';
  				html += '<table style="width:100%;font-size:13px;color:#000000;padding:2%;">';
  				html += '	<tr>';
  				html += '		<td colspan="3" style="text-align:right;">';
  				html += '			<button type="button" onclick="commMenu(2)" style="width:25%;height:30px;padding-top:3px;font-size:13px;background-color:#002266;color:#FFFFFF;">글쓰기</button>';
  				html += '		</td>';
  				html += '	</tr>';
  				html += '	<tr>';
  				html += '		<td style="width:65%;border:1px solid #993800;text-align:center;font-weight:bold;">제목</td>';
  				html += '		<td style="width:20%;text-align:center;border:1px solid #993800;font-weight:bold;">등록일</td>';
  				html += '		<td style="width:15%;text-align:center;border:1px solid #993800;font-weight:bold;">조회수</td>';
  				html += '	</tr>'
  				if(data.length == 0){
  					html += '<tr><td colspan="3" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						html += '<tr>';
  						if(data.boardTitle.length > 15){
  							html += '	<td onclick="mainBoardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="color:#050099;font-size:12px;">['+data.boardLocal+'] </font>'+data.boardTitle.substring(0,15)+'..</td>';
  						}else{
  							html += '	<td onclick="mainBoardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;"><font style="color:#050099;font-size:12px;">['+data.boardLocal+'] </font>'+data.boardTitle+'</td>';
  						}  					
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.regDate.substring(5,10)+'</td>';
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.selCnt+'</td>';
  	  					html += '</tr>';
  					})
  				}
  				html += '</table>';
  				
  				$('.loader').toggleClass('loading');
  				
  				$('#communityListDiv').empty();
  				$('#communityListDiv').html(html);
  				$('#communityInputDiv').css('display','none');
  				
  				$('#communityListDiv').slideDown();
  			}
  		})
  	}
	
  	/* 게시글 상세보기 */
  	function mainBoardDetail(boardNo){
  		//console.log('게시번호 확인 : '+boardNo)
  		$('.loader').toggleClass('loading');
  		$.ajax({
  			url : serverURL + 'boardDetail',
  			dataType : 'json',
  			type : 'post',
  			data : {'boardNo':boardNo},
  			success : function(data){
  				var html = '';
  				html += '<table style="width:100%;font-size:13px;color:#000000;">';
  				html += '	<tr>';
  				html += '		<td style="text-align:right;">';
  				html += '			<button type="button" onclick="commMenu(1)" style="width:25%;height:30px;padding-top:3px;font-size:13px;background-color:#002266;color:#FFFFFF;">글목록</button>';
  				html += '		</td>';
  				html += '	</tr>';
  				html += '</table>';
  				html += '<div class="mDetailTitle" style="border:1px solid #ddd;">작성자 -'+data.sbUser.userName.substring(0,2)+'..</div>';
  				html += '<table style="width:100%;padding:2%;">';
  				html += '	<tr>';
  				html += '		<td class="mDetailTbTitle" style="text-align:center;background-color:#ddd;">제목</td>';
  				html += '		<td class="mDetailTbBody">'+data.boardTitle+'</td>';
  				html += '	</tr>';
  				html += '	<tr>';
  				html += '		<td class="mDetailTbTitle" style="text-align:center;background-color:#ddd;">등록일</td>';
  				html += '		<td class="mDetailTbBody">'+data.regDate+' (조회수 - '+data.selCnt+')</td>';
  				html += '	</tr>';
  				html += '	<tr>';
  				html += '		<td colspan="2" style="font-weight:bold;font-size:13px;color:#000000;border-bottom:1px solid #ddd;">'
  				/* html += '			<textarea style="height:100%;width:100%;" readonly>'+data.boardBody+'</textarea>'; */
  				html += '			<pre>'+data.boardBody+'</pre>';
  				html += '		</td>';
  				html += '	</tr>';
  				html += '</table>';
  				
  				$('.loader').toggleClass('loading');
  				$('#communityDetailDiv').empty();
  				$('#communityDetailDiv').html(html);
  				$('#communityListDiv').css('display','none');
  				$('#communityDetailDiv').slideDown();
  			}
  		})
  	}
  	
  	/* 복합 커뮤니티 - 게시글입력 */
  	function getCommunityInput(){
  		var html = '';
  		html += '<form method="post" id="addMainCommForm">';
  		html += '<input type="hidden" name="userNo" id="commUserNo" value="'+userData.userNo+'"/>';
  		html += '<input type="hidden" name="boardLocal" id="mainBoardLocal" value="전체"/>';
  		html += '<div class="mDetailTitle" style="border:1px solid #ddd;">작성자 -'+userData.userName+'</div>';
  		html += '<table style="width:100%;padding:2%;">';
  		html += '<tr>';
  		html += '<td class="mDetailTbTitle" style="text-align:center;">제목</td>';
  		html += '<td class="mDetailTbBody"><input type="text" name="boardTitle" id="mainBoardTitle" style="width:100%;height:28px;"/></td>';
  		html += '</tr>';
  		html += '<tr>';
  		html += '<td class="mDetailTbTitle" style="text-align:center;">본문</td>';
  		html += '<td class="mDetailTbBody"><textarea rows="10" name="boardBody" id="mainBoardBody" style="width:100%;"></textarea></td>';
  		html += '</tr>';
  		html += '</table>';
  		html += '<div style="width:100%;height:14px;"></div>';
  		html += '<button type="button" onclick="addMainCommunity();" style="width:100%;background-color:#002266;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;">등록</button>';
  		html += '</form>';
  		
  		$('#communityInputDiv').empty();
		$('#communityInputDiv').html(html);
		$('#communityListDiv').css('display','none');
		
		$('#communityInputDiv').slideDown();
  	}
  	
  	//게시글입력
  	function addMainCommunity(){
  		var boardTitle = $('#mainBoardTitle').val();
  		var boardBody = $('#mainBoardBody').val();
  		var userNo = $('#commUserNo').val();
  		var boardLocal = $('#mainBoardLocal').val();
  		
  		console.log('게시글 정보확인 : '+userNo+', '+boardLocal);
  		if(boardTitle == null || boardTitle == ''){
  			alert('제목을 입력하세요');
  			return;
  		}
  		
  		if(boardBody == null || boardBody == ''){
  			alert('내용을 입력하세요');
  			return;
  		}
  		
  		$('.loader').toggleClass('loading');
  		$.ajax({
  			url : serverURL + 'addCommunity',
  			data : $('#addMainCommForm').serialize(),
  			dataType : 'json',
  			type : 'post',
  			success : function(data){
  				$('.loader').toggleClass('loading');
  				if(data.result == 'succ'){
  					alert('게시글을 등록하였습니다.');
  					getMainBoradList();
  				}else{
  					alert('게시글 등록에 실패하였습니다. 해당 오류가 지속될 경우 고객센터(063-229-3435)로 문의바랍니다. 불편을 드려 죄송합니다');
  					return;
  				}
  			}
  		})
  	}
  	
  	/* 커뮤니티 쓰기,목록 전환 */
  	function commMenu(type){
  		if(type == 2){ //글쓰기로 이동
  			getCommunityInput();
  		}else if(type == 1){ //글목록 이동
  			$('#communityInputDiv').css('display','none');
  			$('#communityDetailDiv').css('display','none');
  			getMainBoradList();
  			
  		}
  	}
  	
	/* 2페이지 이동 */
	function movePage2(cate){
		if(cate > 0 && cate < 7){ //종류별 매물
			$('#saveCate').val(cate);
			location.href = '#page2';
		}else if(cate > 6 && cate < 9){
			alert('해당메뉴를 준비중입니다');
		}else if(cate > 8){
			var text = "";
			if(cate == 9) text="에코시티";
			if(cate == 10) text="만성지구";
			if(cate == 11) text="혁신도시";
			if(cate == 12) text="효천지구";
			if(cate == 13) text="신시가지";
			if(cate == 14) text="객리단길";
			
			$('#caLocal').val(text);
			$('#caTitle').text(text);
			location.href = '#page11';
		}
	}
	
	/* 매물목록 */
	function getMemulList(local){
		//매물목록 조회해와야함(@조건 : 지역, 매물타입)
		$('#saveLocal').val(local)
		location.href = '#page3';
	}
	
	/* 지역, 매물타입 값으로 해당 매물 조회하고 세팅 */
	function setMemulList(){
		var saveType = $('#saveType').val();
		var saveLocal = $('#saveLocal').val();
		var saveCate = $('#saveCate').val();
		var saveDong = $('#saveDong').val();
		
		console.log('지역,타입등확인 : '+saveCate+', '+saveLocal+', '+saveType+', '+saveDong);
		
		$('.loader').toggleClass('loading');
		if(saveCate != null && saveLocal != null){
			$.ajax({
				url : serverURL+'setMemulList',
				dataType : 'json',
				type : 'post',
				data : {'saveType':saveType, 'saveLocal':saveLocal, 'saveCate':saveCate, 'saveDong':saveDong},
				success: function(data){
					//console.log('조회완료');
					$('.loader').toggleClass('loading');
					
					var html = '<tr>';
					html += '<td colspan="3" style="width:100%;font-size:13px;font-weight:bold;color:#000000;">';
					if(saveLocal == 1) html += '전주 > ';
					else if(saveLocal == 2) html += '익산 > ';
					else if(saveLocal == 3) html += '군산 > ';
					else if(saveLocal == 4) html += '전북 > ';
					
					if(saveDong == '동없음') html += '전체 > ';
					else if(saveDong != '동없음') html += saveDong+' > ';
					
					if(saveCate == 1) html += '아파트 > ';
					else if(saveCate == 2) html += '빌라 > ';
					else if(saveCate == 3) html += '주택 > ';
					else if(saveCate == 4) html += '상가 > ';
					else if(saveCate == 5) html += '토지/임야 > ';
					else if(saveCate == 6) html += '공장 > ';	
					
					if(saveType == 1) html += '매매 > ';
					else if(saveType == 2) html += '전세 > ';
					else if(saveType == 3) html += '임대 > ';
					html += '</td>';
					html += '</tr>';
					$.each(data, function(i, list){
						//console.log(i+'번째 제목 : '+list.title);
						html += '<tr onclick="getMemulDetail('+list.mNo+')">';
						html += '<td style="width:30%;">';
						if(list.imgList.length == 0){
							html += '<img src="resources/img/imgsample1.PNG" style="width:100%;border-radius:10%;height:80px;"/>';
						}else{
							html += '<img src="'+IMGURL+list.imgList[0].imgFileName+'" style="width:100%;border-radius:10%;height:80px;"/>';
						}						
						html += '</td>';
						html += '<td style="width:5%;"></td>';
						html += '<td style="width:65%;">';
						html += '	<font style="font-weight:bold;font-size:16px;color:#030066;">'+list.title+'</font>';
						html += '	<br/>';
						if(list.regDate != null || list.regDate != '' || list.regDate != undefined){
							html += '	<font style="font-weight:bold;font-size:13px;color:#997000;">등록일 - '+list.regDate+'</font>';
						}
						html += '</td>'
						html += '</tr>'
						html += '<tr>'
						html += '<td colspan="3" style="background-color:#F2CB61;border-bottom:1px solid #22741C;color:#002266;">';
						html += '	<font style="font-weight:bold;padding:4px;">'+list.si+' | </font>';
						html += '	<font style="font-weight:bold;padding:4px;">'+list.dong+' | </font>';
						if(list.mCate == 1){
							html += '	<font style="font-weight:bold;padding:4px;">아파트 | </font>';
						}else if(list.mCate == 2){
							html += '	<font style="font-weight:bold;padding:4px;">빌라 | </font>';
						}else if(list.mCate == 3){
							html += '	<font style="font-weight:bold;padding:4px;">주택 | </font>';
						}else if(list.mCate == 4){
							html += '	<font style="font-weight:bold;padding:4px;">상가 | </font>';
						}else if(list.mCate == 5){
							html += '	<font style="font-weight:bold;padding:4px;">토지 | </font>';
						}else if(list.mCate == 6){
							html += '	<font style="font-weight:bold;padding:4px;">공장 | </font>';
						}
						
						html += '	<br/>';
						html += '</td>'
						html += '</tr>'
						
					})
					
					$('#memulDetailDiv').css('display','none');	
				
					$('#memulListResultTb').empty();
					$('#memulListResultTb').html(html);
					$('#memulListDiv').slideDown();	
					
				}
			})
		}
		
	}
	
	// 지역, 매물타입 선택후 매/전/월로 구분지어 조회
	function setMemulByType(saveType){
		console.log(saveType);
		$('#saveType').val(saveType);
		setMemulList();
	}
	
	/* 매물상세보기 */
	function getMemulDetail(mNo){
		//alert('매물상세보기');
		//console.log('매물 번호 : '+mNo);
		$('.loader').toggleClass('loading');
		
		$.ajax({
			url : serverURL+'getMemulDetail',
			data : {'mNo':mNo},
			dataType : 'json',
			type : 'post',
			async : false,
			success : function(data){
				//$('.loader').toggleClass('loading');
				var cateList = ['', '아파트', '빌라', '상가', '주택', '토지/임야', '공장'];
				var typeList = ['', '매매', '전세', '임대'];
				var userInfo = data.sbUser;
				
				var html = '';
				html += '<div class="mDetailTitle">'+data.title+'</div>'
				
				/* 이미지 */
				if(data.imgList != null && data.imgList.length > 0){					
					html += '<div class="swiper-container" id="mDetailSwiper">';
					html += '<div class="swiper-wrapper">';					
					$.each(data.imgList, function(i, imgList){
						console.log(imgList);
						html += '<div class="swiper-slide">';
						html += '<img src="'+IMGURL+imgList.imgFileName+'" style="width:100%;"/>';
						html += '</div>';
					})					
					html += '</div>';
					html += '<div class="swiper-pagination"></div>'
					html += '</div>';
				}else{
					html += '<img src="resources/img/noimg.PNG" style="width:100%;"/>';
				}
				html += '<div style="width:100%;height:14px;"></div>';
				html += '<div class="mDetailTitle">매물정보</div>'
				html += '<table style="width:100%;padding:2%;">';
				html += '	<tr>';
				html += '		<td class="mDetailTbTitle">매물종류</td>';
				html += '		<td class="mDetailTbBody">'+cateList[data.mCate]+'</td>';
				html += '	</tr>';
				html += '	<tr>';
				html += '		<td class="mDetailTbTitle">매물타입</td>';
				html += '		<td class="mDetailTbBody">'+typeList[data.type]+'</td>';
				html += '	</tr>';
				html += '	<tr>';
				html += '		<td class="mDetailTbTitle">주소</td>';
				html += '		<td class="mDetailTbBody">('+data.zipcode+') '+data.address+'</td>';
				html += '	</tr>';
				html += '	<tr>';
				html += '		<td class="mDetailTbTitle">면적</td>';
				html += '		<td class="mDetailTbBody">'+data.area+'㎡</td>';
				html += '	</tr>';
				if(data.type == 1){
					html += '	<tr>';
					html += '		<td class="mDetailTbTitle">매매금액</td>';
					html += '		<td class="mDetailTbBody numberTd">'+numberWithCommas(data.tradePrice)+' 원</td>';
					html += '	</tr>';
				}else if(data.type == 2){
					html += '	<tr>';
					html += '		<td class="mDetailTbTitle">전세금액</td>';
					html += '		<td class="mDetailTbBody numberTd">'+numberWithCommas(data.charterPrice)+' 원</td>';
					html += '	</tr>';
				}else if(data.type == 3){
					html += '	<tr>';
					html += '		<td class="mDetailTbTitle">임대금액</td>';
					html += '		<td class="mDetailTbBody numberTd">보'+numberWithCommas(data.deposit)+' / 월'+numberWithCommas(data.monthlyPrice)+' 원</td>';
					html += '	</tr>';
				}
				html += '	<tr>';
				html += '		<td class="mDetailTbTitle">매물소개</td>';
				html += '		<td class="mDetailTbBody">'+data.mainText+'</td>';
				html += '	</tr>';
				html += '	<tr>';
				html += '		<td class="mDetailTbTitle">옵션</td>';
				if(data.optList != null && data.optList.length > 0){
					html += '		<td class="mDetailTbBody">'
					$.each(data.optList, function(i, list){
						html += '<font style="font-size:14px;color:#002266;background-color:#FFE08C;">  '+list.optionName+'  </font>';	
					})
					html += '</td>';
				}else{
					html += '		<td class="mDetailTbBody">-</td>';
				}
				
				html += '	</tr>';
				
				html += '	<tr>';
				html += '		<td class="mDetailTbTitle">거래여부</td>';
				if(data.completeCheck == 1){
					html += '		<td class="mDetailTbBody"><font style="background-color:#22741C;color:#FFFFFF;">&nbsp;거래가능&nbsp;</font></td>';
				}else{
					html += '		<td class="mDetailTbBody"><font style="background-color:#FF0000;color:#FFFFFF;">&nbsp;거래완료&nbsp;</font></td>';
				}
				html += '	</tr>';
				html += '</table>';
				
				html += '<div style="width:100%;height:14px;"></div>';
				html += '<div class="mDetailTitle">매도인정보</div>';
				if(userInfo.userType < 3){
					html += '<div style="width:100%;padding:2%;" class="ansimInfoDiv">'
					html += '<span class="ansimShowSpan" style="width:100%;padding:2%;font-size:13px;font-weight:bold;color:#002266;border:1px solid #ddd;">★책임중개사 자동매칭 - 책임중개사 보기</span>'
					html += '	<table class="ansimInfoTb hide" style="width:100%;padding:2%;">';
					html += '		<tr>';
					html += '			<td class="mDetailTbTitle">상호</td>';
					html += '			<td class="mDetailTbBody">'+userInfo.userShopName+'</td>';
					html += '		</tr>';
					html += '		<tr>';
					html += '			<td class="mDetailTbTitle">위치</td>';
					html += '			<td class="mDetailTbBody">'+userInfo.userAddress+'</td>';
					html += '		</tr>';
					html += '		<tr>';
					html += '			<td class="mDetailTbTitle">소개</td>';
					html += '			<td class="mDetailTbBody">'+userInfo.userIntro+'</td>';
					html += '		</tr>';
					html += '   </table>';
					html += '	<table style="width:100%;padding:2%;">';
					html += '		<tr>';
					html += '			<td onclick="getAnsimMemul('+userInfo.userNo+')" style="width:50%;text-align:center;font-size:13px;font-weight:bold;color:#000000;padding-top:3px;height:30px;background-color:#ddd;">';
					if(userInfo.userType == 1){
						html += '				해당 책임중개사<br/>매물 더보기 +';
					}else if(userInfo.userType == 2){
						html += '				해당 공인중개사<br/>매물 더보기 +';
					}
					
					html += '			</td>';
					html += '			<td onclick="call(\''+userInfo.userHp+'\')" style="width:50%;text-align:center;font-size:13px;font-weight:bold;color:#000000;padding-top:3px;height:30px;background-color:#ddd;">';
					html += '				상담연결';
					html += '			</td>';
					html += '		</tr>';
					html += '	</table>';
					html += '</div>';
				}else{
					
					html += '<table style="width:100%;padding:2%;">';
					html += '<tr>';
					html += '<td colspan="2" style="font-size:13px;font-weight:bold;color:#CC3D3D;">*해당 매물은 직거래 매물입니다.</td>';
					html += '</tr>';
					html += '</table>';					
					
					if(data.ansimInfo != null && data.ansimInfo.length > 0){						
						$.each(data.ansimInfo,function(i, ansimInfo){
							html += '<div style="width:100%;padding:2%;" class="ansimInfoDiv">'
							html += '<span class="ansimShowSpan" style="width:100%;padding:2%;font-size:13px;font-weight:bold;color:#002266;border:1px solid #ddd;">★책임중개사 자동매칭 - 책임중개사 '+(i+1)+' ▽</td>';
							html += '<div class="ansimInfoTb hide" style="width:100%;">'
							html += '<table style="width:100%;padding:2%;">';
							/* html += '	<tr>';
							html += '		<td colspan="2" style="font-size:13px;font-weight:bold;color:#002266;border:1px solid #ddd;">★책임중개사 자동매칭 - 책임중개사 '+(i+1)+' ▽</td>';
							html += '	</tr>'; */
							html += '	<tr>';
							html += '		<td class="mDetailTbTitle">상호</td>';
							html += '		<td class="mDetailTbBody">'+ansimInfo.userShopName+'</td>';
							html += '	</tr>';
							html += '	<tr>';
							html += '		<td class="mDetailTbTitle">위치</td>';
							html += '		<td class="mDetailTbBody">'+ansimInfo.userAddress+'</td>';
							html += '	</tr>';
							html += '	<tr>';
							html += '		<td class="mDetailTbTitle">소개</td>';
							html += '		<td class="mDetailTbBody">'+ansimInfo.userIntro+'</td>';
							html += '	</tr>';
							html += '<table style="width:100%;padding:2%;">';
							html += '	<tr>';
							html += '		<td onclick="getAnsimMemul('+ansimInfo.userNo+')" style="width:50%;text-align:center;font-size:13px;font-weight:bold;color:#000000;padding-top:3px;height:30px;background-color:#ddd;">';
							html += '			해당 책임중개사<br/>매물 더보기 +';
							html += '		</td>';
							html += '		<td onclick="call(\''+ansimInfo.userHp+'\')" style="width:50%;text-align:center;font-size:13px;font-weight:bold;color:#000000;padding-top:3px;height:30px;background-color:#ddd;">';
							html += '			상담연결';
							html += '		</td>';
							html += '	</tr>';
							html += '</table>';
							html += '</div>';
							html += '</div><br/>';
						})					
					}else{
						html += '<div style="width:100%;" class="ansimInfoDiv">'
						html += '<table style="width:100%;padding:2%;">';
						html += '	<tr>';
						html += '		<td colsapn="2" style="color:#000000;font-size:13px;font-weight:bold;">';
						html += '			<button type="button" style="width:100%;background-color:#2F9D27;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;" onclick="call(\''+userInfo.userHp+'\')">매도인 전화걸기</button><br/><br/>';
						html += '			해당 매물의 동에는 책임중개사가 존재하지 않습니다.<br/>';
						html += '			가장 가까운 위치의 책임중개사를 검색할까요?<br/>';
						html += '			<button type="button" style="width:100%;background-color:#FF0000;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;" onclick="getSecAnsim('+data.dong+');">책임중개사 검색하기</button>';
						html += '		</td>'
						html += '	</tr>';
						html += '</table>';
						html += '</div>'
					}
					
				}
				
				$('#memulListDiv').css('display','none');
				
				$('#memulDetailDiv').empty();
				$('#memulDetailDiv').html(html);
				
			}
		})
		var mySwiper4 = new Swiper('#mDetailSwiper', { //지역선택메뉴광고
			// Optional parameters
			direction: 'horizontal',
			speed:400,
			autoplay:{
				delay:2000,
				disableOnInteraction:false
			},
			pagination: {
				el: '.swiper-pagination',
				type: 'bullets',
			},
			loop: true
	    })
		$('#memulDetailDiv').slideDown();
		$('.loader').toggleClass('loading');
	}
	
	//전화걸기
	function call(userHp){
		if(confirm('상담연결을 하시겠습니까?')){
			document.location.href = 'tel:'+userHp;
		}	
	}
	
	//
	$(document).on('click','.ansimShowSpan', function(){
		$(this).closest('.ansimInfoDiv').find('.ansimInfoTb').toggleClass('hide');
	})
	
	//주변 안심중개사 찾기
	function getSecAnsim(dong){
		alert('해당 기능은 현재 구현중입니다. 불편을 드려 죄송합니다.')
	}
	
	//책임중개사 매물 더보기
	function getAnsimMemul(userNo){
		alert('해당 중개사 매물 전체 목록 이동~!!');
	}
	
	/* 매물등록 */
	function addMemul(type){
		if(loginCheck == null || loginCheck == ''){ //등록메뉴는 회원만 가능
			location.href = '#page5';
		}else{
			$('.mImgView').css('display','none');
			$('.ment').css('display','');
			img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,img13 = null;
			//console.log('^^');
			var data = getUserInfo(userNo);
			console.log(data);
			
			if(type == 1){ //공인중개사 등록
				if(data.userType == 1 || data.userType == 2){
					location.href = '#page4';
				}else{
					alert('집주인 매물등록 메뉴를 이용해주세요');
					return;
				}
			}else if(type == 2){ //일반
				if(data.userType == 3 || data.userType == 4){
					location.href = '#page4';
				}else{
					alert('공인중개사 매물등록 메뉴를 이용해주세요');
					return;
				}
			}
			setAdderInfo(data); //등록자 정보 세팅
		}
		
	}
	
	/* 매물등록 화면에 중개사 정보 세팅 */
	function setAdderInfo(userData){
		var html = '';
		html += '<br/>';
		html += '<div class="mDetailTitle">등록자 정보</div>';
		html += '<table style="width:100%;padding:2%;">';
		
		if(userData.userType == 1 || userData.userType == 2){
			html += '	<tr>';
			html += '		<td class="mDetailTbTitle">업장명</td>';
			html += '		<td class="mDetailTbBody">'+userData.userShopName+'  ';
			if(userData.userType == 1){ //안심
				html += '<font style="background-color:#6799FF;color:#F6F6F6;font-size:13px;">안심중개사</font>';
			}else if(userData.userType == 2){ //일반
				html += '<font style="background-color:#6799FF;color:#F6F6F6;font-size:13px;">일반중개사</font>';
			}
			html += '		</td>';
			html += '	</tr>';
			html += '	<tr>';
			html += '		<td class="mDetailTbTitle">위치</td>';
			html += '		<td class="mDetailTbBody">'+userData.userAddress+'</td>';
			html += '	</tr>';
			html += '	<tr>';
			html += '		<td class="mDetailTbTitle">휴대폰</td>';
			html += '		<td class="mDetailTbBody">'+userData.userHp+'</td>';
			html += '	</tr>';
		}else{ //직거래
			html += '	<tr>';
			html += '		<td class="mDetailTbTitle">등록자</td>';
			html += '		<td class="mDetailTbBody">'+userData.userName+'  ';
			html += '			<font style="background-color:#6799FF;color:#F6F6F6;font-size:13px;">직거래</font>';
			html += '		</td>';
			html += '	</tr>';
			html += '	<tr>';
			html += '		<td class="mDetailTbTitle">휴대폰</td>';
			html += '		<td class="mDetailTbBody">'+userData.userHp+'</td>';
			html += '	</tr>';
		}
		
		html += '</table>';
		
		
		$('#adderInfoDiv').empty();
		$('#adderInfoDiv').html(html);
	}
	
	/* 매물종류별 평형선택 */
	
	/* 평형선택 */
	function setArea(cateType){
		var mType = $('#type').val();
		console.log('mType : '+mType);
		
		var html = '';
		html += '<td class="mDetailTbTitle">';
		html += '	면적';
		html += '</td>';
		html += '<td class="mDetailTbBody">';
		html += '	<input type="number" class="jsInp" name="area" id="area" placeholder="전용면적"/>㎡';
		html += '</td>';
		
		$('#optionTr').empty();
		$('#areaTr').empty();
		$('#areaTr').html(html);
		
		if(mType == 3 && cateType == 2 || mType == 2 && cateType == 2){
			console.log('옵션선택?');
			var html2 = '<tr>';
			html2 += '	<td class="mDetailTitle" colspan="4">';
			html2 += '		옵션선택';
			html2 += '	</td>';
			html2 += '</tr>'
			html2 += '<tr>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option1">';
			html2 += '		<font>원룸</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';
			html2 += '	</td>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option1">';
			html2 += '		<font>투룸</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';
			html2 += '	</td>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option1">';
			html2 += '		<font>쓰리룸</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';
			html2 += '	</td>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option1">';
			html2 += '		<font>포룸/<br/>주인세대</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';
			html2 += '	</td>';
			html2 += '</tr>'
			
			html2 += '<tr>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option">';
			html2 += '		<font>에어컨</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';			
			html2 += '	</td>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option">';
			html2 += '		<font>세탁기</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';
			html2 += '	</td>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option">';
			html2 += '		<font>TV</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';
			html2 += '	</td>';
			html2 += '	<td style="width:25%;border:3px solid #ddd;text-align:center;height:50px;" class="option">';
			html2 += '		<font>붙박이장</font><input type="hidden" name="optionNo" id="optionNo" value="1"/>';
			html2 += '	</td>';
			html2 += '</tr>'
			
			$('#optionTb').empty();
			$('#optionTb').html(html2);
		}
	}
	
	/* 옵션선택창 CSS적용 및 선택여부 확인값 변경 - 빌라 형태 */
	$(document).on('click','.option1',function(){
    	$('.option1').each(function(){ //선택된 타입이 있다면 없애고 현재 선택한 것으로 하도록 초기화 (라디오버튼과 같은 기능을 하도록 함)
    		if($(this).hasClass('check')){
    			$(this).toggleClass("check");
    			$(this).find('#optionNo').val('1');
    			console.log($(this).val());
    		}
    	})
    	
		$(this).toggleClass("check");
		if($(this).find('#optionNo').val() == 1){
			$(this).find('#optionNo').val('2');
			//console.log($(this).find('#optionNo').val());
		}else if($(this).find('#optionNo').val() == 2){
			$(this).find('#optionNo').val('1');
			//console.log($(this).find('#optionNo').val());
		}
		
	});
	
	$(document).on('click','.option',function(){
		
		$(this).toggleClass("check");
		if($(this).find('#optionNo').val() == 1){
			$(this).find('#optionNo').val('2');
		}else if($(this).find('#optionNo').val() == 2){
			$(this).find('#optionNo').val('1');
		}
		
	});
	
	/* 매물타입 별 가격입력창 세팅 */
	function setPrice(mType){
		var html = ''; //매매, 전세, 월세보증금액 세팅
		var html2 = '';
		
		html += '<td class="mDetailTbTitle">';
		if(mType == 1){ //매매
			html += '매매금액';
			html += '</td>';
			html += '<td class="mDetailTbBody">';
			html += '	<input type="number" class="jsInp" name="tradePrice" id="tradePrice" placeholder="매매금액(숫자만입력)"/>원';
			html += '</td>';
			
			$('#priceTr').empty();
			$('#monthlyPriceTr').empty();
			
			$('#priceTr').html(html);
			
		}else if(mType == 2){ //전세
			html += '전세금액';
			html += '</td>';
			html += '<td class="mDetailTbBody">';
			html += '	<input type="number" class="jsInp" name="charterPrice" id="charterPrice" placeholder="전세금액(숫자만입력)"/>원';
			html += '</td>';
			
			$('#priceTr').empty();
			$('#monthlyPriceTr').empty();
			
			$('#priceTr').html(html);
			
		}else if(mType == 3){ //월세
			html += '보증금';
			html += '</td>';
			html += '<td class="mDetailTbBody">';
			html += '	<input type="number" class="jsInp" name="deposit" id="deposit" placeholder="보증금(숫자만입력)"/>원';
			html += '</td>';
			
			html2 += '<td class="mDetailTbTitle">';
			html2 += '월세';
			html2 += '</td>';
			html2 += '<td class="mDetailTbBody">';
			html2 += '	<input type="number" class="jsInp" name="monthlyPrice" id="monthlyPrice" placeholder="월세(숫자만입력)"/>원';
			html2 += '</td>';
			
			$('#priceTr').empty();
			$('#monthlyPriceTr').empty();
			
			$('#priceTr').html(html);
			$('#monthlyPriceTr').html(html2);
		}
	}
	
	
	/* 우리동네 안심중개사 검색 */
	function getAnsim(){
		location.href = '#page10';
	}
	
	/* 이미지화면 업로드 */
    
    $(document).on('change','#mImg1',function(){ //#1
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL1(this);
        $("#ment1").css('display','none');
        $("#mImgView1").slideDown();
        img1 = 'ok';
        //console.log(img1+'왜 사진안나오지? ㅅㅂ');
    });
    
    function readURL1(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView1').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg2',function(){ //#2
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL2(this);
        $("#ment2").css('display','none');
        $("#mImgView2").slideDown();
        img2 = 'ok';
        console.log(img2);
    });
    
    function readURL2(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView2').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg3',function(){ //#3
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL3(this);
        $("#ment3").css('display','none');
        $("#mImgView3").slideDown();
        img3 = 'ok';
        console.log(img3);
    });
    
    function readURL3(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView3').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg4',function(){ //#4
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL4(this);
        $("#ment4").css('display','none');
        $("#mImgView4").slideDown();
        img4 = 'ok';
        console.log(img4);
    });
    
    function readURL4(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView4').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg5',function(){ //#5
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL5(this);
        $("#ment5").css('display','none');
        $("#mImgView5").slideDown();
        img5 = 'ok';
        console.log(img5);
    });
    
    function readURL5(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView5').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg6',function(){ //#6
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL6(this);
        $("#ment6").css('display','none');
        $("#mImgView6").slideDown();
        img6 = 'ok';
        console.log(img6);
    });
    
    function readURL6(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView6').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg7',function(){ //#7
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL7(this);
        $("#ment7").css('display','none');
        $("#mImgView7").slideDown();
        img7 = 'ok';
        console.log(img7);
    });
    
    function readURL7(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView7').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg8',function(){ //#8
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL8(this);
        $("#ment8").css('display','none');
        $("#mImgView8").slideDown();
        img8 = 'ok';
        console.log(img8);
    });
    
    function readURL8(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView8').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg9',function(){ //#9
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL9(this);
        $("#ment9").css('display','none');
        $("#mImgView9").slideDown();
        img9 = 'ok';
        console.log(img9);
    });
    
    function readURL9(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView9').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg10',function(){ //#10
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL10(this);
        $("#ment10").css('display','none');
        $("#mImgView10").slideDown();
        img10 = 'ok';
        console.log(img10);
    });
    
    function readURL10(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView10').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg11',function(){ //#11
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL11(this);
        $("#ment11").css('display','none');
        $("#mImgView11").slideDown();
        img11 = 'ok';
        console.log(img11);
    });
    
    function readURL11(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView11').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    $(document).on('change','#mImg12',function(){ //#12
        //alert(this.value); //선택한 이미지 경로 표시
        //console.log('이미지')
        readURL12(this);
        $("#ment12").css('display','none');
        $("#mImgView12").slideDown();
        img12 = 'ok';
        console.log(img12);
    });
    
    function readURL12(input) {
    	//console.log('이미지2')
        if (input.files && input.files[0]) {
        	//console.log('이미지3')
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#mImgView12').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }
    
    /* 회원가입 */
    function moveSignUp(){
    	location.href = '#page6';
    }
    
    /* 회원가입 - 관심지역 */
    $(document).on('click','.localCheck',function(){
		$(this).toggleClass("check");
		if($(this).find('#checkLocal').val() == 1){
			$(this).find('#checkLocal').val('2');
		}else if($(this).find('#checkLocal').val() == 2){
			$(this).find('#checkLocal').val('1');
		}
	});
    
    /* 회원가입 - 회원타입 */
    $(document).on('click','.userTypeCheck',function(){
    	$('.userTypeCheck').each(function(){ //선택된 타입이 있다면 없애고 현재 선택한 것으로 하도록 초기화 (라디오버튼과 같은 기능을 하도록 함)
    		if($(this).hasClass('check')){
    			$(this).toggleClass("check");
    			$(this).find('#checkUserType').val('1');
    		}
    	})
    	
		$(this).toggleClass("check");
		if($(this).find('#checkUserType').val() == 1){
			$(this).find('#checkUserType').val('2');
		}else if($(this).find('#checkUserType').val() == 2){
			$(this).find('#checkUserType').val('1');
		}
		
		if($(this).find('font').length > 0){ //공인중개사 선택시에만 가게상호, 소개글 입력할 수 있게 입력 폼 보이고 숨기기
			//console.log('있네~!!')
			$('#shopInputTr').slideDown();
			$('#addressTr').slideDown();
			$('#introTr').slideDown();
		}else{
			$('#shopInputTr').css('display','none');
			$('#addressTr').css('display','none');
			$('#introTr').css('display','none');
		}
	});
    
    /* 회원가입 - 유효성검사 후 디비 인서트 */
    function signUp(){
    	var checkLocal = '';
    	var checkUserType = '';
    	
    	$('input[name=checkLocal]').each(function(){ //관심지역확인
    		checkLocal += ($(this).val());
    	})
    	if(checkLocal == '111'){ //관심지역 선택 안했을때
    		alert('1개 이상의 관심지역을 선택해주세요~!!');
    		return;
    	}
    	
    	$('input[name=checkUserType]').each(function(){ //유저타입확인
    		checkUserType += ($(this).val());
    	})
    	if(checkUserType == '111'){ //관심지역 선택 안했을때
    		alert('공인중개사인지 선택해주세요~!!');
    		return;
    	}
    	
    	//console.log(checkLocal);
    	//console.log(checkLocal.substring(0,1));
    	//console.log(checkLocal.substring(1,2));
    	//console.log(checkLocal.substring(2,3));
    	//console.log(checkUserType);
    	
    	var formData = $('#signUpForm').serialize();
    	//console.log(formData);
    	//console.log(formData.userName);
    	if($('#userName').val() == null || $('#userName').val() == ''){
    		alert('아이디를 입력해주세요');
    		return;
    	}
    	
    	if($('#userHp').val() == null || $('#userHp').val() == ''){
    		alert('휴대폰번호를 입력해주세요');
    		return;
    	}
    	
    	$('.loader').toggleClass('loading');
    	$.ajax({
    		url : serverURL+'signUp',
    		data : formData,
    		dataType : 'json',
    		type : 'post',
    		success : function(data){
    			$('.loader').toggleClass('loading');
    			if(data.result == 'succ'){
    				alert('회원가입 되었습니다');
    				if(data.autoLogin == 'checked'){
    					autoLogin = 'checked';
    					loginCheck = 'logIn';
    					
    					localStorage.setItem('autoLogin',autoLogin);
    					localStorage.setItem('loginCheck',loginCheck);
    					localStorage.setItem('userNo',data.userNo);
    					
    					location.href = serverURL; //진행중이던 페이지로 이동
    				}else{
    					location.href = serverURL+'#page5';
    				}
    			}else{
    				alert('회원가입 실패~!!');
    			}
    		}
    	})
    }
    
    /* 주소찾기 - 회원가입 */
    function execDaumPostCode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
               /*  $('#poZip1').val(data.zonecode); //5자리 새우편번호 사용
                $('#poSido').val(data.sido);
                $('#poGuGun').val(data.sigungu);
                $('#poDong').val(data.bname); */
                $('#userAddress').val(fullAddr);
                $('#userSearchAdd').val(data.roadAddress.trim()+data.jibunAddress.trim());
                console.log(data.roadAddress.trim()+data.jibunAddress.trim());
                // 커서를 상세주소 필드로 이동한다.
                $('#userSangseAddress').focus();
            }
        }).open();
    }
    
    function replaceAll(str, searchStr, replaceStr){
    	return str.split(searchStr).join(replaceStr);
    }
    
    function searchAdd() {
        new daum.Postcode({
            oncomplete: function(data) {
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $('#zipcode').val(data.zonecode); //5자리 새우편번호 사용
                //$('#').val(data.sido);
                $('#si').val(data.sigungu);
                $('#dong').val(data.bname); 
                $('#address').val(fullAddr);
                
                /* console.log('시 : '+data.sigungu);
                console.log('동 : '+data.bname); */
                $('#jibunAdd').val(data.jibunAddress);
                $('#roadAdd').val(data.roadAddress);
                
                // 커서를 상세주소 필드로 이동한다.
                $('#sangse').focus();
            }
        }).open();
    }
    
    /* 로그인 */
    function logIn(){
    	var loginId = $('#loginId').val();
    	var loginPw = $('#loginPw').val();
    	
    	autoLogin == '';
    	loginCheck == '';
    	userNo == '';
    	
    	if($('#loginAutoCheck').val() == 'checked'){
    		autoLogin = 'checked';
    	};
    	
    	if(loginId == '' || loginId == null){
    		alert('ID를 입력하세요');
    		return;
    	}
    	
    	if(loginPw == '' || loginPw == null){
    		alert('휴대폰번호를 입력하세요');
    		return;
    	}
    	
    	$.ajax({
    		url : serverURL + 'logIn',
    		data : {'loginId':loginId, 'loginPw':loginPw},
    		dataType : 'json',
    		type : 'post',
    		success : function(data){
    			if(data.result == 'noId'){
    				alert('ID를 확인해주세요.');
    				return;
    			}else if(data.result == 'noHp'){
    				alert('휴대폰번호를 확인해주세요');
    				return;
    			}else if(data.result == 'logIn'){
    				userNo = data.loginUserNo;
    				loginCheck = 'logIn';
    				
    				if(autoLogin == 'checked'){
    					localStorage.setItem('loginCheck',loginCheck);
        				localStorage.setItem('userNo',userNo);
    				} 				
    				
    				location.href = serverURL;
    			}
    		}
    	})
    }
    
    /* 로그아웃 */
    function logOut(){
    	localStorage.setItem('autoLogin','');
		localStorage.setItem('loginCheck','');
		localStorage.setItem('userNo','');
		
		location.href = serverURL; //진행중이던 페이지로 이동
    }
    
    function addMemulServ(){
    	var nullChk = memulNullCheck();
    	if(nullChk == 'ok'){
    		$('.loader').toggleClass('loading');
        	var formData = new FormData($('#addMemulForm')[0]);
        	
        	//이미지 올렸는지 확인토록 데이터에 체크변수 세팅	
        	formData.append('img1',img1); 
        	formData.append('img2',img2);
        	formData.append('img3',img3);
        	formData.append('img4',img4);
        	formData.append('img5',img5);
        	formData.append('img6',img6);
        	formData.append('img7',img7);
        	formData.append('img8',img8);
        	formData.append('img9',img9);
        	formData.append('img10',img10);
        	formData.append('img11',img11);
        	formData.append('img12',img12);
        	
        	formData.append('userNo',userNo); //등록자 회원번호 세팅
        	console.log(formData);
        	$.ajax({
        		type:'post',
        		url:'addMemul',
        		data:formData,
        		processData : false,
                contentType : false,
                success : function(data) {
                	$('.loader').toggleClass('loading');
                	if(data.result == 'succ'){
                		alert('매물이 등록되었습니다.');
                		location.href = '#page100';
                	}else{
                		alert('등록에 실패하였습니다. 해당문제가 계속될 경우 담당자에게 문의바랍니다.');
                		location.href = '#page100';
                	}
                }
        	})
    	}
    }
    
    function memulNullCheck(){
    	if($('#type').val() == '매매/전월세 선택'){
    		alert('매물타입을 선택하세요');
    		return;
    	}
    	if($('#mCate').val() == '종류선택'){
    		alert('매물종류를 선택하세요');
    		return;
    	}
    	if($('#type').val() == 1){ //매매일때 매매금
    		if($('#tradePrice').val() == null || $('#tradePrice').val() == ''){
    			alert('매매금액을 입력하세요');
    			$('#tradePrice').focus();
        		return;
    		}   		
    	}
    	if($('#type').val() == 2){ //전세일때 전세금
    		if($('#charterPrice').val() == null || $('#charterPrice').val() == ''){
    			alert('전세금액을 입력하세요');
    			$('#charterPrice').focus();
        		return;
    		}   		
    	}
    	if($('#type').val() == 3){ //월세일때 보증금과 월세
    		if($('#deposit').val() == null || $('#deposit').val() == ''){
    			alert('보증금액을 입력하세요');
    			$('#deposit').focus();
        		return;
    		}else{
    			if($('#monthlyPrice').val() == null || $('#monthlyPrice').val() == ''){
        			alert('월세를 입력하세요');
        			$('#monthlyPrice').focus();
            		return;
        		}
    		}    		
    	}
    	
    	if($('#mCate').val() == 2){ //빌라일때 옵션선택여부
    		var cnt = 0;
    		$('.option1').each(function(i){
    			console.log(i+' 번째 옵션값 확인 : '+$(this).find('#optionNo').val());
    			if($(this).find('#optionNo').val() == 2){
    				console.log(i+'번째 : '+$(this).find('#optionNo').val());
    				cnt++;
    			}
    		});
    		if(cnt == 0){
    			alert('원/투/쓰리/포룸 중 해당되는 형태를 선택하세요');
    			return;
    		}
    	}
    	
    	if($('#address').val() == null || $('#address').val() == ''){
    		alert('주소찾기를 통해 정확한 주소를 입력하세요');
    		return;
    	}
    	if($('#sangse').val() == null || $('#sangse').val() == ''){
    		alert('상세주소를 입력하세요');
    		$('#sangse').focus();
    		return;
    	}
    	
    	if($('#title').val() == null || $('#title').val() == ''){
    		alert('글제목을 입력하세요');
    		$('#title').focus();
    		return;
    	}
    	
    	if($('#mainText').val() == null || $('#mainText').val() == ''){
    		alert('상세내용을 입력하세요');
    		$('#mainText').focus();
    		return;
    	}
    	
    	var nullChk = 'ok';
    	return nullChk;
    }
    
    /* 네비바 매뉴이동 */
    function topMenu(type){
    	if(type == 1){
    		location.href = '#page7'; //제휴업체
    	}else if(type == 2){
    		location.href = '#page8'; //매물원해요
    	}else if(type == 3){
    		if(loginCheck == null || loginCheck == ''){ //등록메뉴는 회원만 가능
    			location.href = '#page5';
    		}else{
    			location.href = '#page9'; //정보
    		}
    		
    	}
    }
    
    /* 매물원해요 옵션선택 이벤트  */
	    //시도
	    $(document).on('click','.wishSido',function(){   	
	    	var wishMemulSido = '';
	    	$(this).toggleClass("check");	
	    	
	    	var sidoCnt = 0;
	    	$('.wishSido').each(function(){ 
	    		if($(this).hasClass('check')){
	    			sidoCnt++;
	    			if($('#wishMemulSido').val() == null || $('#wishMemulSido').val() == ''){
	    				wishMemulSido = $(this).text();
	    			}else{
	    				wishMemulSido = wishMemulSido+','+ $(this).text();
	    			} 			
	    		}
	    	}) 
	    		
	    	if(wishMemulSido != '' && wishMemulSido.substr(0,1) == ','){
	    		wishMemulSido = wishMemulSido.substr(1,wishMemulSido.length);
	    	}
	    	
	    	$('#wishMemulSido').val('');
	    	$('#wishMemulSido').val(wishMemulSido);
			console.log('시도설정 확인 : '+$('#wishMemulSido').val());
			
			if(sidoCnt > 1){
				$('#wishDongTr').css('display','none');
				$('#wishDongMent').css('display','');
			}else if(sidoCnt < 2){
				$('#wishDongMent').css('display','none');
				$('#wishDongTr').slideDown();
			}
		});
	    
	  	//동선택
	  	function wishDong(val){
	  		$('#wishMemulDong').val(val);
	  	}
	  	
	    //매물종류
	    $(document).on('click','.wishCate',function(){   	
	    	var wishMemulCate = '';
	    	$(this).toggleClass("check");	
	    	
	    	$('.wishCate').each(function(){ 
	    		if($(this).hasClass('check')){
	    			if($('#wishMemulCate').val() == null || $('#wishMemulCate').val() == ''){
	    				wishMemulCate = $(this).text();
	    			}else{
	    				wishMemulCate = wishMemulCate+','+ $(this).text();
	    			} 			
	    		}
	    	}) 
	    		
	    	if(wishMemulCate != '' && wishMemulCate.substr(0,1) == ','){
	    		wishMemulCate = wishMemulCate.substr(1,wishMemulCate.length);
	    	}
	    	
	    	$('#wishMemulCate').val('');
	    	$('#wishMemulCate').val(wishMemulCate);
			console.log('매물종류 설정확인 : '+$('#wishMemulCate').val());
		});
	    
	  	//매물타입
	    $(document).on('click','.wishType',function(){   	
	    	var wishMemulType = '';
	    	$(this).toggleClass("check");	
	    	
	    	$('.wishType').each(function(){ 
	    		if($(this).hasClass('check')){
	    			if($('#wishMemulType').val() == null || $('#wishMemulType').val() == ''){
	    				wishMemulType = $(this).text();
	    			}else{
	    				wishMemulType = wishMemulType+','+ $(this).text();
	    			} 			
	    		}
	    	}) 
	    		
	    	if(wishMemulType != '' && wishMemulType.substr(0,1) == ','){
	    		wishMemulType = wishMemulType.substr(1,wishMemulType.length);
	    	}
	    	
	    	$('#wishMemulType').val('');
	    	$('#wishMemulType').val(wishMemulType);
			console.log('매물타입 설정확인 : '+$('#wishMemulType').val());
		});
  
	  	//매매가
	  	function tradeChange(val){
	  		if($('.wishType').eq(0).hasClass('check')){
	  			$('#wishMemulTradePrice').val(val);
	  		}else{
	  			alert('매매금액 상한을 설정하려면 매물형태에 매매를 선택해주세요');
	  			return;
	  		}  		
	  	}
	  	
	  	//전세,월세 보증금
	  	function charterChange(val){
	  		if($('.wishType').eq(1).hasClass('check') || $('.wishType').eq(2).hasClass('check')){
	  			$('#wishMemulDeposit').val(val);
		  		$('#wishMemulCharterPrice').val(val);
	  		}else{
	  			alert('보증금액 상한을 설정하려면 매물형태에 전세/임대를 선택해주세요');
	  			return;
	  		}  	
	  		
	  	}
	  	
	  	//월세 
	  	function monthlyChange(val){
	  		if($('.wishType').eq(2).hasClass('check')){
	  			$('#wishMemulMonthlyPrice').val(val);
	  		}else{
	  			alert('월임대료 상한을 설정하려면 매물형태에 임대를 선택해주세요');
	  			return;
	  		}   		
	  	}

	//안심중개사 - 지역으로 검색
	function searchAnsimType(type){
		if(type == 1){
			$('#searchForLocalDiv').slideDown();
		}
	}
	
	$(document).on('click','.ansimLocal',function(){
		$('.ansimLocal').each(function(){ //선택된 타입이 있다면 없애고 현재 선택한 것으로 하도록 초기화 (라디오버튼과 같은 기능을 하도록 함)
    		if($(this).hasClass('check')){
    			$(this).toggleClass("check");
    			//$(this).find('#optionNo').val('1');
    		}
    	})
    	
		$(this).toggleClass("check");
		if($(this).text() == '전주'){
			var dongList = getDong(1);
			var html = '<option>동 선택</option>';
			$.each(dongList, function(i, list){
				//console.log(i+'번째 목록 확인 : '+list.dongName);
				html += '<option value="'+list.dongName+'">'+list.dongName+'</option>';
			})
			//console.log(html)
			$('#searchAnsimDong').empty();
			$('#searchAnsimDong').html(html);
			$('#searchAnsimDong').selectmenu('refresh',true);
			//console.log($('#searchAnsimDong').html());
		}else{
			alert('현재 전주지역만 서비스 중입니다. 빠른 시일안에 다른 지역도 서비스 하겠습니다.');
			return;
		}
		
	});
	
	//안심중개사 동 선택시 안심중개사 조회
	$(document).on('change','#searchAnsimDong',function(){
		var dong = $(this).val();
		console.log('dong : '+dong);
		if(dong != null || dong != ''){
			$.ajax({
				url : serverURL+'getAnsimByDong',
				data : {'dong':dong},
				dataType : 'json',
				type : 'post',
				success : function(data){
					console.log('조회성공?')
					var html = '';
					if(data.length == 0){
						html += '<div style="border:1px solid #CC3D3D;text-align:center;width:100%;padding-top:2%;padding-bottom:2%;">';
						html += '<span>해당 동에는 책임중개사가 없습니다</span>';
						html += '</div>';
					}else{
						html += '<span style="width:100%;font-weight:bold;font-size:15px;color:#003399;">우리동네 책임중개사는 총 '+data.length+'명<span>';
						html += '<table style="width:100%;text-align:center;border:1px solid #ddd;padding:2%;">';
						$.each(data, function(i, list){
							//console.log('조회된 안심중개사 확인 : '+list.userName);
							html += '<tr>';
							html += '	<td colspan="2" style="width:96%;"><img src="resources/img/imgsample1.PNG" style="width:99%;"/></td>';
							html += '</tr>';
							html += '<tr>';
							html += '	<td colspan="2" style="background-color:#ddd;color:#030066;font-weight:bold;text-align:center;">상호</td>'
							html += '</tr>';
							html += '<tr>';
							html += '	<td>'+list.userShopName+'</td>';
							html += '</tr>';
							html += '<tr>';
							html += '	<td colspan="2" style="background-color:#ddd;color:#030066;font-weight:bold;text-align:center;">위치</td>'
							html += '</tr>';
							html += '<tr>';
							html += '	<td>'+list.userAddress+'<img src="resources/img/location.PNG" style="width:30px;"/></td>';
							html += '</tr>';
							html += '<tr>';
							html += '	<td colspan="2" style="background-color:#ddd;color:#030066;font-weight:bold;text-align:center;">책임중개사 한마디</td>'
							html += '</tr>';
							html += '<tr>';
							html += '	<td>'+list.userIntro+'</td>';
							html += '</tr>';
							html += '<tr>';
							html += '	<td colspan="2"><a href="tel:'+list.userHp+'" data-role="button" class="ui-btn" data-icon="phone" data-theme="b">상담전화걸기</a></td>';
							html += '</tr>';
							
						})	
					}
					
					$('#ansimSearchResultDiv').empty();
					$('#ansimSearchResultDiv').html(html);
					
					$('#ansimSearchResultDiv').slideDown();			
				}
			})
		}
	})
	
	//지역선택시 동확인하기
	function getDong(localNo){
		if(localNo == 1){
			console.log('동 조회1');
			var dongList = '';
			$.ajax({
				url : serverURL+'getDong',
				data : {'localNo':localNo},
				type : 'post',
				dataType : 'json',
				async:false,
				success : function(data){
					if(data == null || data == ''){
						alert('해당 지역 서비스를 준비중입니다.');
						return
					}else{
						dongList = data;
						console.log('동 조회2');
					}
				}
			})
			return dongList;
		}
	}
	
	/* 복합주거지역 네비바 */
	function caTopMenu(type){
		$('.ca').css('display','none');
		var caLocal = $('#caLocal').val();
		console.log('복합지역 확인 : '+caLocal);
		
		if(type == 1){ //매물목록
			getCaMemulList(caLocal);
		}else if(type == 2){ //제휴업체
			getCaJehuList(caLocal);
		}else if(type == 3){ //희망매물
			if(loginCheck == null || loginCheck == ''){ //등록메뉴는 회원만 가능
				location.href = '#page5';
			}else{
				$('#caWishMemulDiv').slideDown();
			}		
		}else if(type == 4){ //커뮤니티
			if(loginCheck == null || loginCheck == ''){ //등록메뉴는 회원만 가능
				location.href = '#page5';
			}else{
				$('#caCommunityDiv').css('display','');
				getCaBoradList();
				
			}			
		}
	}
	
	/* 복합단지 - 매물목록 */
	function getCaMemulList(caLocal){
		$('.ca').css('display','none');
		$.ajax({
			url : serverURL + 'getCaMemulList',
			data : {'caLocal':caLocal},
			dataType : 'json',
			type : 'post',
			success : function(data){
				var html = '';
				html += '<div style="width:100%;text-align:right;font-weight:bold;font-size:13px;padding-bottom:4px;">';
				html += '<button type="button" onclick="addMemul(1);" style="width:35%;height:30px;padding-top:3px;font-size:13px;background-color:#6B9900;color:#ffffff;">매물등록</button>';
				html += '</div>';
				if(data.length == 0 || data == null){
					html += '<div style="width:100%;font-weight:bold;text-align:center;font-size:14px;color:#000000;">';
					html += '등록된 매물이 없습니다.';
					html += '</div>'
				}else{
					alert('목록');
				}
				$('#caMemulDiv').empty();
				$('#caMemulDiv').html(html);
				
				$('#caMemulDiv').slideDown();
			}
		})
	}
	
	/* 복합단지 - 제휴업체 */
	function getCaJehuList(caLocal){
		$('.ca').css('display','none');
		$.ajax({
			url : serverURL + 'getCaJehuList',
			data : {'caLocal':caLocal},
			dataType : 'json',
			type : 'post',
			success : function(data){
				var html = '';
				html += '<div style="width:100%;text-align:right;font-weight:bold;font-size:13px;padding-bottom:4px;">';
				html += '<button type="button" onclick="putJehu();" style="width:45%;height:30px;padding-top:3px;font-size:13px;background-color:#6B9900;color:#ffffff;">제휴업체 등록문의</button>';
				html += '</div>';
				if(data.length == 0 || data == null){
					html += '<div style="width:100%;font-weight:bold;text-align:center;font-size:14px;color:#000000;">';
					html += '등록된 제휴업체가 없습니다.';
					html += '</div>'
				}else{
					html += '<table style="width:100%;padding:1%;">';
					$.each(data, function(i, list){
						if(list.jehuMain == 1){
							html += '<tr>';
							if(data.jehuUrl != null && data.jehuUrl != ''){
								html += '<td style="border:1px solid #FAED7D;"><a href="'+list.jehuUrl+'"><img src="'+list.jehuFolder+list.jehuFileName+'" style="width:99%;"/></a></td>';									
							}else{
								html += '<td style="border:1px solid #FAED7D;"><img src="'+list.jehuFolder+list.jehuFileName+'" style="width:99%;"/></td>'								
							}
							html += '</tr>';
						}
					})
					html += '</table>';
					html += '<br/>';
					
					html += '<table style="width:100%;padding:1%;">';
					$.each(data, function(i, list){
						if(list.jehuMain == 2){
							html += '<tr>';
							if(data.jehuUrl != null && data.jehuUrl != ''){
								html += '<td style="border:1px solid #FAED7D;"><a href="'+list.jehuUrl+'"><img src="'+list.jehuFolder+list.jehuFileName+'" style="width:99%;"/></a></td>';									
							}else{
								html += '<td style="border:1px solid #FAED7D;"><img src="'+list.jehuFolder+list.jehuFileName+'" style="width:99%;"/></td>'								
							}
							html += '</tr>';
						}
					})
					html += '</table>';
				}
				$('#caJehuDiv').empty();
				$('#caJehuDiv').html(html);
				
				$('#caJehuDiv').slideDown();
			}
		})
	}
	
	/* 제휴업체 신청문의 */
	function putJehu(){
		if(confirm('제휴업체관련 문의사항은 010-7484-5559(본부장 조승완)으로 문의 주시면 됩니다. 바로 통화연결 하시겠습니까?')){
			location.href= 'tel:01074845559';
		}
	}
	
	//시도
    $(document).on('click','.caWishSido',function(){   	
    	var caWishMemulSido = '';
    	$(this).toggleClass("check");	
    	
    	var sidoCnt = 0;
    	$('.caWishSido').each(function(){ 
    		if($(this).hasClass('check')){
    			sidoCnt++;
    			if($('#caWishMemulLocal').val() == null || $('#caWishMemulLocal').val() == ''){
    				caWishMemulSido = $(this).text();
    			}else{
    				caWishMemulSido = caWishMemulSido+','+ $(this).text();    							
    			} 
    			if($(this).text() == '직접입력'){
    	    		$('#wishDirectInputTr').slideDown();
    	    	}
    		}else{
    			if($(this).text() == '직접입력'){
    	    		$('#wishDirectInputTr').css('display','none');
    	    	}
    		}
    	}) 
    		
    	if(caWishMemulSido != '' && caWishMemulSido.substr(0,1) == ','){
    		caWishMemulSido = caWishMemulSido.substr(1,caWishMemulSido.length);
    	}
    	
    	$('#caWishMemulLocal').val('');
    	$('#caWishMemulLocal').val(caWishMemulSido);
		console.log('시도설정 확인 : '+$('#caWishMemulLocal').val());
		
	});
	
	//매물종류
    $(document).on('click','.caWishCate',function(){   	
    	var caWishMemulCate = '';
    	$(this).toggleClass("check");	
    	
    	$('.caWishCate').each(function(){ 
    		if($(this).hasClass('check')){
    			if($('#caWishMemulCate').val() == null || $('#caWishMemulCate').val() == ''){
    				caWishMemulCate = $(this).text();
    			}else{
    				caWishMemulCate = caWishMemulCate+','+ $(this).text();
    			} 			
    		}
    	}) 
    		
    	if(caWishMemulCate != '' && caWishMemulCate.substr(0,1) == ','){
    		caWishMemulCate = caWishMemulCate.substr(1,caWishMemulCate.length);
    	}
    	
    	$('#caWishMemulCate').val('');
    	$('#caWishMemulCate').val(caWishMemulCate);
		console.log('매물종류 설정확인 : '+$('#caWishMemulCate').val());
	});
    
  	//매물타입
    $(document).on('click','.caWishType',function(){   	
    	var caWishMemulType = '';
    	$(this).toggleClass("check");	
    	
    	$('.caWishType').each(function(){ 
    		if($(this).hasClass('check')){
    			if($('#caWishMemulType').val() == null || $('#caWishMemulType').val() == ''){
    				caWishMemulType = $(this).text();
    			}else{
    				caWishMemulType = caWishMemulType+','+ $(this).text();
    			} 			
    		}
    	}) 
    		
    	if(caWishMemulType != '' && caWishMemulType.substr(0,1) == ','){
    		caWishMemulType = caWishMemulType.substr(1,caWishMemulType.length);
    	}
    	
    	$('#caWishMemulType').val('');
    	$('#caWishMemulType').val(caWishMemulType);
		console.log('매물타입 설정확인 : '+$('#caWishMemulType').val());
	});
  	
  	//희망매물 등록
  	function addCaWm(){
  		var caWishMemulLocal = $('#caWishMemulLocal').val();
  		var caWishMemulCate = $('#caWishMemulCate').val();
  		var caWishMemulType = $('#caWishMemulType').val();
  		
  		if(caWishMemulLocal == null || caWishMemulLocal == ''){
  			alert('1개 이상 원하시는 지역을 선택하세요');
  			return;
  		}
  		
  		if(caWishMemulCate == null || caWishMemulCate == ''){
  			alert('1개 이상 원하시는 매물종류를 선택하세요');
  			return;
  		}
  		
  		if(caWishMemulType == null || caWishMemulType == ''){
  			alert('1개 이상 원하시는 거래형태를 선택하세요');
  			return;
  		}
  		
  		if(caWishMemulLocal.indexOf('직접입력') != -1){
  			if($('#wishSidoDirect').val() == null || $('#wishSidoDirect').val() == ''){
  				alert('직접 입력을 선택하신 경우 원하시는 지역명을 입력해주세요');
  				$('#wishSidoDirect').focus();
  				return;
  			}else{
  				//caWishMemulLocal = caWishMemulLocal +','+$('#wishSidoDirect').val();
  				caWishMemulLocal = caWishMemulLocal.replace(/직접입력/gi, $('#wishSidoDirect').val());
  				//console.log('지역선택값 최종확인 : '+caWishMemulLocal);
  				$('#caWishMemulLocal').val(caWishMemulLocal);
  			}			
  		}
  		
  		$('.loader').toggleClass('loading');
  		$('#caWishUserNo').val(userData.userNo);
  		//console.log('희망매물 유저넘버 확인 : '+$('#caWishUserNo').val());
  		
  		$.ajax({
  			url : serverURL + 'addWm',
  			dataType : 'json',
  			type : 'post',
  			data : $('#caWishForm').serialize(),
  			success: function(data){
  				$('.loader').toggleClass('loading');
  				if(data.result == 'succ'){
  			    	alert('희망매물을 등록하였습니다. 쇼방 공인중개사님들에게 푸시발송이 되었으며 조건에 부합하는 매물과 매칭하여 직접 연락드리겠습니다.');
  				}else{
  					alert('등록에 실패하였습니다. 해당 오류 관련문의는 063-229-3435 고객센터로 문의바랍니다.');
  				}
  				
  				$('.caWishCate').each(function(){ 
		    		if($(this).hasClass('check')){
		    			$(this).toggleClass('check');		
		    		}
		    	})
		    	$('.caWishSido').each(function(){ 
		    		if($(this).hasClass('check')){
		    			$(this).toggleClass('check');		
		    		}
		    	}) 
		    	$('.caWishType').each(function(){ 
		    		if($(this).hasClass('check')){
		    			$(this).toggleClass('check');		
		    		}
		    	})
		    	$('#wishSidoDirect').val('');
  				$('#caWishMemulLocal').val();
  		  		$('#caWishMemulCate').val();
  		  		$('#caWishMemulType').val();
  			}
  		})  		
  	}
  	
  	/* 복합지역 커뮤니티 글 조회 */
  	function getCaBoradList(){
  		$('.loader').toggleClass('loading');
  		var local = $('#caLocal').val();
  		$.ajax({
  			url : serverURL + 'getCaBoardList',
  			dataType : 'json',
  			type : 'post',
  			data : {'boardLocal':local},
  			success : function(data){
  				var html = '';
  				html += '<table style="width:100%;font-size:13px;color:#000000;">';
  				html += '	<tr>';
  				html += '		<td colspan="3" style="text-align:right;">';
  				html += '			<button type="button" onclick="caCommMenu(2)" style="width:25%;height:30px;padding-top:3px;font-size:13px;background-color:#002266;color:#FFFFFF;">글쓰기</button>';
  				html += '		</td>';
  				html += '	</tr>';
  				html += '	<tr>';
  				html += '		<td style="width:65%;border:1px solid #993800;text-align:center;font-weight:bold;">제목</td>';
  				html += '		<td style="width:20%;text-align:center;border:1px solid #993800;font-weight:bold;">등록일</td>';
  				html += '		<td style="width:15%;text-align:center;border:1px solid #993800;font-weight:bold;">조회수</td>';
  				html += '	</tr>'
  				if(data.length == 0){
  					html += '<tr><td colspan="3" style="text-align:center;">등록된 글이 없습니다.</div>';
  				}else{
  					$.each(data, function(i, data){
  						html += '<tr>';
  						if(data.boardTitle.length > 15){
  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;">'+data.boardTitle.substring(0,15)+'..</td>';
  						}else{
  							html += '	<td onclick="boardDetail('+data.boardNo+')" style="height:30px;border-bottom:1px dotted #ddd;">'+data.boardTitle+'</td>';
  						}  					
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.regDate.substring(5,10)+'</td>';
  	  					html += '	<td style="height:30px;text-align:center;border-bottom:1px dotted #ddd;">'+data.selCnt+'</td>';
  	  					html += '</tr>';
  					})
  				}
  				html += '</table>';
  				
  				$('.loader').toggleClass('loading');
  				
  				$('#caCommunityListDiv').empty();
  				$('#caCommunityListDiv').html(html);
  				$('#caCommunityInputDiv').css('display','none');
  				
  				$('#caCommunityListDiv').slideDown();
  			}
  		})
  	}
  	
  	/* 게시글 상세보기 */
  	function boardDetail(boardNo){
  		//console.log('게시번호 확인 : '+boardNo)
  		$('.loader').toggleClass('loading');
  		$.ajax({
  			url : serverURL + 'boardDetail',
  			dataType : 'json',
  			type : 'post',
  			data : {'boardNo':boardNo},
  			success : function(data){
  				var html = '';
  				html += '<table style="width:100%;font-size:13px;color:#000000;">';
  				html += '	<tr>';
  				html += '		<td style="text-align:right;">';
  				html += '			<button type="button" onclick="caCommMenu(1)" style="width:25%;height:30px;padding-top:3px;font-size:13px;background-color:#002266;color:#FFFFFF;">글목록</button>';
  				html += '		</td>';
  				html += '	</tr>';
  				html += '</table>';
  				html += '<div class="mDetailTitle" style="border:1px solid #ddd;">작성자 -'+data.sbUser.userName.substring(0,2)+'..</div>';
  				html += '<table style="width:100%;padding:2%;">';
  				html += '	<tr>';
  				html += '		<td class="mDetailTbTitle" style="text-align:center;background-color:#ddd;">제목</td>';
  				html += '		<td class="mDetailTbBody">'+data.boardTitle+'</td>';
  				html += '	</tr>';
  				html += '	<tr>';
  				html += '		<td class="mDetailTbTitle" style="text-align:center;background-color:#ddd;">등록일</td>';
  				html += '		<td class="mDetailTbBody">'+data.regDate+' (조회수 - '+data.selCnt+')</td>';
  				html += '	</tr>';
  				html += '	<tr>';
  				html += '		<td colspan="2" style="font-weight:bold;font-size:13px;color:#000000;border-bottom:1px solid #ddd;">'
  				/* html += '			<textarea style="height:100%;width:100%;" readonly>'+data.boardBody+'</textarea>'; */
  				html += '			<pre>'+data.boardBody+'</pre>';
  				html += '		</td>';
  				html += '	</tr>';
  				html += '</table>';
  				
  				$('.loader').toggleClass('loading');
  				$('#caCommunityDetailDiv').empty();
  				$('#caCommunityDetailDiv').html(html);
  				$('#caCommunityListDiv').css('display','none');
  				$('#caCommunityDetailDiv').slideDown();
  			}
  		})
  	}
  	
  	/* 복합 커뮤니티 - 게시글입력 */
  	function getCaCommunityInput(){
  		var html = '';
  		html += '<form method="post" id="addCommForm">';
  		html += '<input type="hidden" name="userNo" id="caCommUserNo" value="'+userData.userNo+'"/>';
  		html += '<input type="hidden" name="boardLocal" id="boardLocal" value="'+$('#caLocal').val()+'"/>';
  		html += '<div class="mDetailTitle" style="border:1px solid #ddd;">작성자 -'+userData.userName+'</div>';
  		html += '<table style="width:100%;padding:2%;">';
  		html += '<tr>';
  		html += '<td class="mDetailTbTitle" style="text-align:center;">제목</td>';
  		html += '<td class="mDetailTbBody"><input type="text" name="boardTitle" id="boardTitle" style="width:100%;height:28px;"/></td>';
  		html += '</tr>';
  		html += '<tr>';
  		html += '<td class="mDetailTbTitle" style="text-align:center;">본문</td>';
  		html += '<td class="mDetailTbBody"><textarea rows="10" name="boardBody" id="boardBody" style="width:100%;"></textarea></td>';
  		html += '</tr>';
  		html += '</table>';
  		html += '<div style="width:100%;height:14px;"></div>';
  		html += '<button type="button" onclick="addCommunity();" style="width:100%;background-color:#002266;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;">등록</button>';
  		html += '</form>';
  		
  		$('#caCommunityInputDiv').empty();
		$('#caCommunityInputDiv').html(html);
		$('#caCommunityListDiv').css('display','none');
		
		$('#caCommunityInputDiv').slideDown();
  	}
  	
  	//게시글입력
  	function addCommunity(){
  		var boardTitle = $('#boardTitle').val();
  		var boardBody = $('#boardBody').val();
  		var userNo = $('#caCommUserNo').val();
  		var boardLocal = $('#boardLocal').val();
  		
  		console.log('게시글 정보확인 : '+userNo+', '+boardLocal);
  		if(boardTitle == null || boardTitle == ''){
  			alert('제목을 입력하세요');
  			return;
  		}
  		
  		if(boardBody == null || boardBody == ''){
  			alert('내용을 입력하세요');
  			return;
  		}
  		
  		$('.loader').toggleClass('loading');
  		$.ajax({
  			url : serverURL + 'addCommunity',
  			data : $('#addCommForm').serialize(),
  			dataType : 'json',
  			type : 'post',
  			success : function(data){
  				$('.loader').toggleClass('loading');
  				if(data.result == 'succ'){
  					alert('게시글을 등록하였습니다.');
  					getCaBoradList();
  				}else{
  					alert('게시글 등록에 실패하였습니다. 해당 오류가 지속될 경우 고객센터(063-229-3435)로 문의바랍니다. 불편을 드려 죄송합니다');
  					return;
  				}
  			}
  		})
  	}
  	
  	/* 복합지역 커뮤니티 쓰기,목록 전환 */
  	function caCommMenu(type){
  		if(type == 2){ //글쓰기로 이동
  			getCaCommunityInput();
  		}else if(type == 1){ //글목록 이동
  			$('#caCommunityInputDiv').css('display','none');
  			$('#caCommunityDetailDiv').css('display','none');
  			getCaBoradList();
  			
  		}
  	}
  	
  	function showRanding(){
  		location.href = serverURL+'randing';
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
<section id="page1" data-role="page" style="background-color:#0e3c84;">
	
	<div class="content" data-role="content" style="width:100%;height:100%;background-color:#0e3c84;text-align:center;">
		<br/><br/><br/><br/><br/><br/>
		<img src="resources/img/showbang.png"/>
		<br/><br/>
		<font style="font-size:30px;color:#ffffff;">JB쇼방</font>
		<br/>
		<div style="height:10px;"></div>
		<font style="font-size:16px;color:#ffffff;">전북지역 부동산·공동구매의 새로운 패러다임</font>
		<br/><br/><br/>
		
	</div>
	
	
	<!--하단배너 영역ed -->
</section>

<!-- 메인화면 -->
<section id="page100" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="예)평화동 아파트" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" class="searchTextBtn" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" class="searchRadioBtn" style="width:90%;"></td>
			</tr>	
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" data-transition="none" onclick="topMenu('1');"><font style="font-size:14px;">제휴업체</font></a></li>
				<li><a href="#" data-transition="none" onclick="topMenu('2');"><font style="font-size:14px;">희망매물</font></a></li>	
				<li><a href="#" data-transition="none" onclick="topMenu('3');"><font style="font-size:14px;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		 
		<div class="swiper-container" id="mAdContainer">
			<div class="swiper-wrapper" id="mAdWrapper">
				<div class="swiper-slide"><img src="resources/files/main/adshowbang.PNG" style="width:100%;height:250px;" onclick="showRanding()"/></div>
				<div class="swiper-slide"><img src="resources/files/main/adshowbang2.PNG" style="width:100%;height:250px;" onclick="showRanding()"/></div>
				
			</div>
			
			<div class="swiper-pagination"></div>
		</div>
		<!-- <div>
			<video src="resources/files/ad/tvad.mp4" id="tvAd" loop controls autoplay style="width:100%;height:250px;"/>
		</div> -->
		<div style="padding-left:2%;padding-right:2%;">
			<table style="width:100%;border:2px solid #E0B94F;margin-top:5px;">
				<tr>
					<td style="width:50px;text-align:right;"><img src="resources/img/tvad.PNG" style="width:30px;"/></td>
					<td onclick="playAdVideo()" style="font-size:20px;font-weight:bold;color:#000000;text-align:center;">전북부동산박람회 <font style="color:#FF0000">JTV광고</font> 보기</td>
				</tr>
			</table>
		</div>
		<table style="width:100%;height:20%;margin-top:10px;padding-left:1em;padding-right:1em;">
			<tr>
				<td onclick="addMemul('1')" style="width:32%;padding-right:1%;"><img src="resources/img/btn_01.jpg" style="width:100%;"/></td>
				<td onclick="addMemul('2')" style="width:32%;padding-right:1%;"><img src="resources/img/btn_02.jpg" style="width:100%;"/></td>
				<td onclick="getAnsim()" style="width:32%;padding-right:1%;"><img src="resources/img/btn_03.jpg" style="width:100%;"/></td>	
			</tr>
		</table>
		<br/>
		<div class="mDetailTitle">복합주거지역</div>
		<table style="width:100%;padding-left:1em;padding-right:1em;margin-top:10px;">
			<tr>
				<td class="menu_box"><img src="resources/img/btn_17.jpg" class="menu_box_img" onclick="movePage2('9')"></td>
				<td class="menu_box"><img src="resources/img/btn_16.jpg" class="menu_box_img" onclick="movePage2('10')"></td>
				<td class="menu_box"><img src="resources/img/btn_15.jpg" class="menu_box_img" onclick="movePage2('11')"></td>
			</tr>
			<tr>
				<td class="menu_box"><img src="resources/img/btn_12.jpg" class="menu_box_img" onclick="movePage2('12')"></td>
				<td class="menu_box"><img src="resources/img/btn_13.jpg" class="menu_box_img" onclick="movePage2('13')"></td>
				<td class="menu_box"><img src="resources/img/btn_14.jpg" class="menu_box_img" onclick="movePage2('14')"></td>
			</tr>
		</table>
		
		<br/>
		<div class="mDetailTitle">공동구매(전체)</div>
		
		<br/>
		<div class="mDetailTitle">부동산</div>
		<table style="width:100%;padding-left:1em;padding-right:1em;padding-top:20px;">
			<tr>
				<td class="menu_box"><img src="resources/img/btn_04.jpg" class="menu_box_img" onclick="movePage2('1')"></td>
				<td class="menu_box"><img src="resources/img/btn_05.jpg" class="menu_box_img" onclick="movePage2('2')"></td>
				<td class="menu_box"><img src="resources/img/btn_06.jpg" class="menu_box_img" onclick="movePage2('3')"></td>
			</tr>
			<tr>
				<td class="menu_box"><img src="resources/img/btn_07.jpg" class="menu_box_img" onclick="movePage2('4')"></td>
				<td class="menu_box"><img src="resources/img/btn_08.jpg" class="menu_box_img" onclick="movePage2('5')"></td>
				<td class="menu_box"><img src="resources/img/btn_09.jpg" class="menu_box_img" onclick="movePage2('6')"></td>
			</tr>
		</table>
		<table style="width:100%;padding-left:1em;padding-right:1em;">
			<tr>
				<td class="menu_box2"><img src="resources/img/btn_10.jpg" class="menu_box_img2" onclick="movePage2('7')"></td>
				<td class="menu_box2"><img src="resources/img/btn_11.jpg" class="menu_box_img2" onclick="movePage2('8')"></td>
			</tr>
			
		</table>
		<br/>		
		
	</div>
	
	<!--하단배너 영역 st -->
	<div id="btm_bn">
		<img src="resources/img/btm_bn.jpg" width="1200" height="394">
	</div>
	<!--하단배너 영역ed -->
</section>

<!-- 지역선택화면 -->
<section id="page2" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr>	
		</table>
		<!-- <div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:16px;">제휴업체</font></a></li>
				<li><a href="#" data-transition="none"><font style="font-size:16px;">매물원해요</font></a></li>	
				<li><a href="#" data-transition="none"><font style="font-size:16px;">정보</font></a></li>			
			</ul>
		</div> -->
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<input type="hidden" id="saveType" value="1"/>
		<input type="hidden" id="saveLocal" value="1"/>
		<input type="hidden" id="saveCate" value="1"/>
		<input type="hidden" id="saveDong" value="동없음"/>
		<table style="width:100%;padding:1em;">
			<tr>
				<td class="menu_box2"><img src="resources/img/apt_btn01.jpg" class="menu_box_img2" onclick="getMemulList('1')"/></td>
				<td class="menu_box2"><img src="resources/img/apt_btn02.jpg" class="menu_box_img2" onclick="getMemulList('2')"></td>
			</tr>
			<tr>
				<td class="menu_box2"><img src="resources/img/apt_btn03.jpg" class="menu_box_img2" onclick="getMemulList('3')"></td>
				<td class="menu_box2"><img src="resources/img/apt_btn04.jpg" class="menu_box_img2" onclick="getMemulList('4')"></td>
			</tr>
			
		</table>
		<br/><br/>
		<div class="swiper-container" id="localAd">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="resources/files/main/main1.PNG" style="width:100%;"/></div>
				<div class="swiper-slide"><img src="resources/files/main/main2.PNG" style="width:100%;"/></div>
			</div>
			
		    <div class="swiper-pagination"></div>	
		</div>
	</div>
	
</section>

<!-- 매물목록 -->
<section id="page3" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr>	
		</table>
		
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none" onclick="setMemulByType('1')"><font style="font-size:14px;">매매</font></a></li>
				<li><a href="#" data-transition="none"><font style="font-size:14px;" onclick="setMemulByType('2')">전세</font></a></li>	
				<li><a href="#" data-transition="none"><font style="font-size:14px;" onclick="setMemulByType('3')">월세</font></a></li>			
			</ul>
		</div><!-- /navbar -->
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;" id="memulListDiv">
			<select name="dongSb" id="dongSb" data-native-menu="false" style="font-size:14px;">
				<option>동 별 매물보기</option>
				<option>평화동</option>
				<option>효자1동</option>
				<option>효자2동</option>
				<option>중노송동</option>
				<option>경원동</option>
				<option>중앙동</option>
			</select>
			
			<table style="width:100%;padding:2%;" id="memulListResultTb">
			</table>
		</div>
		
		<div style="width:100%;display:none;" id="memulDetailDiv">
		
		</div>	
	</div>
	
</section>

<!-- 매물등록 -->
<section id="page4" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<!-- <tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr> -->	
		</table>
		<!-- <div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none"><font style="font-size:16px;">제휴업체</font></a></li>
				<li><a href="#" data-transition="none"><font style="font-size:16px;">매물원해요</font></a></li>	
				<li><a href="#" data-transition="none"><font style="font-size:16px;">정보</font></a></li>			
			</ul>
		</div> -->
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;font-size:14px;">
		<div id="adderInfoDiv" style="width:100%;">
		
		</div>
		<br/>
		
		<form id="addMemulForm" enctype="multipart/form-data" method="post">
			<div class="mDetailTitle">*매물사진을 등록해주세요</div>
			<table style="width:100%;height:30%;padding:2%;">
				<tr>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment1" class="ment">사진1</p>
							<input type="file" name="mImg1" id="mImg1" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView1" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment2" class="ment">사진2</p>
							<input type="file" name="mImg2" id="mImg2" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView2" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment3" class="ment">사진3</p>
							<input type="file" name="mImg3" id="mImg3" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView3" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment4" class="ment">사진4</p>
							<input type="file" name="mImg4" id="mImg4" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView4" class="mImgView"/>						
						</div>
					</td>
				</tr>
				<tr>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment5" class="ment">사진5</p>
							<input type="file" name="mImg5" id="mImg5" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView5" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment6" class="ment">사진6</p>
							<input type="file" name="mImg6" id="mImg6" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView6" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment7" class="ment">사진7</p>
							<input type="file" name="mImg7" id="mImg7" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView7" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment8" class="ment">사진8</p>
							<input type="file" name="mImg8" id="mImg8" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView8" class="mImgView"/>						
						</div>
					</td>
				</tr>
				<tr>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment9" class="ment">사진9</p>
							<input type="file" name="mImg9" id="mImg9" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView9" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment10" class="ment">사진10</p>
							<input type="file" name="mImg10" id="mImg10" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView10" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment11" class="ment">사진11</p>
							<input type="file" name="mImg11" id="mImg11" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView11" class="mImgView"/>						
						</div>
					</td>
					<td class="imgSpace">
						<div class="fileInputDiv">
							<p id="ment12" class="ment">사진12</p>
							<input type="file" name="mImg12" id="mImg12" class="fileInputHidden" accept="image/*" multiple/>
							<img src="#" id="mImgView12" class="mImgView"/>						
						</div>
					</td>
				</tr>
			</table>
			<br/>
			
			<div class="mDetailTitle">매물정보</div>
			<table style="width:100%;padding:2%;">
				<tr>
					<td class="mDetailTbTitle">매물타입</td>
					<td class="mDetailTbBody">
						<select data-native-menu="false" style="font-size:13px;" name="type" id="type" onchange="setPrice(this.value)">
							<option>매매/전월세 선택</option>
							<option value="1">매매</option>
							<option value="2">전세</option>
							<option value="3">월세</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="mDetailTbTitle">매물종류</td>
					<td class="mDetailTbBody">
						<select data-native-menu="false" style="font-size:13px;" name="mCate" id="mCate" onchange="setArea(this.value)">
							<option>종류선택</option>
							<option value="1">아파트</option>
							<option value="2">빌라</option>
							<option value="3">상가</option>
							<option value="4">주택</option>
							<option value="5">토지/공장</option>
							<option value="6">신규분양</option>
							<option value="7">분양권매매</option>
						</select>
					</td>
				</tr>
				<tr id="areaTr">
				
				</tr>			
				<tr id="priceTr">
						
				</tr>
				<tr id="monthlyPriceTr">
				
				</tr>
				<tr>
					<td class="mDetailTbTitle">매물주소</td>
					<td class="mDetailTbBody">
						<button type="button" style="width:100%;background-color:#002266;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;" onclick="searchAdd();">주소찾기</button>
						<input type="hidden" name="local" id="local"/>
						<input type="hidden" name="si" id="si"/>
						<input type="hidden" name="dong" id="dong"/>
						<input type="hidden" name="zipcode" id="zipcode"/>
						<input type="hidden" name="roadAdd" id="roadAdd"/>
						<input type="hidden" name="jibunAdd" id="jibunAdd"/>
						<input type="text" name="address" id="address" placeholder="주소검색을 통해 입력하세요" readonly/>
						<input type="text" name="sangse" id="sangse" placeholder="상세주소"/>
					</td>
				</tr>
				<tr>
					<td class="mDetailTbTitle">글제목</td>
					<td class="mDetailTbBody">
						<input type="text" name="title" id="title" placeholder="제목 입력"/>						
					</td>
				</tr>
				<tr>
					<td class="mDetailTbTitle">상세내용</td>
					<td class="mDetailTbBody">
						<textarea name="mainText" id="mainText" placeholder="상세내용"></textarea>						
					</td>
				</tr>
			</table>
			
			<br/>
			<table style="width:100%;" id="optionTb">
				
			</table>
			<div style="width:100%;">
				<button type="button" style="width:100%;background-color:#2F9D27;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;" onclick="addMemulServ()">매물등록하기</button>
			</div>
		</form>
	</div>
	
	<!-- <div style="overflow: hidden;width:100%;text-align:center;color:#F6F6F6;background-color:#CC723D;" data-role="footer" data-tap-toggle="false" data-position="fixed">
	   <font style="font-size:14px;">Make By Acube Company</font>
	</div> -->
</section>

<!-- 로그인 -->
<section id="page5" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			
		</table>
		
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<br/><br/>
		<div style="width:100%;height:100%;text-align:center;">
			<table style="width:90%;text-align:center;border:10px solid #AFE0FF;margin-left:5%;background-color:rgba(255,255,255,0.5);">
				<tr>
					<td style="width:100%;text-align:center;color:#4C4C4C;font-weight:bold;font-size:22px;" colspan="2">LogIn</td>
				</tr>
				<tr>
					<td style="width:100%;text-align:center;padding:10px;" colspan="2"><input type="text" placeholder="ID" name="loginId" id="loginId" style="width:80%;height:30px;"/></td>
				</tr>
				<tr>
					<td style="width:100%;text-align:center;padding:10px;" colspan="2"><input type="password" placeholder="휴대폰번호(-) 빼고 입력" name="loginPw" id="loginPw" style="width:80%;height:30px;"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="checkbox" checked="checked" name="loginAutoCheck" id="loginAutoCheck" value="checked"/>
						<font style="font-weight:bold;color:#050099;padding-left:35px;">로그인 상태 유지</font>	
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center;padding:10px;font-weight:bold;font-size:22px;"><button style="width:100%;background-color:#003399;color:#FFFFFF;height:30px;font-size:13px;padding-top:4px;" onclick="moveSignUp();">회원가입</button></td>
					<td style="width:50%;text-align:center;padding:10px;font-weight:bold;font-size:22px;"><button style="width:100%;background-color:#476600;color:#FFFFFF;height:30px;font-size:13px;padding-top:4px;" onclick="logIn();">로그인</button></td>
				</tr>
				<tr>
					<td style="width:100%;text-align:center;" colspan="2"><br/></td>
				</tr>
			</table>
			
		
		</div>
	</div>
	
	<div style="overflow: hidden;width:100%;text-align:center;color:#F6F6F6;background-color:#CC723D;" data-role="footer" data-tap-toggle="false" data-position="fixed">
	   <div class="swiper-container" id="loginAd">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="resources/files/slide/slideAd1.PNG" style="width:100%;"/></div>
				<div class="swiper-slide"><img src="resources/files/slide/slideAd3.PNG" style="width:100%;"/></div>
			</div>
			
		    <div class="swiper-pagination"></div>	
		</div>
	</div>
</section>

<!-- 회원가입 -->
<section id="page6" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>	
		</table>		
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;font-size:13px;">
		<div style="width:100%;height:100%;">
			<div class="mDetailTitle"><font style="font-size:17px;">회원가입</font></div>
			<form id="signUpForm" method="post">
				<table style="width:100%;padding:3%;background-color:rgba(255,255,255,0.5);color:#000000;">
					<!-- <tr>
						<td colspan="3" style="width:100%;text-align:center;background-color:#AFE0FF;color:#4C4C4C;font-weight:bold;font-size:22px;">
							회원가입
							<br/><font style="font-size:13px;">(*은 필수입력)</font>
						</td>
					</tr> -->
					<tr>
						<td colspan="3" style="width:100%;">
							<font style="font-weight:bold;">*아이디:</font><br/>
							<input type="text" name="userName" id="userName" placeholder="ID(아이디 혹은 이름 무관)" style="width:80%;height:30px;"/>
						</td>
					</tr>
					<tr>
						<td colspan="3" style="width:100%;">
							<font style="font-weight:bold;">*휴대폰번호:</font><br/>
							<input type="text" name="userHp" id="userHp" placeholder="Mobile(-제외 숫자만 입력. 예:01011112222)" style="width:80%;height:30px;"/>
						</td>
					</tr>
					<tr>
						<td colspan="3" style="width:100%;">
							<font style="font-weight:bold;">*관심지역:</font>						
						</td>
					</tr>
					<tr>
						<td style="width:33%;border:3px solid #ddd;text-align:center;height:50px;" class="localCheck">
							전주
							<input type="hidden" name="checkLocal" id="checkLocal" value="1"/>			
						</td>
						<td style="width:33%;border:3px solid #ddd;text-align:center;height:50px;" class="localCheck">
							익산
							<input type="hidden" name="checkLocal" id="checkLocal" value="1"/>			
						</td>
						<td style="width:33%;border:3px solid #ddd;text-align:center;height:50px;" class="localCheck">
							군산	
							<input type="hidden" name="checkLocal" id="checkLocal" value="1"/>	
						</td>
						<!-- <td style="width:33%;border:3px solid #ddd;text-align:center;height:50px;" class="img-check">
							전북		
							<input type="hidden" name="checkLocal" id="checkLocal" value="1"/>
						</td> -->
					</tr>
					<tr>
						<td colspan="3" style="width:100%;padding-left:10px;padding-right:10px;">
							<input type="checkbox" style="width:15px;height:15px;" checked="checked" name="pushCheck" value="checked"/>
							<font style="font-weight:bold;padding-left:25px;color:#FF0000;">관심지역 매물 최신정보 푸시 수신에 동의</font><br/><br/>						
						</td>
					</tr>
					<tr>
						<td colspan="3" style="width:100%;padding-left:10px;padding-right:10px;">
							<font style="font-weight:bold;">*공인중개사 여부:</font>						
						</td>
					</tr>
					<tr>
						<td style="width:33%;border:3px solid #ddd;text-align:center;height:50px;" class="userTypeCheck">
							<font>공인중개사</font>
							<input type="hidden" name="checkUserType" id="checkUserType" value="1"/>			
						</td>
						<td style="width:33%;border:3px solid #ddd;text-align:center;height:50px;" class="userTypeCheck">
							집주인
							<input type="hidden" name="checkUserType" id="checkUserType" value="1"/>			
						</td>
						<td style="width:33%;border:3px solid #ddd;text-align:center;height:50px;" class="userTypeCheck">
							해당없음	
							<input type="hidden" name="checkUserType" id="checkUserType" value="1"/>	
						</td>
									
					</tr>
					<tr id="shopInputTr" style="display:none;">
						<td colspan="3" style="width:100%;">
							<font style="font-weight:bold;"><br/>*업장 상호명:</font><br/>
							<input type="text" name="userShopName" id="userShopName" placeholder="소속 업장 상호명을 입력"/>						
						</td>
					</tr>
					<tr id="addressTr" style="display:none;">
						<td colspan="3" style="width:100%;">
							<font style="font-weight:bold;">*업장 주소:</font> 
							<button type="button" class="btn btn-success btn-block" onclick="execDaumPostCode();">주소검색</button>
							<input type="hidden" name="userSearchAdd" id="userSearchAdd"/>
							<input type="text" name="userAddress" id="userAddress" placeholder="주소검색을 이용하세요" readonly/>	
							<input type="text" name="userSangseAddress" id="userSangseAddress" placeholder="상세주소"/>		
						</td>
					</tr>
					<tr id="introTr" style="display:none;">
						<td colspan="3" style="width:100%;">
							<font style="font-weight:bold;">*중개사 소개글:</font><br/>
							<textarea type="text" name="userIntro" id="userIntro" placeholder="소개글"></textarea>						
						</td>       
					</tr>
					<tr>
						<td colspan="3" style="width:100%;">
							<br/>
							<input type="checkbox" style="width:15px;height:15px;" checked="checked" name="autoLogin" value="checked"/>
							<font style="font-weight:bold;padding-left:25px;color:#050099;">회원가입 후 자동로그인</font>			
						</td>
					</tr>
					<tr>
						<td colspan="3" style="width:100%;padding:3px;font-weight:bold;font-size:22px;"><button style="width:100%;background-color:#002266;color:#FFFFFF;height:30px;font-size:13px;padding-top:4px;" onclick="signUp();">회원가입</button></td>					
					</tr>
					<tr>
						<td colspan="3" style="width:100%;text-align:center;"><br/></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</section>

<!-- 제휴업체 -->
<section id="page7" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr>	
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" onclick="topMenu('1');"><font style="font-size:14px;">제휴업체</font></a></li>
				<li><a href="#" data-transition="none" onclick="topMenu('2');"><font style="font-size:14px;">희망매물</font></a></li>	
				<li><a href="#" data-transition="none" onclick="topMenu('3');"><font style="font-size:14px;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;text-align:center;">
			<img src="resources/files/ad/adLogo.PNG" style="width:60%;"/>
		</div>
		
		<table style="width:100%;padding:1%;">
			<tr>
				<td colspan="2" class="sAd">
					<img src="resources/files/ad/s_ad1.PNG" style="width:99%;"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="sAd">
					<img src="resources/files/ad/s_ad2.PNG" style="width:99%;"/>
				</td>
			</tr>
		</table>
		<br/>
		<table style="width:100%;padding:1%;">
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad1.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad2.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad3.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad4.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad5.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad6.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad7.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad8.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad1.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad2.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad3.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad4.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad5.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad6.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad7.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad8.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad1.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad2.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad3.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad4.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad5.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad6.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad7.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad8.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad1.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad2.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad3.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad4.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad5.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad6.PNG" style="width:99%;"/></td>
			</tr>
			<tr>
				<td class="adTd"><img src="resources/files/ad/ad7.PNG" style="width:99%;"/></td>
				<td class="adTd"><img src="resources/files/ad/ad8.PNG" style="width:99%;"/></td>
			</tr>
		</table>
	</div>
	
	
</section>

<!-- 매물원해요 -->
<section id="page8" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr>	
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" onclick="topMenu('1');"><font style="font-size:14px;">제휴업체</font></a></li>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none" onclick="topMenu('2');"><font style="font-size:14px;">희망매물</font></a></li>	
				<li><a href="#" data-transition="none" onclick="topMenu('3');"><font style="font-size:14px;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;font-size:13px;">
		<div style="width:100%;">
			<p style="border:1px solid #2F9D27;font-weight:bold;font-size:13px;font-color:#050099">
				★ 원하시는 매물 조건을 올려주시면 쇼방 중개사님 들이 조건에 맞는 매물을 확인해서 연락드리는 시스템입니다.
			</p>
		</div>
		<br/>
		
		<table style="width:100%;">
			<tr>
				<td class="wishMemulTitle" colspan="4">시도</td>
			</tr>
			<tr>
				<td class="wishMemulbody wishSido">전주</td>
				<td class="wishMemulbody wishSido">익산</td>
				<td class="wishMemulbody wishSido">군산</td>
				<td class="wishMemulbody wishSido">전북</td>
			</tr>
			<tr style="height:14px;"></tr>
			<tr>
				<td class="wishMemulTitle" colspan="4">동</td>
			</tr>
			<tr id="wishDongTr">
				<td colspan="4">
					<select name="wishDong" id="wishDong" data-native-menu="false" style="text-align:center;">
						<option id="selDongOpt">동선택</option>
					</select>
				</td>				
			</tr>
			<tr id="wishDongMent" style="color:#FF0000;font-weight:bold;display:none;">
				<td colspan="4" style="text-align:center;">☆두 개이상 지역 선택시 동 선택불가<br/></td>
			</tr>
			<tr style="height:8px;"></tr>
			<tr>
				<td class="wishMemulTitle" colspan="4">매물종류</td>
			</tr>
			<tr>
				<td class="wishMemulbody wishCate">아파트</td>
				<td class="wishMemulbody wishCate">빌라</td>
				<td class="wishMemulbody wishCate">상가</td>
				<td class="wishMemulbody wishCate">주택</td>							
			</tr>
		</table>
		<table style="width:100%;">
			<tr>
				<td class="wishMemulbody wishCate">토지/공장</td>
				<td class="wishMemulbody wishCate">신규분양</td>
				<td class="wishMemulbody wishCate">분양권매매</td>						
			</tr>
			<tr style="height:14px;"></tr>
			<tr>
				<td class="wishMemulTitle" colspan="3">매물형태</td>
			</tr>
			<tr>
				<td class="wishMemulbody wishType">매매</td>
				<td class="wishMemulbody wishType">전세</td>
				<td class="wishMemulbody wishType">임대</td>						
			</tr>
			
		</table>
		<table style="width:100%;margin-top:14px;">
			<tr>
				<td class="wishMemulTitle">매물금액</td>
			</tr>
			<tr>
				<td>
					<select name="wishTradePrice" data-native-menu="false" onchange="tradeChange(this.value)">
						<option>매매가 상한금액</option>
						<option value="50000000">5천만원 이하</option>
						<option value="100000000">1억 이하</option>
						<option value="200000000">2억 이하</option>
						<option value="300000000">3억 이하</option>
						<option value="500000000">5억 이하</option>
						<option value="1000000000">10억 이하</option>
					</select>
				</td>		
			</tr>
			<tr>
				<td>
					<select name="wishCharterPrice" data-native-menu="false" onchange="charterChange(this.value)">
						<option>보증금 상한금액</option>
						<option value="5000000">5백만원 이하</option>
						<option value="10000000">1천만원 이하</option>
						<option value="20000000">2천만원 이하</option>
						<option value="30000000">3천만원 이하</option>
						<option value="50000000">5천만원 이하</option>
						<option value="80000000">8천만원 이하</option>
						<option value="100000000">1억원 이하</option>
						<option value="150000000">1억5천만원 이하</option>
						<option value="200000000">2억원 이하</option>
						<option value="300000000">3억원 이하</option>
						<option value="500000000">5억원 이하</option>
					</select>
				</td>		
			</tr>
			<tr>
				<td>
					<select name="wishMonthlyPrice" data-native-menu="false" onchange="monthlyChange(this.value)">
						<option>임대료 상한금액</option>
						<option value="300000">3십만원 이하</option>
						<option value="500000">5십만원 이하</option>
						<option value="1000000">1백만원 이하</option>
						<option value="2000000">2백만원 이하</option>
						<option value="3000000">3백만원 이하</option>
						<option value="5000000">5백만원 이하</option>
						<option value="10000000">1천만원 이하</option>
						<option value="20000000">2천만원 이하</option>
						<option value="30000000">3천만원 이하</option>
						<option value="50000000">5천만원 이하</option>
						<option value="100000000">1억원 이하</option>
					</select>
				</td>		
			</tr>
		</table>
		
		<br/>
		<form>
			<input type="hidden" name="wishMemulSido" id="wishMemulSido"/>
			<input type="hidden" name="wishMemulDong" id="wishMemulDong"/>
			<input type="hidden" name="wishMemulCate" id="wishMemulCate"/>
			<input type="hidden" name="wishMemulType" id="wishMemulType"/>
			<input type="hidden" name="wishMemulTradePrice" id="wishMemulTradePrice"/>
			<input type="hidden" name="wishMemulCharterPrice" id="wishMemulCharterPrice"/>
			<input type="hidden" name="wishMemulDeposit" id="wishMemulDeposit"/>
			<input type="hidden" name="wishMemulMonthlyPrice" id="wishMemulMonthlyPrice"/>
			
			<div style="width:100%;padding:2%;">
				<button type="button" style="width:100%;background-color:#003399;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;">등록</button>
			</div>
		</form>
	</div>		
</section>

<!-- 정보 -->
<section id="page9" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr>	
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" onclick="topMenu('1');"><font style="font-size:14px;">제휴업체</font></a></li>
				<li><a href="#" data-transition="none" onclick="topMenu('2');"><font style="font-size:14px;">희망매물</font></a></li>	
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none" onclick="topMenu('3');"><font style="font-size:14px;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		
		<div id="communityDiv" style="width:100%;">		
			<div id="communityListDiv" style="width:100%;">
				
			</div>
			<div id="communityDetailDiv" style="display:none;width:100%;">
			
			</div>
			<div id="communityInputDiv" style="display:none;width:100%;">
				
			</div>
		</div>
		
		<br/>		
	</div>		
</section>

<!-- 책임중개사 찾기 -->
<section id="page10" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr>	
		</table>
		<div data-role="navbar">
			<ul>
				<li><a href="#" onclick="topMenu('1');"><font style="font-size:14px;">제휴업체</font></a></li>
				<li><a href="#" data-transition="none" onclick="topMenu('2');"><font style="font-size:14px;">희망매물</font></a></li>	
				<li><a href="#" data-transition="none" onclick="topMenu('3');"><font style="font-size:14px;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<div style="width:100%;padding:2%;">
			<p style="font-weight:bold;font-size:15px;font-color:#670000;text-align:center;">
				★우리동네 책임중개사 검색
			</p>
		</div>
		
		<table style="width:100%;padding-left:2%;padding-right:2%;">
			<tr>
				<td><button type="button" style="padding:1%;background-color:#FAE0D4;" onclick="searchAnsimType('1')">지역선택<br/>검색</button></td>
				<td><button type="button" style="padding:1%;background-color:#FAED7D;" onclick="searchAnsimType('2')">현재위치기반<br/>검색</button></td>
			</tr>
		</table>
		
		<!-- 지역선택 -->
		<div id="searchForLocalDiv" style="width:100%;height:100%;display:none;">
			<form id="searchAnsimForm" method="post">
				<table style="width:100%;padding:2%;text-align:center;">
					<tr>
						<td colspan="4" style="background-color:#FFFFE9;text-align:center;font-weight:bold;">시도</td>
					</tr>
					<tr>
						<td class="wishMemulbody ansimLocal">전주</td>
						<td class="wishMemulbody ansimLocal">익산</td>
						<td class="wishMemulbody ansimLocal">군산</td>
						<td class="wishMemulbody ansimLocal">전북</td>
					</tr>
					<tr style="height:13px;"></tr>
					<tr>
						<td colspan="4" style="background-color:#FFFFE9;text-align:center;font-weight:bold;">동</td>
					</tr>
					<tr>
						<td colspan="4">
							<select name="searchAnsimDong" id="searchAnsimDong" data-native-menu="false">
								<option>동 선택</option>
								
							</select>
						</td>
					</tr>
				</table>	
			</form>
		</div>
		
		<!-- 안심중개사 조회내용 -->
		<div id="ansimSearchResultDiv" style="width:100%;display:none;text-align:center;padding:2%;color:#000000;">
		
		</div>		
	</div>		
</section>

<!-- 지역선택화면 -->
<section id="page11" data-role="page">
	<header data-role="header" data-tap-toggle="false" data-position="fixed" style="background-color:#f5f5f5;">
		<table style="width:100%;">
			<tr>
				<td colspan="2" style="padding-left:1em;width:80%;border-bottom:2px solid #ddd;" onclick="javascript:location.href='#page100'"><img src="resources/img/logo.jpg" style="width:60%;height:auto;max-height:92px;"/></td>
				<td style="text-align:right;padding-right:10px;border-bottom:2px solid #ddd;"><img src="resources/img/hamberger.PNG" style="width:35px;" id="slideMenuBtn"/>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="width:64%;">
					<input type="text" class="form-control input-lg" name="searchBang" id="searchBang" style="width:80%;" placeholder="매물정보" />
				</td>
				<td style="width:18%;text-align:right;"><img src="resources/img/search_btn.gif" style="width:90%;"></td>
				<td style="width:18%;text-align:right;"><img src="resources/img/v_serbtn.gif" style="width:90%;"></td>
			</tr>	
		</table>
		<div class="mDetailTitle" id="caTitle"></div>
		<div data-role="navbar">
			<ul>
				<li><a href="#" class="ui-btn-active ui-state-persist" data-transition="none" onclick="caTopMenu('1')"><font style="font-size:13px;">매물</font></a></li>
				<li><a href="#" data-transition="none" onclick="caTopMenu('2')"><font style="font-size:13px;">제휴업체</font></a></li>
				<li><a href="#" data-transition="none" onclick="caTopMenu('3')"><font style="font-size:13px;">희망매물</font></a></li>	
				<li><a href="#" data-transition="none" onclick="caTopMenu('4')"><font style="font-size:13px;">커뮤니티</font></a></li>			
			</ul>
		</div>
	</header>
	<div class="content" data-role="content" style="width:100%;height:100%;">
		<input type="hidden" id="caLocal"/>
		<div style="height:5px;"></div>
		
		<div class="ca" id="caMemulDiv">
			복합지역 매물목록
		</div>
		
		<div class="ca" id="caJehuDiv" style="display:none;">
			복합지역 제휴업체
		</div>
		
		<div class="ca" id="caWishMemulDiv" style="display:none;">
			<div style="width:100%;">
				<p style="border:1px solid #2F9D27;font-weight:bold;font-size:13px;font-color:#050099">
					★ 원하시는 매물 조건을 올려주시면 쇼방 중개사님 들이 조건에 맞는 매물을 확인해서 연락드리는 시스템입니다.
				</p>
			</div>
			<br/>
			
			<table style="width:100%;">
				<tr>
					<td class="wishMemulTitle" colspan="4">지역선택</td>
				</tr>
				<tr>
					<td class="caWishMemulbody caWishSido">에코시티</td>
					<td class="caWishMemulbody caWishSido">만성지구</td>
					<td class="caWishMemulbody caWishSido">효천지구</td>
					<td class="caWishMemulbody caWishSido">혁신도시</td>
				</tr>
				<tr>
					<td class="caWishMemulbody caWishSido">신시가지</td>
					<td class="caWishMemulbody caWishSido">한옥마을</td>
					<td class="caWishMemulbody caWishSido">객리단길</td>
					<td class="caWishMemulbody caWishSido">직접입력</td>
				</tr>
				<tr id="wishDirectInputTr" style="display:none;">
					<td colspan="4">
						<input type="text" id="wishSidoDirect" style="width:100%;height:30px;" placeholder="원하시는 동, 지역을 입력. 예)평화동"/>
					</td>
				</tr>
				<tr style="height:14px;"></tr>
				
				<tr>
					<td class="wishMemulTitle" colspan="4">매물종류</td>
				</tr>
				<tr>
					<td class="caWishMemulbody caWishCate">아파트</td>
					<td class="caWishMemulbody caWishCate">빌라</td>
					<td class="caWishMemulbody caWishCate">상가</td>
					<td class="caWishMemulbody caWishCate">주택</td>							
				</tr>
			</table>
			<table style="width:100%;">
				<tr>
					<td class="caWishMemulbody caWishCate">토지/공장</td>
					<td class="caWishMemulbody caWishCate">신규분양</td>
					<td class="caWishMemulbody caWishCate">분양권매매</td>						
				</tr>
				<tr style="height:14px;"></tr>
				<tr>
					<td class="wishMemulTitle" colspan="3">매물형태</td>
				</tr>
				<tr>
					<td class="caWishMemulbody caWishType">매매</td>
					<td class="caWishMemulbody caWishType">전세</td>
					<td class="caWishMemulbody caWishType">임대</td>						
				</tr>
				
			</table>
			
			<br/>
			<form id="caWishForm" method="post">
				<input type="hidden" name="wmLocal" id="caWishMemulLocal"/>
				<input type="hidden" name="wmCate" id="caWishMemulCate"/>
				<input type="hidden" name="wmType" id="caWishMemulType"/>
				<input type="hidden" name="userNo" id="caWishUserNo"/>
				
				<div style="width:100%;padding:2%;">
					<button type="button" onclick="addCaWm();" style="width:100%;background-color:#003399;color:#FFFFFF;height:30px;font-size:13px;padding-top:3px;">등록</button>
				</div>
			</form>
		</div>
		
		<div class="ca" id="caCommunityDetailDiv" style="display:none;width:100%;">
		
		</div>
		<div class="ca" id="caCommunityDiv" style="display:none;width:100%;">		
			<div id="caCommunityListDiv" style="width:100%;">
				
			</div>
			
			<div id="caCommunityInputDiv" style="display:none;width:100%;">
				
			</div>
		</div>
		
	</div>
	
</section>


</body>
</html>
