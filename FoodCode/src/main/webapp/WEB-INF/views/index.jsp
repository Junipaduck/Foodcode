<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap4" />
	
	<!-- 네이버 지도  api 관련 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

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
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/map.css"> --%>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

	<title>푸드코드 메인페이지</title>
</head>

<body>
	<header>
		<jsp:include page="inc/top.jsp"></jsp:include>
	</header>
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>



<!-- 	<nav class="site-nav"> -->
	
<!-- 	</nav> -->

	<!-- 메인화면 상단 가게 소개 및 상세페이지 이동 버튼 -->
	<div class="hero">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="intro-wrap">
						<h1 class="mb-5"><span class="d-block" style="font-family: 'Noto Sans KR', sans-serif;">맛있는 식당<br>예약해보세요</span><span class="typed-words"></span></h1>

						<div class="row">
							<div class="col-12">
								<form class="form" action="store_recommend.so">
									<div class="row mb-2">
										<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
											<select name="searchType" id="" class="form-control custom-select">
												<option value="store_name" <c:if test="${param.searchKeyword eq 'store_name'}">selected</c:if>>가게명</option>
												<option value="store_content" <c:if test="${param.searchKeyword eq 'store_content'}">selected</c:if>>가게소개글</option>
											</select>
										</div>

									</div>
									<br>    
									<div class="row align-items-center">
										<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
											<input class="form-control me-2" type="search" placeholder="검색해 보세요" aria-label="Search" name="searchKeyword" value="${param.searchKeyword }">
											<br>
											<button class="btn btn-outline-success" type="submit">Search</button>
										</div>
										<div class="col-lg-8">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="slides"> <!--  메인화면 음식 사진 -->
						<img src="https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image" class="img-fluid active" onclick="location.href='${pageContext.request.contextPath }/store.so'">
						<img src="https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image" class="img-fluid">
						<img src="https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image" class="img-fluid">
						<img src="https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image" class="img-fluid">
						<img src="https://images.pexels.com/photos/3338681/pexels-photo-3338681.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 지도 -->
<!-- 	<div id="map" style="width:800px;height:450px;margin: auto;"></div> -->
	<div id="map" style="width:600px;height:350px;  margin: auto;"></div>
	<br>

	<!-- 제공 서비스 소개 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-lg-6 text-center">
					<h2 class="section-title text-center mb-3" style="font-family: 'Noto Sans KR', sans-serif;">우리가 제공하는 서비스</h2>
					<p style="font-family: 'Noto Sans KR', sans-serif;">식당 예약 및 리뷰 작성가능하답니다</p>
				</div>
			</div>
			<div class="row align-items-stretch">
				<div class="col-lg-4 order-lg-1">
					<div class="h-100"><div class="frame h-100"><div class="feature-img-bg h-100" style="background-image: url(https://images.pexels.com/photos/541216/pexels-photo-541216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2);"></div></div></div>
				</div>

				<div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-1" >

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-house display-4 text-primary"></span>
							<h3>다양한 맛집 보유</h3>
							<p class="mb-0">인기있는 맛집 여기 있음</p>
						</div>
					</div>

					<div class="feature-1 ">
						<div class="align-self-center">
							<span class="flaticon-restaurant display-4 text-primary"></span>
							<h3>어쩌구저쩌구</h3>
							<p class="mb-0">랄라라라라라라아랄라</p>
						</div>
					</div>

				</div>

				<div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-3" >

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-mail display-4 text-primary"></span>
							<h3>미리 예약가능</h3>
							<p class="mb-0">줄서지말고 미리 예약하세요</p>
						</div>
					</div>

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-phone-call display-4 text-primary"></span>
							<h3>어쩌구저쩌구</h3>
							<p class="mb-0">다양한 후기 구경해보고가세요~</p>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>


	<!-- 추천맛집, 조회수 높은 맛집들 소개하는 공간 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7"><h2 class="section-title text-center" style="font-family: 'Noto Sans KR', sans-serif;">지금 인기 있는 맛집</h2></div>
			</div>

			<div class="owl-carousel owl-3-slider">
					<div class="item">
						<!-- 메인 화면 가게 추천을 위한 반복문 -->
						<c:forEach items="${storeList }" var="store">
							<a class="media-thumb" href="https://images.pexels.com/photos/3434523/pexels-photo-3434523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" data-fancybox="gallery">
								<div class="media-text">
									<h3>${store.store_name }</h3>
									<span class="location">${store.store_type }</span>
								</div>
								<img src="https://images.pexels.com/photos/3434523/pexels-photo-3434523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image" class="img-fluid">
							</a> 
						</c:forEach>
				</div>			
			</div>

		</div>
	</div>


	
	<div class="py-5 cta-section">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-12">
					<h2 class="mb-2 text-white" style="font-family: 'Noto Sans KR', sans-serif;">둘러보기~</h2>
					<p class="mb-4 lead text-white text-white-opacity">맛있겠다!! 둘러보실래요?</p>
					<p class="mb-0"><a href="store_recommend.so" class="btn btn-outline-white text-white btn-md font-weight-bold">둘러보기</a></p>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<jsp:include page="inc/bottom.jsp"></jsp:include>
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
	
	
	<!-- 지도 api  -->
	 <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a91ec8056a635e82b3a39377778273a1"></script>
	<script>
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(); 
	
	// 키워드로 장소를 검색합니다
	ps.keywordSearch('이태원 맛집', placesSearchCB); 
	
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new kakao.maps.LatLngBounds();
	
	        for (var i=0; i<data.length; i++) {
	            displayMarker(data[i]);    
	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	        }       
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    } 
	}
	
	// 지도에 마커를 표시하는 함수입니다
	function displayMarker(place) {
	    
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: new kakao.maps.LatLng(place.y, place.x) 
	    });
	
	    // 마커에 클릭이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'click', function() {
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	        infowindow.open(map, marker);
	    });
	}
	</script>
	

</body>

</html>
