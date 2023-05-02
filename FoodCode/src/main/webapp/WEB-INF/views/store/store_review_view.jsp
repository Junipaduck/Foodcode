<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FOODCODE : 리뷰상세글</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="../favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store.css"> <!-- 테이블 외부 css 파일 경로 -->
 
 
 
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
 
 
 <!-- css 시작 ------------------------------------------------------------------------------------ -->
 <style type="text/css">
 </style>
 <!-- css 끝 ------------------------------------------------------------------------------------ -->
 

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

  <nav class="site-nav">
    <div class="container">
      <div class="site-navigation">
       	<!-- Tour 클릭 시 홈으로 이동  -->
        <a href="../index.jsp" class="logo m-0"></a>
      <a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
          <span></span>
        </a>

      </div>
    </div>
  </nav>


  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- html 시작 --------------------------------------------------------------------------------- -->
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table  class="rwd-table" id="dataTable" style="width: 700px;" cellspacing="0">
        <tbody>
        <tr>
            <th>항목</th>
            <th>내용</th>
        </tr>

        <tr class="KOTRA-fontsize-80">
			<th>작성자</th>
			<td>${review.member_id }</td>
        </tr>
        <tr class="KOTRA-fontsize-80">
			<th>업체명</th>
			<td>${review.store_name }</td>
        </tr>
        <tr class="KOTRA-fontsize-80">
			<th>리뷰작성일</th>
			<td><fmt:formatDate value="${review.review_date }" pattern="yyyy년 MM월 dd일" /></td>
        </tr>
        <tr class="KOTRA-fontsize-80">
			<th>리뷰사진</th>
			<td>
	  	        <c:set var="length" value="${fn:length(review.review_file) }"/>
				<c:set var="index" value="${fn:indexOf(review.review_file, '_') }"/>
				<c:set var="fileName" value="${fn:substring(review.review_file, index + 1, length) }"/>
				<img alt="등록된 사진이 없습니다." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 200px;width: 200px;">
			</td>
        </tr>
        <tr class="KOTRA-fontsize-80">
			<th>리뷰내용</th>
			<td>${review.review_content }</td>
        </tr>
        <tr class="KOTRA-fontsize-80">
			<th>리뷰평점</th>
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
        </tr>
        <tr class="KOTRA-fontsize-80">
			<th>점주답글</th>
			<td>
				<c:choose>
					<c:when test="${not empty reply.reply_content }">
						${reply.reply_content }
					</c:when>
					<c:when test="${empty reply.reply_content }">
						등록된 답글이 없습니다. 점주회원 이라면 답글을 남겨보세요!
					</c:when>
				</c:choose>
			</td>
        </tr>
	</tbody>
    </table>
    &nbsp;&nbsp;&nbsp;
<!--     <div align="center"> -->
<%-- 	    <button type="submit" class="btn btn-primary" onclick="location.href='ownerReplyForm.me?review_idx=${review.review_idx}&store_idx=${review.store_idx }'">답글달기</button> --%>
<!--     </div> -->
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
    








 <!-- html 끝 --------------------------------------------------------------------------------->
 
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