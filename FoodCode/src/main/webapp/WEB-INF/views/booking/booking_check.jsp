<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="shortcut icon" href="../favicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/daterangepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<!-- 테이블 관련 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store_menu_table.css">
<!-- 테이블 관련 -->

<!-- 부트스트랩 css 링크 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 

<!-- 아래 4줄 : 상단 탭css 관련 링크 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store_recommend_style.css" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- 결제 api 부분 -->
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>




<title>예약 확인 페이지</title>
</head>
<body>


<header>
	<jsp:include page="../inc/top2.jsp"></jsp:include>
</header>

 

<form id="reservForm" method="post" action="bookingsuccess.bo">
	<input type="hidden" name="store_idx" value="${storeInfo[0].store_idx }">
	<input type="hidden" name="booking_idx" id="booking_date" value="1">
    <input type="hidden" name="booking_date" id="booking_date" value="${bookinginfo.get(0) }">
    <input type="hidden" name="booking_time" id="booking_time" value="${bookinginfo.get(1) }">
    <input type="hidden" name="booking_num" id="booking_num" value="${bookinginfo.get(2) }">
    <input type="hidden" name="booking_seat" id="booking_seat" value="${bookinginfo.get(3) }">
    <input type="hidden" name="booking_content" id="booking_content" value="${bookinginfo.get(4) }">
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2><b>예약 확인</b></h2>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover" id="menu_table">
				<thead>
					<tr>
						<th>
						</th>
						<th>성함</th>
						<th>전화번호</th>
						<th>예약 날짜</th>
						<th>예약 시간</th>
						<th>인원</th>
						<th>선호자리</th>
						<th>요청사항</th>
					</tr>
				</thead>
				<tbody id="table_body">
					<tr>
						<td>
						</td>
						<td>${member.member_name }</td>
						<td>${member.member_phone }</td>
						<td>${bookinginfo.get(0) }</td>
						<td>${bookinginfo.get(1) }</td>
						<td>${bookinginfo.get(2) }</td>
						<td>${bookinginfo.get(3) }</td>
						<td>${bookinginfo.get(4) }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</form>

<!-- <button onclick="requestPay()">결제하기</button> -->
<button id="payMent">결제하기</button>

<script type="text/javascript">
	
	document.getElementById("payMent").addEventListener('click',requestPay);

	var IMP = window.IMP; 
	IMP.init("imp25354857"); 
	
	function requestPay() {
			IMP.request_pay({
		        pg : 'kakaopay.TC0ONETIME',
		        pay_method : 'card',
		        merchant_uid:  'merchant' + new Date().getTime(), 
		        name : '${storeInfo[0].store_name }',
		        amount : ${bookinginfo.get(2) } * 5000,
		        buyer_email : '${member.member_email }',
		        buyer_name : '${member.member_name }',
		        buyer_tel : '${member.member_phone }',
			},	function (rsp) { // callback
				if(rsp.success){
					 alert("결제가 완료되었습니다.");
						$("#reservForm").append('<input type="hidden" id="merchant_uid" name="merchant_uid" value="' + rsp.merchant_uid + '">');
						$("#reservForm").append('<input type="hidden" id="pay_price" name="pay_price" value="' + rsp.paid_amount + '">');
						$("#reservForm").submit();
				}
		    });
	}		    
</script>

<footer>
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
</footer>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.fancybox.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/typed.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>

</body>
</html>