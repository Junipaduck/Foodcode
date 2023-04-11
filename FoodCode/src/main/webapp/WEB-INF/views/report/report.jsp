<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌 2팀</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="../favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/owl.carousel.min.css">
  <link rel="stylesheet" href="../css/owl.theme.default.min.css">
  <link rel="stylesheet" href="../css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="../fonts/icomoon/style.css">
  <link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="../css/daterangepicker.css">
  <link rel="stylesheet" href="../css/aos.css">
  <link rel="stylesheet" href="../css/style.css">






<!-- 신고양식css 시작 --------------------------------------------------------------------------------->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<style type="text/css">
#div-top {
	margin: auto;
	margin-top: 100px;
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
  padding:10px 20px;
  border-top:1px solid #ccc;
  word-break:break-all
}
.table--min {
  min-width:500px;
}

#table1 {
background: #1A374D;
color: #fff;
/* 아래 2줄은 테이블 둥근모서리 표현하는 코드 */
border-top-left-radius: 15px;
border-top-right-radius: 15px;
}

.form-control, .custom-select {
  border: 2px solid #e9ecef;
  font-size: 16px;
  height: 100px;
  width: 460px;
  margin-top: 20px;
    }
  .form-control:active, .form-control:focus, .custom-select:active, .custom-select:focus {
    -webkit-box-shadow: none;
    box-shadow: none; }
    
    
.btn {
  padding-top: 12px;
  padding-bottom: 12px;
  padding-left: 188px;
  padding-right: 188px;
  border-radius: 30px;
  font-size: 20px; }
  .btn:active, .btn:focus {
    outline: none;
    -webkit-box-shadow: none;
    box-shadow: none; }
  .btn.btn-primary {
   background: #1A374D;
   border-color: #1A374D;
	color: #fff;
    margin-top: 30px;
    margin-bottom: 200px;
   }
    .btn.btn-primary:hover {
     background: #1A374D;
	color: #fff; }
	

@media screen and (max-width:768px) {
  /*normal*/
  .table-box {
  overflow-x:auto;
  }
}
</style>
<!-- 신고양식 css끝 --------------------------------------------------------------------------------------->

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
        <a href="../index.jsp" class="logo m-0">아이티윌 2팀<span class="text-primary">.</span></a>
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
            <h1 class="mb-0">아이티윌 2팀</h1>
            <p class="text-white">신고페이지 양식입니다!</p>
          </div>
        </div>
      </div>
    </div>
  </div>





<!-- 신고양식 html 시작 --------------------------------------------------------------------------------- -->
	<div id="div-top"><h1 id="h1-1">신고하기</h1></div>
	<div id="div-top2">
		<hr>
		작성자 |　홍길동 <br>
	    내　용 |　와 여기 맛 없어요 절대 가지마세요 ^^ㅗ
		<hr>
	</div>

  <div class="table-box">
    <table class="table table--min" cellspacing="0" cellpadding="0">
      <thead>
      <tr>
        <th style="width:10%" id="table1">신고하는 사유를 선택해주세요.</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td><input type="radio" name="select"> 음란성, 욕설 등 부적절한 내용</td>
      </tr>
      <tr>
        <td><input type="radio" name="select"> 부적절한 홍보 또는 광고</td>
      </tr>
      <tr>
        <td><input type="radio" name="select"> 가게 이용과 관련없는 내용, 사진 게시</td>
      </tr>
       <tr>
        <td><input type="radio" name="select"> 개인정보 유출 위험</td>
      </tr>
       <tr>
        <td><input type="radio" name="select"> 리뷰 작성 취지에 맞지 않는 내용 (복사글 등)</td>
      </tr>
       <tr>
        <td><input type="radio" name="select"> 저작권 도용 의심 (사진 등)</td>
      </tr>
       <tr>
        <td><input type="radio" name="select"> 기타 (하단에 사유를 직접 작성해주세요.)<br>
        	<textarea name="" class="form-control" id="message" cols="30" rows="5" placeholder="신고사유를 직접 작성해주세요."></textarea><br>
        	<button type="submit" class="btn btn-primary">신고하기</button> <!-- 클릭 시 "신고접수가 완료되었습니다." 알림창 띄우고 홈으로 이동 -->
        </td>
      </tr>
      </tbody>
    </table>
  </div>
 <!-- 신고양식 html 끝 --------------------------------------------------------------------------------->
 
 
 
 
 
  <div class="site-footer">
    <div class="inner first">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">About Tour</h3>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
                <li class="email"><a href="#">mail@example.com</a></li>
                <li class="phone"><a href="#">+1 222 212 3819</a></li>
                <li class="address"><a href="#">43 Raymouth Rd. Baltemoer, London 3910</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>



    <div class="inner dark">
      <div class="container">
        <div class="row text-center">
          <div class="col-md-8 mb-3 mb-md-0 mx-auto">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" class="link-highlight">Untree.co</a> <!-- License information: https://untree.co/license/ -->
            </p>
          </div>
          
        </div>
      </div>
    </div>
  </div>

  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>

  <script src="../js/jquery-3.4.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.animateNumber.min.js"></script>
  <script src="../js/jquery.waypoints.min.js"></script>
  <script src="../js/jquery.fancybox.min.js"></script>
  <script src="../js/aos.js"></script>
  <script src="../js/moment.min.js"></script>
  <script src="../js/daterangepicker.js"></script>

  <script src="../js/typed.js"></script>
  
  <script src="../js/custom.js"></script>
 
 
 
 
</body>
</html>