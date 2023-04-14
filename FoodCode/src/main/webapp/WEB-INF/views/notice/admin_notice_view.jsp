<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌2팀</title>
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


.h2-11 {
	font-family: 'Noto Sans KR', sans-serif;
}

/* 버튼 기본 css */
.btn44{
	background: #ff9507;
  	border-color: #ff9507;
  	border-color: #ff9507;
	background: #ff9507;
	padding-top: 12px; 
	padding-bottom: 12px;
	padding-left: 30px;
	padding-right: 30px;
	border-radius: 30px;
	border: 2px solid #ffffff;
	color: #fff;
	font-size: 14px;
	
	margin-left: 495px;
    margin-top: 10px;
	
}

.hanabutton {
	margin: auto;
}

 </style>
 <!-- css 끝 ------------------------------------------------------------------------------------ -->
 

</head>
<body>
	<!-- 관리자 외 접근금지 코드 -->
	<c:if test="${sessionScope.sId ne 'admin'}">
			<script type="text/javascript">
				alert("관리자전용 입니다!");
				location.href = "./";
			</script>
	</c:if>
	
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
	            <h2 class="h2-11">다이닝코드 개인정보 처리방침 변경안내</h2>
	            <div class="date">2023년 04월 05일</div>
	            <hr>
	        </div>
	        <div class="contents">
	            <p>안녕하세요. 다이닝코드입니다.</p><p>개인정보 보호를 위해 아래와 같이 개인정보 처리방침이 2022년 10월 21일부로 일부 개정되었습니다.</p><p>이에 개정된 주요 내용을 안내 드리오니,</p><p>회원 여러분께서는 변경되는 내용을 확인하여 주시기를 당부드립니다.</p><p></p><p>1. 개정 주요 사유</p><p>&nbsp; - 개인정보 보호법 준수를 위해 개인정보 수집 · 이용 중인 항목을 누락없이 고지하고,</p><p>&nbsp; &nbsp; &nbsp;일반인이 이해할 수 있도록 쉽고 명확하게 처리방침을 개선하였습니다.</p><p></p><p>2. 개정 시행일자</p><p>&nbsp;- 새롭게 개정되는 개인정보 처리방침은 2022년 10월 28일부로 적용될 예정입니다.</p><p>&nbsp;- 이에 현재 적용 중인 개인정보 처리방침은 개정일을 기준으로 효력을 상실하고 새로운 개인정보 처리방침으로 대체됩니다.</p><p></p><p>3. 세부 개정 내용</p><p>&nbsp; ① 개인정보 수집 · 이용 동의 시 3가지 필수 항목을 간결하고 이해하기 쉽게 고지</p><p>&nbsp; &nbsp; &nbsp; - 개인정보 수집 · 이용 항목, 개인정보 수집 · 이용 목적, 보유기간으로 구분</p><p>&nbsp; ② 자동으로 수집하는 개인정보에 관한 사항 고지</p><p>&nbsp; &nbsp; &nbsp; - 서비스 이용 기록, 쿠키 등 자동 생성 정보에 대한 사항 고지</p><p>&nbsp; ③ 제3자로부터 제공받아 수집하는 개인정보 고지</p><p>&nbsp; &nbsp; &nbsp; - SNS 회원가입(페이스북)을 통해 수집하는 개인정보 항목 고지</p><p>&nbsp; ④ 개인정보 처리방침 공개 시 올바른 명칭 사용</p><p>&nbsp; &nbsp; &nbsp; - 개인정보 ‘취급’방침 → 개인정보 ‘처리’방침으로 변경</p>        </div>
	    		<br><hr>
	    </div>
	   		<div class="hanabutton">
				<button type="submit" class="btn btn-primary" onclick="history.back()">돌아가기</button>
				<button type="submit" class="btn btn-primary" onclick="location.href ='noticeModify.no'">수정하기</button>
	            <button type="button" class="btn btn-primary" onclick="location.href ='noticeDelete.no'">삭제하기</button>
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