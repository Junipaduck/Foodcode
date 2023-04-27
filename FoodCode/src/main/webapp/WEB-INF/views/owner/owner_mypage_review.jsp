<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/aos.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/uili.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/store.css">
<!-- 테이블 외부 css 파일 경로 -->


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
</style>

<title>FOODCODE : 가게 리뷰페이지</title>
</head>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
</script>
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


	<!--  메인화면 소개글  -->
	<div class="hero hero-inner">
<!-- 		<div class="container"> -->
<!-- 			<div class="row align-items-center"> -->
<!-- 				<div class="col-lg-6 mx-auto text-center"> -->
<!-- 					<div class="intro-wrap"></div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
	
	<%-- 사이드바 --%>
	<jsp:include page="owner_left.jsp"></jsp:include>
	
	
	<div class="untree_co-section" style="padding-bottom: 20px;">
		<div style="font-size: 25px;padding-left: 323px;">우리 가게 리뷰</div>
    		<div class="container my-13">
			&nbsp; &nbsp; &nbsp;
			<div align="center">
				<table class="rwd-table" style="width:1300px;margin-left:-66px;">
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
								<td>${review.review_content }</td>
								<td class="image_hover"><c:set var="length" value="${fn:length(review.review_file) }" />
								 	<c:set var="index" value="${fn:indexOf(review.review_file, '_') }" />
								 	<c:set var="fileName" value="${fn:substring(review.review_file, index + 1, length) }" />
									<img alt="..." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 50px; width: 50px;">
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
								<td><input type="button" value="점주답글달기"
									onclick="location.href='ownerReplyForm.me'"> <input
									type="button" value="리뷰삭제요청"
									onclick="location.href='ownerReviewDelete.me?review_idx=${review.review_idx}'">
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	&nbsp; &nbsp; &nbsp;
	<!-- 페이징 -->
	<section id="pageList">
		<div class="w3-container">
			<div class="w3-center" style="margin-left:18x">
				<div class="w3-bar w3-border" style="margin-bottom: 30px;">
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
							<a href="ownerReview.me?pageNum=${pageNum - 1}" class="w3-bar-item w3-button">이전</a>
						</c:when>
						<c:otherwise>
							<a href="#" class="w3-bar-item w3-button">이전</a>
						</c:otherwise>
					</c:choose>
					<c:forEach var="num" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
						<c:choose>
							<c:when test="${pageNum eq num }">
								<%-- 현재 페이지 번호일 경우 --%>
								<b><a href="#" class="w3-bar-item w3-button">${num }</a></b>
							</c:when>
							<c:otherwise>
								<a href="ownerReview.me?pageNum=${num }" class="w3-bar-item w3-button">${num }</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pageNum < pageInfo.maxPage }">
							<a href="ownerReview.me?pageNum=${pageNum + 1}" class="w3-bar-item w3-button">다음</a>
						</c:when>
						<c:otherwise>
							<a href="#" class="w3-bar-item w3-button">다음</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>

	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

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
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
		

</body>

</html>
