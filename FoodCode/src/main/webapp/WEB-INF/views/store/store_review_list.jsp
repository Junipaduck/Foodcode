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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/star.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store.css"> <!-- 테이블 외부 css 파일 경로 -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  
<%--   <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/dataTable.css"> <!-- 테이블 외부 css 파일 경로 -->

 --%>
 <link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">  
<style type="text/css">
.mb-0 { /*폰트수정*/
	font-family: 'Noto Sans KR', sans-serif;
}

.text-white {
	font-family: 'Noto Sans KR', sans-serif;
}

.btn btn-primary btn-block {
	font-family: 'Noto Sans KR', sans-serif;
}
.image_hover {

}
.form222 {
  border-radius: 10px;
  z-index: 9;
  background: #ffffff; }

#review_content {
	text-decoration: underline;
}  
</style>

  <title>아이티윌 2팀</title>
  
</head>

<body>
	
	<header>
		<jsp:include page="../inc/top2.jsp"></jsp:include>
	</header>
	&nbsp;&nbsp;&nbsp;
	<!-- 리뷰게시판 검색창 -->
	<section id="buttonArea">
		<form class="form222" action="reviewList.me" style="margin-bottom: 10px; margin-top: -10px; margin-left: 600px;">
			<!-- 검색창 -->
			<select name="searchType" id="" class="custom-select" style="width: 150px; float: left;">
				<option value="content" <c:if test="${param.searchKeyword eq 'content'}">selected</c:if>>내용</option>
				<option value="name" <c:if test="${param.searchKeyword eq 'name'}">selected</c:if>>업체명</option>
			</select>
			<input class="form-control me-2" type="search" placeholder="검색해 보세요" aria-label="Search" name="searchKeyword" value="${param.searchKeyword }" style="width: 300px; float: left; margin-right: 500px;">
			<button class="btn btn-outline-success" type="submit" style="margin-left: 10px;height: 43px;">검색하기</button>
		</form>
	</section>
	
	&nbsp; &nbsp; &nbsp; 
    <table  class="rwd-table" id="dataTable" style="width: 1100px;" cellspacing="0">
        <tbody>
        <tr>
            <th>글번호</th>
            <th>작성자</th>
            <th>업체명</th>
            <th>리뷰내용</th>
            <th>리뷰사진</th>
            <th>별점</th>
            <th>작성일자</th>
            <th></th>
        </tr>

		<c:forEach items="${reviewList }" var="review">
		        <tr class="KOTRA-fontsize-80">
		          <td>${review.review_idx }</td>
		          <td>${review.member_id }</td>
		           <td>${review.store_name }</td>
		           <td><a id="review_content" href="ReviewDetail.me?review_idx=${review.review_idx }&store_idx=${review.store_idx}">${review.review_content }</a></td>
			        <td class="image_hover">
     	                <c:set var="length" value="${fn:length(review.review_file) }"/>
						<c:set var="index" value="${fn:indexOf(review.review_file, '_') }"/>
						<c:set var="fileName" value="${fn:substring(review.review_file, index + 1, length) }"/>
						<img alt="..." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 50px;width: 50px;">
<%-- 		           		${review.review_file } --%>
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
		           <td><input type="button" value="점주답글달기" onclick="location.href='ownerReplyForm.me?store_idx=${review.store_idx}'"></td>
		           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
		        </tr>
		</c:forEach>
	</tbody>
    </table>
    &nbsp; &nbsp; &nbsp;
    <!-- 20230421 페이징 css 수정 -->
    <section id="pageList">
    <div class="w3-container">
    	<div class="w3-center">
			<div class="w3-bar w3-border">
				<c:choose>
					<c:when test="${empty param.pageNum }">
						<c:set var="pageNum" value="1" />
					</c:when>
					<c:otherwise>
						<c:set var="pageNum" value="${param.pageNum }" />
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${pageNum > 1 }">
					  	<a href="reviewList.me?pageNum=${pageNum - 1}" class="w3-bar-item w3-button">이전</a>
					</c:when>
					<c:otherwise>
						<a href="#" class="w3-bar-item w3-button">이전</a>
					</c:otherwise>
				</c:choose>
				<c:forEach var="num" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
					<c:choose>
						<c:when test="${pageNum eq num }"> <%-- 현재 페이지 번호일 경우 --%>
			  				<b><a href="#" class="w3-bar-item w3-button">${num }</a></b>
						</c:when>
						<c:otherwise>
						    <a href="reviewList.me?pageNum=${num }" class="w3-bar-item w3-button">${num }</a>
						</c:otherwise>				
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${pageNum < pageInfo.maxPage }">
						<a href="reviewList.me?pageNum=${pageNum + 1}" class="w3-bar-item w3-button">다음</a>
					</c:when>
					<c:otherwise>
			  			<a href="#" class="w3-bar-item w3-button">다음</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
    </div>
    </section>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>

</html>
