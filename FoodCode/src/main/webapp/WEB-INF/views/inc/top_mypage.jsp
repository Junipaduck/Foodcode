<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      

<nav class="site-nav">
	<div class="container">
		<div class="site-navigation">
			<a href="main" class="logo m-0">아이티윌 2팀<span class="text-primary">.</span></a>

			<ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
				<li><a href="ownerModify.me">내정보</a></li>
				<li><a href="owner.me">내식당</a></li>
				<li><a href="ownerReservation.me">예약</a></li>
				<li><a href="ownerReview.me">리뷰</a></li>
<!-- 					<li><a href="contact.html">Contact Us</a></li> -->
				<li><a href="main">홈</li>
				
				<!-- 로그인 아이디와 로그아웃 -->
				<c:choose>
					<c:when test="${empty sessionScope.sId }">
						<li><a href="login.me">로그인</a>  <a href="memberJoin.me">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="MemberInfo.me">${sessionScope.sId } 님</a></li> 
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