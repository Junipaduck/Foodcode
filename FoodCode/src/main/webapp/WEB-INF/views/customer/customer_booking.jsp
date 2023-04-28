<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/daterangepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/uili.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table2.css">

  <title>FOODCODE :예약 관리</title>
</head>

<body>
<header>
		<jsp:include page="../inc/top.jsp"></jsp:include>
</header>
  <div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close">
        <span class="icofont-close js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>



  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <h1 class="mb-0"></h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="customer_left.jsp"></jsp:include>
  <div class="untree_co-section" style="margin-left: 100px;">
  	<div align="center">
		<table id="rwd-table">
			<tr>
		  		<td>
			  		<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
						<h2 class="section-title">예약 관리</h2>
				  	</div>
		  		</td>
	  		</tr>
			<c:choose>
				<c:when test="${not empty map.bookingList }">
				<tr>
					<th class="td_left">예약번호</th>
					<th class="td_left">가게명</th>
					<th class="td_left">예약일</th>
					<th class="td_left">예약시간</th>
					<th class="td_left">인원 수</th>
					<th class="td_left">선호 자리</th>
					<th class="td_left">요청 사항</th>
				</tr>
				<c:forEach items="${map.bookingList }" var="booking" end="2">
				<tr>
					<td>${booking.booking_idx }</td>
					<td>${booking.store_name }</td>
					<td>${booking.booking_date }</td>
					<td>${booking.booking_time }</td>
					<td>${booking.booking_num }</td>
					<td>${booking.booking_seat }</td>
					<td>${booking.booking_content }</td>
					<td><input type="button" value="취소" onclick="location.href='customerBookingCancle.me?booking_idx=${booking.booking_idx}'"></td>
				</tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<tr><td align="center">조회 된 예약이 없어요.</td></tr>
				</c:otherwise>
				</c:choose>
			<c:choose>
				<c:when test="${fn:length(map.bookingList) > 3 }">
					<tr>
						<th colspan="9"><div align="center"><button class="custom-btn btn-10" onclick="location.href = 'customerLast.me'">더보기</button></div></th>
					</tr>
				</c:when>
			</c:choose>
		</table>
  </div>
  	<div align="center">
		<table id="rwd-table">
			<tr>
			  		<td>
				  		<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
							<h2 class="section-title">이용 내역</h2>
					  	</div>
			  		</td>
		  		</tr>
			<c:choose>
				<c:when test="${not empty map.afterBookingList }">
				<tr>
					<th class="td_left">예약번호</th>
					<th class="td_left">가게명</th>
					<th class="td_left">예약일</th>
					<th class="td_left">예약시간</th>
					<th class="td_left">인원 수</th>
					<th class="td_left">선호 자리</th>
					<th class="td_left">요청 사항</th>
				</tr>
				<c:forEach items="${map.afterBookingList }" var="afterBooking" end="2">
				<tr>
					<td>${afterBooking.booking_idx }</td>
					<td>${afterBooking.store_name }</td>
					<td>${afterBooking.booking_date }</td>
					<td>${afterBooking.booking_time }</td>
					<td>${afterBooking.booking_num }</td>
					<td>${afterBooking.booking_seat }</td>
					<td>${afterBooking.booking_content }</td>
<%-- 					<td><input type="hidden" name="store_idx" value="${param.store_idx }"></td> --%>
					<td><input type="button" value="리뷰작성" onclick="location.href='customerReviewWrite.me?store_idx=${afterBooking.store_idx}'"></td>
				</tr>
				</c:forEach>
				</c:when>
					<c:otherwise>
						<tr><td align="center">기간이 지난 예약이 없어요.</td></tr>
					</c:otherwise>
				</c:choose>
			<c:choose>
				<c:when test="${fn:length(map.afterBookingList) > 3 }">
					<tr>
						<th colspan="9"><div align="center"><button class="custom-btn btn-10" onclick="location.href = 'customerAfter.me'">더보기</button></div></th>
					</tr>
				</c:when>
			</c:choose>
		</table>
	</div>
	</div>
  

	<!-- footer -->
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
