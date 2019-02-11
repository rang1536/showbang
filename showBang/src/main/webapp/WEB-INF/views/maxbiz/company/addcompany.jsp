<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<c:import url="../module/top.jsp"></c:import>
<head>
	<script>
	$(document).ready(function(){
		
	})
	
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
               /*  $('#poZip1').val(data.zonecode); //5자리 새우편번호 사용
                $('#poSido').val(data.sido);
                $('#poGuGun').val(data.sigungu);
                $('#poDong').val(data.bname); */
                $('#comAddress').val(fullAddr);
                //console.log(data.roadAddress.trim()+data.jibunAddress.trim());
                // 커서를 상세주소 필드로 이동한다.
                $('#comAddSangse').focus();
            }
        }).open();
    }
	
	function adComOrder(){
		var brokerName = $('#brokerName').val();
		var callbackHp = $('#callbackHp').val();
		
		if(brokerName == null || brokerName == ''){
			alert('신청인이름 또는 업체상호를 입력하세요');
			$('#brokerName').focus();
			return;
		}
		
		if(callbackHp == null || callbackHp == ''){
			alert('신청인의 핸드폰번호를 입력하세요');
			$('#callbackHp').focus();
			return;
		}
		
		$.ajax({
			url : 'adOrderSms',
			dataType: 'json',
			type : 'post',
			data : $('#adComOrderForm').serialize(),
			success : function(data){
				if(data.result == 'succ'){
					alert('제휴업체신청 문의가 접수되었습니다')
					$('#brokerName').val('');
					$('#callbackHp').val('');
				}else{
					alert('제휴업체신청 문의에 실패하였습니다 \n해당문제가 지속될 경우 063-229-3435로 문의바랍니다.');
					$('#brokerName').val('');
					$('#callbackHp').val('');
				}
			}
		})
	}
	</script>
</head>

<body>


<section class="post-wrapper-top">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li><a href="home">Home</a></li>
				<li>업체등록</li>
			</ul>
			<h2>업체등록</h2>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<!-- search -->
			<div class="search-bar">
				<form action="" method="get">
					<fieldset>
						<input type="image" src="resources/maxbiz/img/pixel.gif" class="searchsubmit" alt="" />
						<input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
					</fieldset>
				</form>
			</div>
			<!-- / end div .search-bar -->
		</div>
	</div>
</section>
<!-- end post-wrapper-top -->

<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-8 col-md-8 col-sm-8 col-xs-12 clearfix">

			<table class="table table-striped checkout" data-effect="fade">
				<thead>
					<tr>
						<th>상품명</th>
						<th>상품가격</th>
						<th>수량</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><img width="50" src="resources/maxbiz/img/recent_post_01.png" alt=""> <a href="#">일반제휴업체등록</a></td>
						<td>월 100,000</td>
						<td><input id="verify" class="form-control quantity" type="text" value="1" name="" readonly></td>
						<td>6개월 무료이용</td>
					</tr>
				</tbody>
			</table>
        	<div class="clearfix"></div>

			<!-- <div class="pull-right">
				<a class="button" href="#">UPDATE CART</a> <a class="button" href="#">SAVE CART</a>
			</div> -->

			<div class="clearfix"></div>

			<div class="well text-right"><strong>TOTAL: 0원</strong></div>

			<div class="clearfix"></div>

			<form id="cominfoForm" action="addCompany" name="cominfoForm" method="post" enctype="multipart/form-data">
				<div class="payments">
					<p><img alt="" src="resources/maxbiz/img/payments.png"></p>
					
					<label class="checkbox-inline">
						<input name="comPlus" type="checkbox" checked="" value="1" readonly>
						<strong>일반</strong>
					</label>
					<label class="checkbox-inline">
						<input name="comPlus" type="checkbox" value="2" readonly>
						<strong>스폰</strong>
					</label>
					<label class="checkbox-inline">
						<input name="comPlus" type="checkbox" value="3" readonly>
						<strong>메인스폰</strong>
					</label>
				</div>

				<div class="clearfix"></div>
				<div class="divider"></div>

				<h5 class="title"><img src="resources/img/info.PNG" style="width:16px;">&nbsp;&nbsp;업체정보</h5>

			
				<label for="comCateNo">업종선택 <span class="required">*</span></label>
			
				<div class="clearfix"></div>
			
				<select class="form-control" style="width:30%;float:left; margin-right:10px;" name="comCateNo" id="comCateNo">
					<c:forEach var="list" items="${comCateList }" >
						<option value="${list.comCateNo }">${list.comCateName }</option>
					</c:forEach>
				</select>
				<div class="clearfix"></div>
				<label for="comName">업체이름 <span class="required">*</span></label>
				<input type="text" name="comName" id="comName" class="form-control" placeholder="업체명">
				<label for="comRrn">사업자번호 <span class="required">*</span></label>
				<input type="text" name="comRrn" id="comRrn" class="form-control" placeholder="사업자번호(-빼고 숫자만 입력)">
				<label for="comTel">업체전화번호 </label>
				<input type="text" name="comTel" id="comTel" class="form-control" placeholder="일반전화번호">
				<label for="comAddress">업체 소재지 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="button" href="javscript:void(0);" onclick="searchAdd()">주소찾기</a></label>
				<input type="text" name="comAddress" id="comAddress" class="form-control" placeholder="업체주소" readonly onclick="javascript:alert('주소찾기를 이용해주세요')">
				<input type="text" name="comAddSangse" id="comAddSangse" class="form-control" placeholder="상세주소">
				<label for="comAs">AS정보<span class="required">*</span></label>
				<textarea name="comAs" id="comAs" class="form-control" placeholder="업체 AS관련 정보 입력" rows="10"></textarea>
			

				<div class="clearfix"></div>
				<div class="divider"></div>

				<h5 class="title"><img src="resources/img/info.PNG" style="width:16px;">&nbsp;&nbsp;대표자정보</h5>

				<label for="comCeoName">대표자 <span class="required">*</span></label>
				<input type="text" name="comCeoName" id="comCeoName" class="form-control" placeholder="CEO Name">
				<label for="comHp">휴대폰번호 <span class="required">*</span></label>
				<input type="text" name="comHp" id="comHp" class="form-control" placeholder="CEO Name">
				<label for="comInfo">회사소개 <span class="required">*</span></label>
				<textarea name="comInfo" id="comInfo" class="form-control" placeholder="company Introduce" rows="5"></textarea>
				<label for="comCeoComment">대표자 한마디 <span class="required">*</span></label>
				<textarea name="comCeoComment" id="comCeoComment" class="form-control" placeholder="고객에게 전하는 대표자 한마디" rows="10"></textarea>
				
				<div class="clearfix"></div>
				<div class="divider"></div>
	
				<h5 class="title">업체이미지 등록</h5>

				<label for="thumnail">썸네일 <font style="color:#CCA63D;font-size:13px;">( *업체목록에 링크될 업체 BI 또는 CI 등)</font></label>
				<input type="file" name="thumnailImg" id="thumnailImg" class="form-control">
				<label for="comMainImg">업체대표이미지 <font style="color:#CCA63D;font-size:13px;">( *대표상품 또는 대표홍보물 등)</font></label>
				<input type="file" name="mainImg" id="mainImg" class="form-control">
				
				<br><br>
				<div class="well"><strong>업체정보 등록 중 문제가 있을경우 063-229-3435(쇼방) 으로 문의 바랍니다. </strong> 통화가능 (오전9시 ~ 오후6시)</div>
				<br>
				<button type="submit" class="button large btn-block">업체등록</button>
			</form>

		</div>
		<!-- end content -->

		<div id="sidebar" class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		
			<div class="widget">
				<h4 class="title">
					<span style="color:#000000;">제휴업체 문자문의</span>
				</h4>
				<form id="adComOrderForm" action="" name="adComOrderForm" method="post">
					<input type="text" name="brokerName" id="brokerName" class="form-control" placeholder="신청인 이름">
					<input type="text" name="callbackHp" id="callbackHp" class="form-control" placeholder="회신번호">
					<div class="pull-right">
						<input type="button" value="문의하기" onclick="adComOrder()" class="button">
					</div>
				</form>
			</div>

		</div>
		<!-- end sidebar -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->

<c:import url="../module/footer.jsp"></c:import>
<div class="dmtop">Scroll to Top</div>

</body>
</html>
