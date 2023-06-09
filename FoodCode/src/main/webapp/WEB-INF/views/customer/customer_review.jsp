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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table2.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <title>FOODCODE :리뷰목록</title>
</head>
<script type="text/javascript">
</script>
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
            <h1 class="mb-0"> </h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="customer_left.jsp"></jsp:include>

		  <div align="center" style="padding-top: 70px;">
	  		<table id="rwd-table" style="width: 1100px;">
				<tr>
			  		<td>
				  		<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
							<h2 class="section-title">리뷰관리</h2>
					  	</div>
			  		</td>
		  		</tr>

				<tr>
					<th class="td_left">리뷰번호</th>
					<th class="td_left">작성자</th>
					<th class="td_left">업체명</th>
					<th class="td_left">리뷰내용</th>
					<th class="td_left">리뷰사진</th>
					<th class="td_left">별점</th>
					<th class="td_left">작성일자</th>
				</tr>


				<!-- 0418 양선정 코드 -->
				<c:forEach items="${reviewList }" var="review">
					<tr>
						<td>${review.review_idx }</td>
						<td>${sessionScope.sId }</td>
						<td>${review.store_name }</td>
						<td>${review.review_content }</td>
						<td>
				            <c:set var="length" value="${fn:length(review.review_file) }"/>
							<c:set var="index" value="${fn:indexOf(review.review_file, '_') }"/>
							<c:set var="fileName" value="${fn:substring(review.review_file, index + 1, length) }"/>
							<img alt="..." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 50px;width: 50px;">
						</td>
						<td>
			           		<div class="review_star">
			           		<c:if test="${not empty review.review_star }">
			           			<c:choose>
			           				<c:when test="${review.review_star == 1 }">
					  				<label for="review_star1" title="1점" id="review_star">&#11088;</label>
			           				</c:when>
			           				<c:when test="${review.review_star == 2 }">
					  				<label for="review_star2" title="2점" id="review_star">&#11088;&#11088;</label>
			           				</c:when>
			           				<c:when test="${review.review_star == 3 }">
					  				<label for="review_star3" title="3점" id="review_star">&#11088;&#11088;&#11088;</label>
			           				</c:when>
			           				<c:when test="${review.review_star == 4 }">
					  				<label for="review_star4" title="4점" id="review_star">&#11088;&#11088;&#11088;&#11088;</label>
			           				</c:when>
			           				<c:when test="${review.review_star == 5 }">
					  				<label for="review_star5" title="5점" id="review_star">&#11088;&#11088;&#11088;&#11088;&#11088;</label>
			           				</c:when>
			           				<c:otherwise>
			           				No Rating
			           				</c:otherwise>
			           			</c:choose>
			           		</c:if>
			           		</div>						
						</td>
						<td>${review.review_date }</td>
						<td><input type="button" value="수정" onclick="location.href='reviewModifyForm.me?review_idx=${review.review_idx}'"></td>
						<!-- 리뷰 삭제시 서블릿 주소로 review_idx를 전달해야 한다. -->
						<td><input type="button" value="삭제" onclick="location.href='reviewDelete.me?review_idx=${review.review_idx}'"></td>
<!-- 						<td><input type="button" value="삭제" onclick="location.href='return deleteReview()'"></td> -->
					</tr>
				
				</c:forEach>
			</table>
  	</div>
      &nbsp; &nbsp; &nbsp;
  

	<!-- footer -->
	<div class="site-footer" style="margin-top: 350px">
    <div class="inner first">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">FOODCODE</h3>
              <p>우리는 아이티윌 2팀. 식당 예약 및 리뷰 페이지 만들고 있습니다</p>
            </div>
            <div class="widget">
              <ul class="list-unstyled social">
                <li><a href="#"><span class="icon-twitter"></span></a></li>
                <li><a href="#"><span class="icon-instagram"></span></a></li>
                <li><a href="#"><span class="icon-facebook"></span></a></li>
                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                <li><a href="#"><span class="icon-dribbble"></span></a></li>
                <li><a href="#"><span class="icon-pinterest"></span></a></li>
                <li><a href="#"><span class="icon-apple"></span></a></li>
                <li><a href="#"><span class="icon-google"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2 pl-lg-5">
            <div class="widget">
              <h3 class="heading">Pages</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2">
            <div class="widget">
              <h3 class="heading">Resources</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">Contact</h3>
              <ul class="list-unstyled quick-info links">
                <li class="email"><a href="#">team2@itwillbs.com</a></li>
                <li class="phone"><a href="#">051 - 803 - 0909</a></li>
                <li class="address"><a href="#">부산 부산진구 동천로 109</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  
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
