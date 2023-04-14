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






<!-- css 시작 --------------------------------------------------------------------------------->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<style type="text/css">
.hanadiv {
	margin: auto;
}

.table-box2 {
	background: #ff9507;
	color: #fff;
	border-top-left-radius: 15px;
	border-top-right-radius: 15px;
	padding:5px 20px;
	border-top:1px solid #ccc;
	word-break:break-all;
	width:1000px;
	margin: auto;
}

.hana-site-footer {
	margin-top: 100px;
}

#div-top {
	margin: auto;
	margin-top: -10px;
	text-align: center;
	width: 500px;
    height: 50px;
}

#h1-1 {
	font-family: 'Noto Sans KR', sans-serif;
}

#div-top2 {
	margin: auto;
	margin-bottom: 15px;
	text-align: left;
	width: 500px;
    height: 80px;
}

.table {
  table-layout:fixed;
/*   width:100%; */
  text-align:left;
  width: 300px;
  height: 300px;
  margin: auto;
}
.table th { 
  background:#ccc;
}
.table td, .table th {
  padding:15px 20px;
  border-top:1px solid #ccc;
  word-break:break-all
}

.td-subject {
	font-weight: bold;
	font-size: medium;
}

.td-date {
	font-size:x-small;
    width: 140px
}

.td-idx {
	width: 60px;
}

.table--min {
  min-width:1000px;
}

#table1 {
background: #1A374D;
color: #fff;
/* 아래 2줄은 테이블 둥근모서리 표현하는 코드 */
border-top-left-radius: 15px;
border-top-right-radius: 15px;
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
	border: 2px solid #ffffff;
	color: #fff;
	font-size: 14px;
	
}


</style>
<!-- css끝 --------------------------------------------------------------------------------------->

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





<!-- 중간body 시작 --------------------------------------------------------------------------------- -->


<div class="hanadiv">
	<div id="div-top"><h1 id="h1-1"></h1></div>
		<div class="table-box2">
	      <tr>
	        <th style="width:10%" id="table1">
					공지사항
	        </th>
	      </tr>
		</div>
		
		  	<div class="table-box">
			    <table class="table table--min" cellspacing="0" cellpadding="0">
				      <tbody>
				      <tr>
				        <td class="td-idx">8</td>
				        <td class="td-subject"><a href="noticeView.no">회원,비회원 전용 notice_view.jsp로 이동!</a></td>
				        <td class="td-date" >2023년 06월 04일</td>
				      </tr>
				      <tr>
				        <td class="td-idx">7</td>
				        <td class="td-subject">임시주주총회 기준일 및 주주명부 폐쇄기간 설정 공고</td>
				        <td class="td-date" >2023년 06월 01일</td>
				      </tr>
				      <tr>
				        <td class="td-idx">6</td>
				        <td class="td-subject">서비스 이용약관 변경안내</td>
				        <td class="td-date" >2023년 05월 07일</td>
				      </tr>
				      <tr>
				        <td class="td-idx">5</td>
				        <td class="td-subject">결제 관련 주의사항</td>
				        <td class="td-date" >2023년 05월 01일</td>
				      </tr>
				      <tr>
				        <td class="td-idx">4</td>
				        <td class="td-subject">임시주주총회 기준일 및 주주명부 폐쇄기간 설정 공고</td>
				        <td class="td-date">2023년 04월 03일</td>
				      </tr>
				      <tr>
				        <td class="td-idx">3</td>
				        <td class="td-subject">서비스 이용약관 변경안내</td>
				        <td class="td-date">2002년 02월 07일</td>
				      </tr>
				       <tr>
				      	 <td class="td-idx">2</td>
				        <td class="td-subject">개인정보 처리방침 변경안내 </td>
				        <td class="td-date">1987년 01월 19일</td>
				      </tr>
				       <tr>
				        <td class="td-idx">1 </td>
				        <td class="td-subject"><a href="noticeView.no">첫 공지사항입니다. (필독) </a></td>
				        <td class="td-date">1951년 05월 08일</td>
				      </tr>
				      <tr>
				        <td> </td>
				        <td> </td>
				        <td> </td>
				      </tr>
				      </tbody>
			    </table>
		  </div>
</div>
		
 <!-- 중간body 끝 --------------------------------------------------------------------------------->
 
 
 
 
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