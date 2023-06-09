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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table2.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/uili.css">


  <title>FOODCODE :마이페이지</title>
</head>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
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
            <p class="text-white"> </p>
          </div>
        </div>
      </div>
    </div>
  </div>
	<jsp:include page="customer_left.jsp"></jsp:include>
	
	<div class="untree_co-section" align="center">
		<div class="container">
        <div class="col-lg-9 pl-lg-9 ml-auto" style="padding-left: 0rem!important; margin-left:0px;">
          <div class="col-lg-9 ml-auto" style=""><h2 class="section-title mb-4" >회원명</h2></div>
          <ul class="list-unstyled two-col clearfix" style="height: 135px; text-align:left;">
            <li>회원 이름 : ${map.member.member_name}</li>
            <li>회원 아이디 : ${map.member.member_id}</li>
            <li>전화 번호 : ${map.member.member_phone}</li>
            <li>Email : ${map.member.member_email}</li>
            <li>생년월일 : ${map.member.member_birth}</li>
            <li>성별 : ${map.member.member_gender}</li>
            <li>가입일 : ${map.member.member_join_date}</li>
            <li>포인트 : ${map.member.member_point}p</li>
          </ul>
          <hr>
          <button type="submit" class="btn btn-primary" onclick="location.href='customerModify.me'">수정</button>
        </div>
        
	<div align="center">
	  		<table id="rwd-table" style="width: 1100px;">
		  		<tr>
			  		<td>
				  		<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
							<h2 class="section-title">예약내역</h2>
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
				</tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<tr><td align="center">조회 된 예약이 없어요.</td></tr>
				</c:otherwise>
				</c:choose>
			</table>
			<div class="col-lg-4">
		    </div>
	  		<table id="rwd-table" style="width: 1100px;">
				<tr>
			  		<td>
				  		<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
							<h2 class="section-title">리뷰내역</h2>
					  	</div>
			  		</td>
		  		</tr>
				<c:choose>
				<c:when test="${not empty map.myReviewList }">
				<tr>
					<th class="td_left">리뷰번호</th>
					<th class="td_left">가게명</th>
					<th class="td_left">리뷰내용</th>
					<th class="td_left">별점</th>
					<th class="td_left">등록일</th>
					<th class="td_left">리뷰이미지</th>
				</tr>
				<c:forEach items="${map.myReviewList }" var="myReview" end="2">
				<tr>
					<td>${myReview.review_idx }</td>
					<td>${myReview.store_name }</td>
					<td>${myReview.review_content }</td>
					<td>
		           		<div class="review_star">
			           		<c:if test="${not empty myReview.review_star }">
			           			<c:choose>
			           				<c:when test="${myReview.review_star == 1 }">
					  				<label for="review_star1" title="1점" id="review_star">&#11088;</label>
			           				</c:when>
			           				<c:when test="${myReview.review_star == 2 }">
					  				<label for="review_star2" title="2점" id="review_star">&#11088;&#11088;</label>
			           				</c:when>
			           				<c:when test="${myReview.review_star == 3 }">
					  				<label for="review_star3" title="3점" id="review_star">&#11088;&#11088;&#11088;</label>
			           				</c:when>
			           				<c:when test="${myReview.review_star == 4 }">
					  				<label for="review_star4" title="4점" id="review_star">&#11088;&#11088;&#11088;&#11088;</label>
			           				</c:when>
			           				<c:when test="${myReview.review_star == 5 }">
					  				<label for="review_star5" title="5점" id="review_star">&#11088;&#11088;&#11088;&#11088;&#11088;</label>
			           				</c:when>
			           				<c:otherwise>
			           				No Rating
			           				</c:otherwise>
			           			</c:choose>
			           		</c:if>
		           		</div>						
					</td>
					<td>${myReview.review_date }</td>
					<td>
			            <c:set var="length" value="${fn:length(myReview.review_file) }"/>
						<c:set var="index" value="${fn:indexOf(myReview.review_file, '_') }"/>
						<c:set var="fileName" value="${fn:substring(myReview.review_file, index + 1, length) }"/>
						<img alt="..." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 50px;width: 50px;">
					</td>
				</tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<tr><td align="center">조회 된 리뷰가 없어요.</td></tr>
				</c:otherwise>
				</c:choose>
			</table>
			
  </div>
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
