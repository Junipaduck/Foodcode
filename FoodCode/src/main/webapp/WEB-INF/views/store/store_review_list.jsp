<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store.css"> <!-- 테이블 외부 css 파일 경로 -->
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
</style>

  <title>아이티윌 2팀</title>
  
</head>

<body>
	<form action="reviewList.me">
		<!-- 검색창 -->
		<select name="searchType">
			<option value="content">내용</option>
<!-- 			<option value="name">작성자</option> -->
		</select>
		<input type="text" name="searchKeyword" value="${param.searchKeyword }">
		<input type="submit" value="검색">
		<input type="button" value="글쓰기" onclick="location.href='reviewList.me'">
	</form>
    <table  class="rwd-table" id="dataTable" width="100%" cellspacing="0">
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
	          <td>${review.review_idx }</td>
	           <td>${review.store_idx }</td>
	           <td>${review.review_content }</td>
		        <td class="image_hover">
	           		${review.review_file }
	           	</td>
	           <td>
					${review.review_star }
	           </td>
	           <td>2023/03/20</td>
	           <td><input type="button" value="점주답글달기" onclick="location.href='ownerReplyForm.me'"></td>
	           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
	        </tr>
		</c:forEach>
	</tbody>
    </table>
    
	<section id="pageList">
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
				<input type="button" value="이전" onclick="location.href='reviewList.me?pageNum=${pageNum - 1}'">
			</c:when>
			<c:otherwise>
				<input type="button" value="이전">
			</c:otherwise>
		</c:choose>
		
		<c:forEach var="num" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
			<c:choose>
				<c:when test="${pageNum eq num }"> <%-- 현재 페이지 번호일 경우 --%>
					<b>${num }</b>
				</c:when>
				<c:otherwise>
					<a href="reviewList.me?pageNum=${num }">${num }</a>
				</c:otherwise>				
			</c:choose>
		</c:forEach>
		
		<c:choose>
			<c:when test="${pageNum < pageInfo.maxPage }">
				<input type="button" value="다음" onclick="location.href='reviewList.me?pageNum=${pageNum + 1}'">
			</c:when>
			<c:otherwise>
				<input type="button" value="다음">
			</c:otherwise>
		</c:choose>
	</section>
	
	
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
