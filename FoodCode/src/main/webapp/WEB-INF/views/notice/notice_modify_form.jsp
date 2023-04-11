<!-- 관리자로 로그인 되어있을때만 작성할 수 있는 공지사항 양식페이지입니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>아이티윌2팀</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/js/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/lang/summernote-ko-KR.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
  <!--  -->
  
  
  

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
 
 
 <!-- css 시작 ------------------------------------------------------------------------------------ -->
 <style type="text/css">
 .hr-1 {
 width: 1100px;
 }
 
 .summernote {
 height: 300px;
 }
 
 .form-control {
 	border: 2px solid #e9ecef;
    font-size: 16px;
    height: 40px;
    width: 500px;
    margin: auto;
 }
 
  .form-control2 {
 	border: 2px solid #e9ecef;
    font-size: 16px;
    height: 40px;
    width: 1110px;
    margin: auto;
 }
 
 .table-box2 {
    background: #1A374D;
    color: #fff;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    padding: 5px 20px;
    border-top: 1px solid #ccc;
    word-break: break-all;
    width: 1110px;
    margin: auto;
}

.div-1{
	margin-top: 30px;
	margin-bottom: 30px;
}

/* 버튼 기본 css */
.btn44{
	background: #1A374D;
  	border-color: #1A374D;
  	border-color: #1f425c;
	background: #1f425c;
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

.summernote{
	height: 300px;
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

<div class="div-1">

	<div class="table-box2">
	    <tr>
	      <th style="width:10%" id="table1">공지사항 수정</th>
	    </tr>
	</div>
	
	
	<div class="container">
	 	<div class="form-group">
		<input type="text" class="form-control2" id="subject" placeholder="제목">
	</div>
	  <textarea class="summernote" name="editordata"></textarea> 
	  <input type="button" class="btn44" value="수정하기" onclick="location.href=''">   
	</div>
	<script>
	$('.summernote').summernote({
		  height: 450,
		  lang: "ko-KR",
		});
	
	$(function() {
		$('.note-editable').text("배하나 메모) 여기는 수정페이지라서 제목, 내용 DB를 select 해줘야함!");
	});
	</script>
	
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