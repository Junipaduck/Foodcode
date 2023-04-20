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

<title>예약 완료 페이지</title>
</head>
<body>
<!-- 주소로 값 받아오던것 현재 map 사용 -->
<!-- <script type="text/javascript"> -->
<!-- 	let query = window.location.search;         // http://localhost:8080/notice?id=1&name=하나 -->
<!-- 	let param = new URLSearchParams(query); -->
	
<!-- 	document.getElementById('booking_idx').value = "" -->
<!-- </script> -->


<header>
	<jsp:include page="../inc/top2.jsp"></jsp:include>
</header>

<form action="store_recommend.so" method="get">
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2><b>예약 완료</b></h2>
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
						<c:forEach var="bookingList" items="${bookingList }">
                          <td>${bookingList.member_name}</td>
                          <td>${bookingList.member_phone}</td>
                          <td>${bookingList.booking_date}</td>
                          <td>${bookingList.booking_time}</td>
                          <td>${bookingList.booking_num}</td>
                          <td>${bookingList.booking_seat}</td>
                          <td>${bookingList.booking_content}</td>
                        </c:forEach>
					</tr>
				</tbody>
			</table>
			<div class="col-md-12 mt-3">
                  <div class="form-group">
					<input type="submit" value="확인" class="btn btn-primary py-3 px-5">
                  </div>
            </div>
		</div>
	</div>        
</div>
</form>

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