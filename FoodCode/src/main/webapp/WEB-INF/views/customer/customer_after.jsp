<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
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

  <title>Tour Free Bootstrap Template for Travel Agency by Untree.co</title>
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
            <h1 class="mb-0">방문 후</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="customer_left.jsp"></jsp:include>
  <div align="center">
		<table id="rwd-table">
			<tr>
				<th class="td_left">idx</th>
				<th class="td_left">제목</th>
				<th class="td_left">작성일</th>
				<th class="td_left">조회수</th>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
			<tr>
				<td>1</td>
				<td>프로젝트 2팀</td>
				<td>23.03.29</td>
				<td>100</td>
				<td><input type="button" value="리뷰" onclick="location.href='customerReviewWrite.me'"></td>
			</tr>
		</table>
  </div>
  
  <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">Lets you Explore the Best. Contact Us Now</h2>
          <p class="mb-4 lead text-white text-white-opacity">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, fugit?</p>
          <p class="mb-0"><a href="booking.po" class="btn btn-outline-white text-white btn-md font-weight-bold">Get in touch</a></p>
        </div>
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
