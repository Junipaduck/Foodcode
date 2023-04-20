<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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

<!-- 아래 1줄은 더보기버튼의 css 링크 -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/js-load_notice.css" media="screen" />


<!-- 0414 배하나 - 아래 js 코드 2줄 넣기 -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">


/* 공지사항 더보기버튼 ajax 코드 시작 */
/* 주석있는 두 곳의 숫자 이외의 코드는 바꿀 필요 없음 */
$(window).on('load', function () {
    load('#js-load', '6'); //=> 처음에 전체묶은 div태그 6개씩 보여짐
    $("#js-btn-wrap .button").on("click", function () {
        load('#js-load', '3', '#js-btn-wrap'); //=> 더보기버튼 클릭할때마다 전체묶은 div태그 3개씩 보여짐
    })
});
 
function load(id, cnt, btn) {
    var noticeList = id + " .js-load:not(.active)";
    var girls_length = $(noticeList).length;
    var girls_total_cnt;
    if (cnt < girls_length) {
        girls_total_cnt = cnt;
    } else {
        girls_total_cnt = girls_length;
        $('.button').hide()
    }
    $(noticeList + ":lt(" + girls_total_cnt + ")").addClass("active");
}
/* 공지사항 더보기버튼 ajax 코드 끝 */


</script>



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
		
		  <!-- 공지사항 더보기 반복할 구간 시작 -->
 		<div id="contents">
  			<div id="js-load" class="main">
    			<ul class="lists">
  			 		<!-- list 를 반복하는 forEach문 시작 -->
		      		<c:forEach var="notice" items="${noticeList }"> 
      					<li class="lists__item js-load">
      						<div class="table-box">
		   						<table class="table table--min" cellspacing="0" cellpadding="0">
		    					   <tbody>
			      	  				 	 <tr>
									        <td class="td-idx">${notice.notice_idx }</td>
									        <!-- 아랫줄은 notice_idx에 해당하는 행 1개를 select 하기위해, 공지사항 제목을 클릭하면 notice_idx값이 들어가도록 하이퍼링크에 걸어놓은 것 -->
									        <td class="td-subject"><a href="noticeView?notice_idx=${notice.notice_idx}" class="a1234"><c:out value="${notice.notice_title}" /></a></td>
									        <td class="td-date" ><fmt:formatDate value="${notice.notice_date }" pattern="yyyy년 MM월 dd일" /></td> <!-- 시간 fmt작업(fmt jstl 코드 필요) -->
				     					 </tr>
		     					   </tbody>
		   						 </table>
							</div>
						</li>
			 		 </c:forEach>
   				</ul>
   			  		 <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button">더보기</a></div>
   			  		 
  			</div>
		</div>
	<!-- 공지사항 더보기 반복할 구간 끝 -->		  
		
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