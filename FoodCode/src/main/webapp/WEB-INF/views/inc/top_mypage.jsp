<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      

<nav class="site-nav">
	<div class="container">
		<div class="site-navigation">
			<!--  Tour 클릭시 홈으로 이동  -->
			<a href="main" class="logo m-0">아이티윌 2팀<span class="text-primary">.</span></a>

			<ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
				<li><a href="ownerModify">내정보</a></li>
				<li><a href="owner">내식당</a></li>
				<li><a href="ownerReservation">예약</a></li>
				<li><a href="ownerReview">리뷰</a></li>
<!-- 					<li><a href="contact.html">Contact Us</a></li> -->
				<li><a href="main">홈</a> |</li>
				 
			</ul>

			<a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
				<span></span>
			</a>

		</div>
	</div>
</nav>