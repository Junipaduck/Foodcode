<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FOODCODE : 리뷰 삭제 요청</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="../favicon.png">

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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store.css"> <!-- 테이블 외부 css 파일 경로 -->






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
/* border-top-left-radius: 15px; */
/* border-top-right-radius: 15px; */
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
   background: #ff9507;
   border-color: #ff9507;
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
	<!-- inc/top.jsp -->
	<header>
		<jsp:include page="../inc/top2.jsp"></jsp:include>
	</header>
		
	<div class="site-mobile-menu site-navbar-target">
	  <div class="site-mobile-menu-header">
	    <div class="site-mobile-menu-close">
	      <span class="icofont-close js-menu-toggle"></span>
	    </div>
	  </div>
	  <div class="site-mobile-menu-body"></div>
	</div>





<!-- 신고양식 html 시작 --------------------------------------------------------------------------------- -->
	<div id="div-top">
		<h2 id="h1-1">리뷰삭제요청</h2>
	</div>
	<div id="div-top2">
<!-- 		<hr> -->
<%-- 		작성자 ID |　${sessionScope.sId}<br> --%>
<!-- 		<hr> -->
			<small id="small" class="form-text text-muted">* 타당한 근거 없이 접수된 요청은 관리자 확인 후 반영되지 않을 수 있습니다. </small>
	</div>

  <div class="table-box">
  	<form action="ownerReviewDelete.me" name="ownerReviewDelete" method="POST" enctype="multipart/form-data">
  	<input type="hidden" name="store_idx" value="${param.store_idx}" />
	  	<input type="hidden" name="review_idx" value="${param.review_idx }">
		    <table class="table table--min" cellspacing="0" cellpadding="0">
		      <thead>
		      <tr>
		        <th style="width:10%; background-color: #ff9507;" id="table1">리뷰삭제요청 사유를 작성해주세요</th>
		      </tr>
		      </thead>
		      <tbody>
		      <tr>
		        <td>
		        	<textarea rows="5" cols="60" id="review_report" name="review_report"></textarea>
				</td>
		      </tr>

		       <tr>
		        <td>
<!-- 		           <input type="radio" id="report_content5" value="기타" name="report_content"><label for="report_content5">　기타 (신고사유를 증명할 파일을 첨부해주세요.)</label> -->
<!-- 		        	<textarea name="" class="form-control" id="message" name="report_content" cols="30" rows="5" placeholder="신고사유를 직접 작성해주세요."></textarea><br> -->
<!-- 		            <input type="file" name="file"> -->
		        	<button type="submit" class="btn btn-primary" style="background-color: #ff9507;">리뷰삭제요청</button> <!-- 클릭 시 "신고접수가 완료되었습니다." 알림창 띄우고 홈으로 이동 -->
		        </td>
		      </tr>
		      </tbody>
		    </table>
		</form>
  </div>
 <!-- 신고양식 html 끝 --------------------------------------------------------------------------------->
 
 
 
 
 
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