<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>홍삼베리 - 6년근홍삼+고창복분자 건강식품</title>
	<!-- <meta property="og:type" content="website">
	<meta property="og:title" content="홍삼베리 - 6년근홍삼+고창복분자 건강식품">
	<meta property="og:url" content="http://www.hsberry.kr">
	<meta property="og:image" content="http://smartwed.kr/upData/lnd/OTQIOTIIOTIINTgINAgzCDEIODEINAgyCDkxCDg3CDg1CDg0CDEwNAg4MAgxMQg3CDg2CDcINwgwCDcINgg4CDE0CDAI">
	<meta property="og:description" content="명품건강식품 홍삼베리, 온라인최저가, 부모님건강식품, 효도선물, 아버지선물, 피로회복,기력회복에 좋은음식">
	<meta name="description" content="명품건강식품 홍삼베리, 온라인최저가, 부모님건강식품, 효도선물, 아버지선물, 피로회복,기력회복에 좋은음식">
	<link rel="canonical" href="http://www.hsberry.kr">
	<meta name="naver-site-verification" content="ed214cd55c81bd11f2bd0ac438dfb27713a8d5ae"/>	 -->
	
	<script src="resources/js/jquery.js"></script>
	<!-- 우편번호(다음) -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    
	<style>
	
	.container {margin-right: auto;margin-left: auto;padding-bottom: 100px;width:45%;height:auto;}
	.container2 {margin-right: auto;margin-left: auto;width:100%;height:auto;}
	.question {font-weight:bold;}
	.inputBox{width:100%;height:30px;margin-top:5px;}
	.tdBottom{text-align:center;margin-top:5px;}
	.show{display:none;}
	@media ( max-width: 480px ) {
		.container {
		 width:auto;
		}
		.container2 {
		 width:auto;
		}
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
	 	var URL = "http://202.31.237.159:8080/www/hsberry";
	 	
		$(document).on('click','#privercy',function(){
			console.log('h2')
			$('.prText').toggleClass('show');
		})
		
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
	                $('#address').val(fullAddr);
	                //console.log(data.roadAddress.trim()+data.jibunAddress.trim());
	                // 커서를 상세주소 필드로 이동한다.
	                $('#addSangse').focus();
	            }
	        }).open();
	    }
		
		$(document).on('click','#addOrder',function(){
			if(confirm('주문하시겠습니까?')){
				alert('주문이 완료되었습니다.\n기타 주문관련 궁금한 사항은 010-3677-4213번으로 연락바랍니다');
			}
		})
		
		function setSubImg(type){
			if(type == 1){
				$('#mainImgDiv').css('display','none');
				
				$('#subImgDiv').css('display','');
				$('#exitCheck').val('2');
			}else if(type == 2){
				$('#mainImgDiv').css('display','none');
				
				$('#subImgDiv2').css('display','');
				$('#exitCheck').val('2');
			}else if(type == 3){
				location.href=URL;
			}
		}
		
	function topMenu(type){
		$('.container').css('display','none');
		if(type == 1){
			$('#mainPage').slideDown();
		}else if(type == 2){
			$('#companyInfo').slideDown();
		}else if(type == 3){
			$('#catalog').slideDown();
		}
	}
	
	$(document).on('click','#addOrder',function(){
		var name = $('#name').val();
		var hp = $('#hp').val();
		var address = $('#address').val();
		var addSangse = $('#addSangse').val();
		var option = $('input[name=option]');
		
	})
	
	</script>
</head>
 <body>
 	<div class="container2" style="border-bottom:3px solid #ddd;">
 		<div style="width:80%;margin-left:10%;">
 			<img onclick="topMenu(1)" src="resources/img/hslogo.PNG" style="width:20%;"/>
 			<font onclick="topMenu(2)" style="font-weight:bold;color:#000000;padding-left:20px;padding-right:20px;width:30%;">회사소개</font>
 			<font onclick="topMenu(3)" style="font-weight:bold;color:#000000;padding-left:20px;padding-right:20px;width:30%;">카탈로그</font>
 		</div>
 	</div>
 	<div class="container" id="companyInfo" style="display:none;">
 		<img src="resources/img/info1.PNG" style="width:100%;">
 		<img src="resources/img/info2.PNG" style="width:100%;">
 		<img src="resources/img/info3.PNG" style="width:100%;">
 		<img src="resources/img/info4.PNG" style="width:100%;">
 		<img src="resources/img/info5.PNG" style="width:100%;">
 		<img src="resources/img/info6.PNG" style="width:100%;">
 		<img src="resources/img/info7.PNG" style="width:100%;">
 	</div>
 	<div class="container" id="catalog" style="display:none;">
 		<img src="resources/img/cata1.PNG" style="width:100%;">
 		<img src="resources/img/cata2.PNG" style="width:100%;">
 		<img src="resources/img/cata3.PNG" style="width:100%;">
 		<img src="resources/img/cata4.PNG" style="width:100%;">
 		<img src="resources/img/cata5.PNG" style="width:100%;">
 	</div>
	<div class="container" id="mainPage">
		<div id="topDiv"></div>
		<input type="hidden" id="exitCheck" value="1"/>
		<div id="mainImgDiv">
			<a href="#inputForm"><img src="resources/img/111.jpg" style="width:100%;"></a>
			<a href="#" onclick="setSubImg(1)"><img src="resources/img/hs2.png" style="width:100%;"></a>
			<a href="#" onclick="setSubImg(2)"><img src="resources/img/hs3.png" style="width:100%;"></a>
		</div>
		<br/>
		<div id="subImgDiv" style="display:none;">
			<img src="resources/img/sub1.jpg" style="width:100%;">
			<input type="button" onclick="setSubImg(3)" style="width:100%;height:40px;background-color:#002266;color:#FFFFFF;font-size:20px;" value="메인화면으로 돌아가기"/>
		</div>
		<div id="subImgDiv2" style="display:none;">
			<img src="resources/img/sub2.jpg" style="width:100%;">
			<input type="button" onclick="setSubImg(3)" style="width:100%;height:40px;background-color:#002266;color:#FFFFFF;font-size:20px;" value="메인화면으로 돌아가기"/>
		</div>
		
		<a name="inputForm">
			<form method="post">
				<table style="padding:3%;font-size:14px;color:#000000;font-weight:bold;width:100%;border:5px solid #ddd;">
					<tr>
						<td class="tdBottom" colspan="2" style="font-size:20px;color:#002266;border-bottom:1px solid #CC3D3D;font-weight:bold;">
							☆ 입금계좌안내<br/>
							농협 317-0010-9051-71 예금주 홍삼베리영농법인
							<br/><br/>
						</td>
					</tr>
					<tr>
						<td class="tdBottom">성명</td>
						<td class="tdBottom"><input type="text" name="name" id="name" class="inputBox" placeholder="이름(필수)"/></td>
					</tr>
					<tr>
						<td class="tdBottom">연락처</td>
						<td class="tdBottom"><input type="text" name="hp" id="hp" class="inputBox" placeholder="-빼고 입력(필수)"/></td>
					</tr>
					<tr>
						<td class="tdBottom">이메일</td>
						<td class="tdBottom"><input type="text" name="email" id="email" class="inputBox" placeholder="이메일주소"/></td>
					</tr>
					<tr>
						<td class="tdBottom">주소</td>
						<td class="tdBottom">
							<input type="button" onclick="execDaumPostCode()" value="주소찾기" style="width:100%;background-color:#003399;color:#ffffff;"/><br/>
							<input type="text" class="inputBox" name="address" id="address" placeholder="주소검색" readonly/><br/>
							<input type="text" class="inputBox" name="addSangse" id="addSangse" placeholder="상세주소(필수)"/>
						</td>
					</tr>
					<tr>
						<td class="tdBottom">상품옵션</td>
						<td class="tdBottom">
							<input type="checkbox" name="option" value="홍삼베리맛90mlX30포"/>홍삼베리맛 90ml x 30포 = 90,000원<br/>
							<input type="checkbox" name="option" value="신삼베리맛60mlX20포"/>신홍삼베리 60ml x 20포 = 40,000원<br/>
							<input type="checkbox" name="option" value="신홍삼베리60mlX10포"/>신홍삼베리 60ml x 10포 = 20,000원<br/>
						</td>
					</tr>
					<tr>
						<td class="tdBottom">문의사항</td>
						<td class="tdBottom"><textarea class="inputBox" name="comment" id="comment" row="5"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<br/>
							<input type="button" id="privercy" value="개인정보처리방침보기"/>
							<br/>
							<p class="prText show" style=width:100%;">
							<textarea style="width:100%;height:300px;" readonly >

'홍삼베리영농조합법인'은 (이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식 으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
■ 수집하는 개인정보 항목 회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다. 
ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 회사전화번호 , 결혼여부 , 기념일 , 주민등록번호 , 신용카드 정보 , 은행계좌 정보 , 서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보 , 결제기록 
ο 개인정보 수집방법 : 홈페이지(회원가입,상담신청,공개게시판,견적요청 등) , 서면양식 , 전화/팩스를 통한 회원가입 , 경품 행사 응모 , 제휴사로부터의 제공

■ 개인정보의 수집 및 이용목적 외 이용 및 제3자 제공 회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다. 
ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스 , 요금추심 
ο 회원 관리 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인 , 불만처리 등 민원처리 , 고지사항 전달 
ο 마케팅 및 광고에 활용 신규 서비스(제품) 개발 및 특화 , 이벤트 등 광고성 정보 전달 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계 
ο 기타 사후DM 
ο 당사는 회원의 개인정보를「개인정보 수집  이용 목적 및 항목」에서 고지한 범위 내에서 사용하며 동 범위를 초과하여 이용하거나 원칙적으로 제3자에게 제공하지 않습니다. 
ο 다만 다음의 경우에는 합당한 절차를 통한 회원의 동의를 얻어 개인정보를 제공 또는 이용할 수 있습니다. 
1) 제휴관계 : 보다 나은 서비스 제공을 위하여 당사는 회원의 개인정보를 제휴사에 제공 할 수 있습니다. 이 경우 사전에 회원에게 제휴사, 제공되는 개인정보의 항목, 개인정보 제공 목적, 제공기간, 개인정보보호방안 등에 대해서 개별적으로 동의를 구하는 절차를 거치게 되며, 회원의 동 의가 없는 경우에는 제휴사에게 이를 제공하지 않으며, 제휴관계의 변화 또는 종결될 경우에도 고지 합니다. 또한 제휴관계가 종결될 경우 제공된 개인정보에 대해서는 회원님의 동의가 없는 경우 지체 없이 파기하도록 조치하며 개인정보 제공에 동의하더라도 언제든지 그 동의를 철회할 수 있습니다. 
2) 위탁처리 : 원활한 업무처리와 회원에게 보다 나은 서비스 제공을 위하여 회원의 개인정보를 위탁하여 처리할 수 있으며, 이 경우 반드시 사전에 위탁처리 업체명과 목적, 위탁처리 되는 개인 정보의 범위, 위탁기간 등에 대해 상세하게 고지합니다. 
3) 매각, 인수합병 : 서비스 제공자의 권리, 의무가 승계 또는 이전되는 경우 이를 반드시 사전에 고지하며 회원의 개인정보에 대한 동의철회의 선택권을 부여합니다. 
ο 다음은 예외로 합니다. 
1) 관계법령에 특별한 규정이 있는 경우 
2) 서비스 제공에 따른 요금정산을 위하여 필요한 경우 
3) 당사가 제공하는 서비스를 통하여 거래가 성사된 경우 거래당사자간의 원활한 의사소통과 거래, 배송을 위하여 관련된 정보를 필요한 범위 내에서 거래당사자에게 제공하는 경우

■ 개인정보의 보유 및 이용기간 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다. 보존 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 회사전화번호 , 결혼여부 , 기념일 , 주민등록번호 , 신용카드 정보 , 은행계좌 정보 , 접속 IP 정보 , 결제기록 보존 근거 : 이용자가 아이웨딩의 회원으로서 아이웨딩이 제공하는 서비스를 이용하는 동안 아이웨딩은 이용자들의 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다. 다만, 아래의 "이용자 자신의 개인 정보 관리(열람,정정,삭제 등)에 관한 사항"에서 설명한 절차와 방법에 따라 회원 본인이 직접 삭제하거나 수정한 정보, 가입해지를 요청한 경우에는 재생할 수 없는 방법에 의하여 디스크에서 완전히 삭제하며 추후 열람이나 이용이 불가능한 상태로 처리됩니다. 또한 최근 6개월 내에 ms커뮤니케이션을 한번도 이용하지 않은 ID에 대해 홈페이지에서 ID 정리 해당 요건 및 정리 기간, ID 폐기에 대해 일괄 공지한 후 적절한 절차를 거쳐 아이웨딩 사용 의사가 없는 것으로 판단되는 이용자에 한해서는, 개인정보 보호를 위해 해당 ID의 개인정보를 삭제할 수 있습니다. 보존 기간 : 회원 본인의 가입해지, 개인정보 삭제 등 요청 또는 직접적인 탈퇴 행위 이전까지 계속 보존

■ 개인정보 제공 회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다. - 이용자들이 사전에 동의한 경우 - 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

■ 수집한 개인정보의 위탁 회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</textarea>
							<br/>
							</p>
							<br/>
							<input type="checkbox" id="checkPrivercy" checked="checked"/>
							개인정보수집동의
						</td>						
					</tr>
					<tr>
						<td colspan="2">
							<br/><br/>
							<input type="button" id="addOrder" style="width:100%;height:30px;background-color:#22741C;color:#FFFFFF;font-size:14px;" value="상품주문하기"/>
						</td>
					</tr>
				</table>
			</form>
		</a>
	</div>
	
	<!-- 	<table>		
			<tr>
				<td align="center">
					<a name="inputForm"></a>
					<div style="width:1200px;display:text-align:center;border:1px solid #DEDEDE;background:#000000;padding-top:20px;padding-bottom:20px;">			
상담신청
<form name="writeF" method="POST">
		<div class="event_wrap" style="width:95%;padding:10px;background:#FFFFFF;">
			<div class="float_default">
				<div class="ds_left" style="width:60%">
					<table cellpadding="0" cellspacing="0" class="ds_table" width="90%">
						<tr>
							<th width="20%">성명</th>
							<td style="text-align:left"><input type="text" name="name" id="name" class="ds_input">
										
							<input type="hidden" name="sex" value="신랑">
														</td>
						</tr>
						<tr>
							<th>연락처</th>
							<td style="text-align:left"><input type="text" name="tel1" id="tel1"  class="ds_input" style="width:80px;"> - 
							<input type="text" name="tel2" id="tel2" class="ds_input" style="width:80px;"> - 
							<input type="text" name="tel3" id="tel3" class="ds_input" style="width:80px;"></td>
						</tr>
												<tr>
							<th>이메일</th>
							<td style="text-align:left">
								<input type="text" class="ds_input" name="email" id="email" style="width:280px">
							</td>
						</tr>
																																				<tr>
							<th>신청경로</th>
							<td style="text-align:left">
																<input type="radio" name="adver_disp" id="adver_disp" value="네이버키워드" required>네이버키워드																<input type="radio" name="adver_disp" id="adver_disp" value="블로그" required>블로그																<input type="radio" name="adver_disp" id="adver_disp" value="카페" required>카페																<input type="radio" name="adver_disp" id="adver_disp" value="기타" required>기타															</td>
						</tr>
																		<tr>
							<th>주소</th>
							<td style="text-align:left;line-height:20px;">
								<input type='hidden' name='uItemList[]' id='uItemList' value='324' class='ds_input'><input type='hidden' name='uTitle324' id='uTitle324' value='주소' class='ds_input'><input type='text' name='uValue324' id='uValue324' class='ds_input' style='width:80%' alt='주소' >							</td>
						</tr>
												<tr>
							<th>상품옵션</th>
							<td style="text-align:left;line-height:20px;">
								<input type='hidden' name='uItemList[]' id='uItemList' value='325' class='ds_input'><input type='hidden' name='uTitle325' id='uTitle325' value='상품옵션' class='ds_input'><input type='checkbox' name='uValue325[]' id='uValue325' alt='상품옵션' value='홍삼베리 90ml x 30포 = 90000원 '  incQuired=''> <label class=''>홍삼베리 90ml x 30포 = 90000원 </label> &nbsp;<BR><input type='checkbox' name='uValue325[]' id='uValue325' alt='상품옵션' value=' 신홍삼베리 60ml x 20포 = 40000원 '  incQuired=''> <label class=''> 신홍삼베리 60ml x 20포 = 40000원 </label> &nbsp;<BR><input type='checkbox' name='uValue325[]' id='uValue325' alt='상품옵션' value=' 신홍삼베리 60ml x 10포 = 20000원'  incQuired=''> <label class=''> 신홍삼베리 60ml x 10포 = 20000원</label> &nbsp;							</td>
						</tr>
																		<tr>
							<th>문의사항</th>
							<td style="text-align:left">
								<textarea class="ds_input" name="memo" id="memo" style="width:350px;height:50px;"></textarea>
							</td>
						</tr>
											</table>
				</div>
				<div class="ds_right" style="padding-top:20px;width:40%;">
					<table cellpadding="0" cellspacing="0" border="0" width="100%">
						<tr>
							<th align="left"><img src="http://www.063fair.com/img/request_tit8.gif" alt="개인정보수집동의"></th>
						</tr>
						<tr>
							<td height="5"></td>
						</tr>
						<tr>
							<td>
							<textarea class='ds_input' readonly style='width:95%;height:350px;font-size:11px;padding:10px;'>'홍삼베리영농조합법인'은 (이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식 으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

■ 수집하는 개인정보 항목 회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다. 
ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 회사전화번호 , 결혼여부 , 기념일 , 주민등록번호 , 신용카드 정보 , 은행계좌 정보 , 서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보 , 결제기록 
ο 개인정보 수집방법 : 홈페이지(회원가입,상담신청,공개게시판,견적요청 등) , 서면양식 , 전화/팩스를 통한 회원가입 , 경품 행사 응모 , 제휴사로부터의 제공

■ 개인정보의 수집 및 이용목적 외 이용 및 제3자 제공 회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다. 
ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스 , 요금추심 
ο 회원 관리 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인 , 불만처리 등 민원처리 , 고지사항 전달 
ο 마케팅 및 광고에 활용 신규 서비스(제품) 개발 및 특화 , 이벤트 등 광고성 정보 전달 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계 
ο 기타 사후DM 
ο 당사는 회원의 개인정보를「개인정보 수집  이용 목적 및 항목」에서 고지한 범위 내에서 사용하며 동 범위를 초과하여 이용하거나 원칙적으로 제3자에게 제공하지 않습니다. 
ο 다만 다음의 경우에는 합당한 절차를 통한 회원의 동의를 얻어 개인정보를 제공 또는 이용할 수 있습니다. 
1) 제휴관계 : 보다 나은 서비스 제공을 위하여 당사는 회원의 개인정보를 제휴사에 제공 할 수 있습니다. 이 경우 사전에 회원에게 제휴사, 제공되는 개인정보의 항목, 개인정보 제공 목적, 제공기간, 개인정보보호방안 등에 대해서 개별적으로 동의를 구하는 절차를 거치게 되며, 회원의 동 의가 없는 경우에는 제휴사에게 이를 제공하지 않으며, 제휴관계의 변화 또는 종결될 경우에도 고지 합니다. 또한 제휴관계가 종결될 경우 제공된 개인정보에 대해서는 회원님의 동의가 없는 경우 지체 없이 파기하도록 조치하며 개인정보 제공에 동의하더라도 언제든지 그 동의를 철회할 수 있습니다. 
2) 위탁처리 : 원활한 업무처리와 회원에게 보다 나은 서비스 제공을 위하여 회원의 개인정보를 위탁하여 처리할 수 있으며, 이 경우 반드시 사전에 위탁처리 업체명과 목적, 위탁처리 되는 개인 정보의 범위, 위탁기간 등에 대해 상세하게 고지합니다. 
3) 매각, 인수합병 : 서비스 제공자의 권리, 의무가 승계 또는 이전되는 경우 이를 반드시 사전에 고지하며 회원의 개인정보에 대한 동의철회의 선택권을 부여합니다. 
ο 다음은 예외로 합니다. 
1) 관계법령에 특별한 규정이 있는 경우 
2) 서비스 제공에 따른 요금정산을 위하여 필요한 경우 
3) 당사가 제공하는 서비스를 통하여 거래가 성사된 경우 거래당사자간의 원활한 의사소통과 거래, 배송을 위하여 관련된 정보를 필요한 범위 내에서 거래당사자에게 제공하는 경우

■ 개인정보의 보유 및 이용기간 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다. 보존 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 회사전화번호 , 결혼여부 , 기념일 , 주민등록번호 , 신용카드 정보 , 은행계좌 정보 , 접속 IP 정보 , 결제기록 보존 근거 : 이용자가 아이웨딩의 회원으로서 아이웨딩이 제공하는 서비스를 이용하는 동안 아이웨딩은 이용자들의 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다. 다만, 아래의 "이용자 자신의 개인 정보 관리(열람,정정,삭제 등)에 관한 사항"에서 설명한 절차와 방법에 따라 회원 본인이 직접 삭제하거나 수정한 정보, 가입해지를 요청한 경우에는 재생할 수 없는 방법에 의하여 디스크에서 완전히 삭제하며 추후 열람이나 이용이 불가능한 상태로 처리됩니다. 또한 최근 6개월 내에 ms커뮤니케이션을 한번도 이용하지 않은 ID에 대해 홈페이지에서 ID 정리 해당 요건 및 정리 기간, ID 폐기에 대해 일괄 공지한 후 적절한 절차를 거쳐 아이웨딩 사용 의사가 없는 것으로 판단되는 이용자에 한해서는, 개인정보 보호를 위해 해당 ID의 개인정보를 삭제할 수 있습니다. 보존 기간 : 회원 본인의 가입해지, 개인정보 삭제 등 요청 또는 직접적인 탈퇴 행위 이전까지 계속 보존

■ 개인정보 제공 회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다. - 이용자들이 사전에 동의한 경우 - 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

■ 수집한 개인정보의 위탁 회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</textarea></td>
						</tr>
						<tr>
							<td height="5"></td>
						</tr>
						<tr>
							<td>
								<div style="font-size:12px;"><input type="checkbox" name="privacy" id="privacy">개인정보 수집에 동의합니다.</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div  style="text-align:center;padding-top:20px;">
								<input type="image" src="http://smartwed.kr/upData/lndBtn/OTQIOTIIOTIIMzkINjUIODgIMTA4CDg1CDEINAg4Ngg4Mgg4Ngg5NAg1CDg2CDYIMTEwCDgzCDAIMTUIMTAINQg2CDE0CDEIOAgxMAg4MAg2CA==">
			</div>
		</form>
	</div>
	//상담신청
</div></td>
		</tr>
			
			</table>
	</div> -->
	
</body>
</html>
