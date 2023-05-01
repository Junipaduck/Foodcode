<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      

<!-- <script src="js/jquery-3.6.4.js"></script> -->
<script type="text/javascript">
	function confirmLogout(){
		let result = confirm("로그아웃 하시겠습니까?");	
		return result;
	}
	
	
	// 로그인 시 회원 유형 판별
	$('document').ready(function () {
		$.ajax({
			type: "GET",
			url: "selectId.me",
// 			async:false,
// //	 			//data: ${sessionScope.sId},
	 		dataType: "json",
// // 			dataType: "text",
			success: function(result) {
					console.log(result);
					result.forEach((idArr, index) => {
						if(idArr.member_type == 'o') {
						let loginId = 
							'<li class="has-children" style="color: rgba(255, 255, 255, 0.7)!important;font-size: 14px;padding: 10px 15px;display: inline-block;text-decoration: none !important;"><a href="mypage.me">' + idArr.member_id + '님</a>' +
							'<ul class="dropdown">' +
							'<li><a href="mypage.me" title="내식당">내 식당</a></li>' + 
							'<li><a href="ownerModify.me" title="내정보">내 정보 수정</a></li>' + 
							'<li><a href="ownerReview.me" title="리뷰">리뷰관리</a></li>' + 
							'</ul>' + 
							'</li>';
						$("#sessionArea").html(loginId);
						} else if(idArr.member_name == 'admin') {
							let loginId = 
								'<li class="has-children" style="color: rgba(255, 255, 255, 0.7)!important;font-size: 14px;padding: 10px 15px;display: inline-block;text-decoration: none !important;">관리자님</li>'
						$("#sessionArea").html(loginId);
						} else if(idArr.member_type == 'c') {
							let loginId = 
// 								'<div style="margin-top:100px">' + 
								'<li class="has-children" style="color: rgba(255, 255, 255, 0.7)!important;font-size: 14px;padding: 10px 15px;display: inline-block;text-decoration: none !important;"><a href="mypage.me">' + idArr.member_id + '님</a>' +
								'<ul class="dropdown">' +
								'<li><a href="customerModify.me" title="내 정보 수정">내 정보 수정</a></li>' + 
								'<li><a href="customerBooking.me" title="예약 관리">예약 관리</a></li>' + 
								'<li><a href="customerAfter.me" title="이용 내역">이용 내역</a></li>' + 
								'<li><a href="customerReview.me" title="리뷰 관리">리뷰 관리</a></li>' + 
								'</ul>' + 
								'</li>';
						$("#sessionArea").html(loginId);
						}
					});
			}
				
		})
	});
</script>




<!-- 폰트 링크 (아래 4줄) -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font_NotoSans.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">


<style type="text/css">
.logo99 {
	margin-top: -11px;
}
</style>
    


	<nav class="site-nav">
		<div class="container">
			<div class="site-navigation">
				<!--  Tour 클릭시 홈으로 이동  -->
				<a href="./" class="logo m-0"><img class="logo99" alt="" src="${pageContext.request.contextPath }/resources/images/foodcodelogo2.png" width="160" height="60"><span class="text-primary"></span></a>

				<ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right" style="margin-block-start: 0em">
					<li><a href="reviewList.me">리뷰게시판</a></li>
					<li><a href="store_recommend.so">맛집찾기</a></li>
					<!-- <li><a href="noticeList.no">공지사항</a></li> --> <!-- 수정전 코드 -->
					
					<!-- 4/15 배하나수정 - 아래 10줄은 sId가 관리자일때는 c:when태그속 주소로 매핑, 아니라면 c:otherwise태그로 매핑 -->
					<li><a href="
							<c:choose>
								<c:when test="${sessionScope.sId eq 'admin' }">
									adminNoticeList.no
								</c:when>
								<c:otherwise>
									noticeList.no
								</c:otherwise>
							</c:choose>
							">공지사항</a></li>
							
					<li><a href="service_view.no">이용안내</a></li>
<!-- 					<li><a href="contact.html">Contact Us</a></li> -->
					<li><a href="./">홈</a> </li>
					
					<li id="sessionArea"></li> 
					
					<c:choose>
						<c:when test="${empty sessionScope.sId }">
							<li><a href="login.me">로그인</a>  <a href="memberJoin.me">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<!-- ㅇㅇ님 클릭시 마이페이지로 이동 -->
<%-- 							<li><a href="customerMypage.me">${sessionScope.sId } 님</a></li>  --%>
							<li id="sessionArea"></li>
								<!-- 0426최보아 - 회원 타입에 따라 드롭다운(메뉴) 생기도록 수정(상단 ajax부분) -->
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${sessionScope.sId eq 'owner1'}"> --%>
<%-- 										<li class="has-children"><a href="#">${sessionScope.sId } 님</a> --%>
<!-- 											<ul class="dropdown"> -->
<!-- 												<li><a href="mypage.me" title="내식당">내 식당</a></li> -->
<!-- 												<li><a href="ownerModify.me" title="내정보">내 정보 수정</a></li> -->
<!-- 								                <li><a href="ownerReview.me" title="리뷰">리뷰관리</a></li> -->
<!-- 											</ul> -->
<!-- 										</li> -->
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> --%>
<%-- 										<li><a href="mypage.me">${sessionScope.sId } 님</a></li> --%>
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
								<!-- 드롭다운 끝 -->
							 <li><a href="logout.me" id="logout" onclick="return confirmLogout()">로그아웃</a></li>
							<c:if test="${sessionScope.sId eq 'admin' }">
								 <li><a href="adminMain">관리자 페이지</a></li>
							</c:if>
						</c:otherwise>
					</c:choose>
					
				</ul>

				<a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
					<span></span>
				</a>

			</div>
		</div>
	</nav>












































