<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰상세글</title>
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
 
 
 
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
 
 
 <!-- css 시작 ------------------------------------------------------------------------------------ -->
 <style type="text/css">
 .board-header h2 {
    color: rgb(44, 135, 241);
}

h2 {
    font-size: 24px;
    font-weight: 600;
    line-height: 120%;
    color: #222228;
}
 
 
.board-wrap {
	margin-top: 100px;
	margin-left: 400px;
	margin-right: 400px;
	margin-bottom: 100px;
}

.board-view {

}






 </style>
 <!-- css 끝 ------------------------------------------------------------------------------------ -->
 

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
<div class="hanadiv">
	<div class="board-wrap">
	    <div class="board-view">
	        <div class="board-header">
	        
		            <h2 class="h2-11">작성자 : ${review.member_id }</h2> <!-- 리뷰 작성자 -->
		            <hr>
		            <div class="date"><fmt:formatDate value="${review.review_date }" pattern="yyyy년 MM월 dd일" /></div> <!-- 공지사항 날짜 -->
		            <hr>
			        </div>
			        <div class="contents" style="white-space: pre-line;"> 
			        ${review.review_content }
			        </div>
			        <hr>
			        <div class="contents" style="white-space: pre-line;"> 
    	                <c:set var="length" value="${fn:length(review.review_file) }"/>
						<c:set var="index" value="${fn:indexOf(review.review_file, '_') }"/>
						<c:set var="fileName" value="${fn:substring(review.review_file, index + 1, length) }"/>
						<img alt="..." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 200px;width: 200px;">
			        </div>
			        <hr>	
			        <div class="contents" style="white-space: pre-line;"> 
			        <h4>점주답글</h4>
			        ${reply.reply_content }
			        </div>	
	    		<br><hr>
          <button type="submit" class="btn btn-primary" onclick="location.href='ownerReplyForm.me?review_idx=${review.review_idx}&store_idx=${review.store_idx }'">답변하기</button>
	    </div>
    </div>
</div>








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