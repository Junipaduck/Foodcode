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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/map.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

	<title>푸드코드 메인페이지</title>
<style type="text/css">
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}</style>	
</head>
<script type="text/javascript">
// 맛집 추천 슬라이드 쇼 스크립트
	function w3_open() {
	  document.getElementById("mySidebar").style.display = "block";
	}
	 
	function w3_close() {
	  document.getElementById("mySidebar").style.display = "none";
	}
</script>
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
											<select name="searchType" id="" class="form-control custom-select" style="width: 300px;">
												<option value="store_name" <c:if test="${param.searchKeyword eq 'store_name'}">selected</c:if>>가게명</option>
												<option value="store_content" <c:if test="${param.searchKeyword eq 'store_content'}">selected</c:if>>가게소개글</option>
											</select>
										</div>

									</div>
									<br>    
									<div class="row align-items-center">
										<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
											<input class="form-control me-2" type="search" placeholder="검색해 보세요" aria-label="Search" name="searchKeyword" value="${param.searchKeyword }" style="width: 300px;">
											<br>
											<button class="btn btn-outline-success" type="submit" style="margin-left: 90px;">Search</button>
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
						<img src="https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image" class="img-fluid active">
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
<!-- 	<div id="map" style="width:600px;height:350px;  margin: auto;"></div> -->
	<div class="map_wrap">
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	
	    <div id="menu_wrap" class="bg_white">
	        <div class="option">
	            <div>
	                <form onsubmit="searchPlaces(); return false;">
	                    키워드 : <input type="text" value="서면 맛집" id="keyword" size="15"> 
	                    <button type="submit">검색하기</button> 
	                </form>
	            </div>
	        </div>
	        <hr>
	        <ul id="placesList"></ul>
	        <div id="pagination"></div>
	    </div>
	</div>
	<br>

<<<<<<< HEAD
	
	
	
	
	
<!-- 0427배하나 추가) 예약건수 많은순위(1~10등) 차트 시작! -->
 <hr>
	 <div style="display: block; box-sizing: border-box; height: 500px; width: 1000px; margin: auto;">
	 <div class="h5 text-center" style="font-size: 30px;">실시간 예약순위 <img width="50px;" style="margin-bottom: 10px;" src="https://www.svgrepo.com/show/491984/notice-certificate-of-deposit.svg"></div>
	  <canvas id="mtChart" ></canvas>
	 </div>
<br><br><br>
<hr> 
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
 
// 메모) 스크립트 안에서 jstl 안먹길래 map으로 받아옴
// <c:forEach var="bookingChart" items="${bookingChart }" begin="0" end="4" step="1">
// 	 var store_name = "${bookingChart.store_name }";
// 	 var booking_count = "${bookingChart.booking_count }";
// </c:forEach>


 /* 데이터 정보를 담은 변수 선언 */
const labels = ['1위♡ ${map.bookingChart[0].store_name}', '${map.bookingChart[1].store_name}', '${map.bookingChart[2].store_name}',
				'${map.bookingChart[3].store_name}', '${map.bookingChart[4].store_name}', '${map.bookingChart[5].store_name}',
				'${map.bookingChart[6].store_name}', '${map.bookingChart[7].store_name}', '${map.bookingChart[8].store_name}',
				'${map.bookingChart[9].store_name}', '${map.bookingChart[10].store_name}'];
const data = {
  labels: labels,
  datasets: [{
	  label: '예약 건수',
    backgroundColor: [
        '#ff4658',
        '#ffa55a',
        '#fbde88',
        '#20c997',
        '#7ba9ff',
        '#ba94ff',
        '#ba94ff',
        '#ba94ff',
        '#ba94ff',
        '#ba94ff'
    ],
    borderColor: [
        '#ff4658',
        '#ffa55a',
        '#fbde88',
        '#20c997',
        '#7ba9ff',
        '#ba94ff',
        '#ba94ff',
        '#ba94ff',
        '#ba94ff',
        '#ba94ff'
    ],
    data: ['${map.bookingChart[0].booking_count}', '${map.bookingChart[1].booking_count}', '${map.bookingChart[2].booking_count}',
			'${map.bookingChart[3].booking_count}', '${map.bookingChart[4].booking_count}', '${map.bookingChart[5].booking_count}',
			'${map.bookingChart[6].booking_count}', '${map.bookingChart[7].booking_count}', '${map.bookingChart[8].booking_count}',
			'${map.bookingChart[9].booking_count}', '${map.bookingChart[10].booking_count}'],
  }
//   ,
//   {
//     label: 'kkk',
//     backgroundColor: 'rgb(255, 99, 132)',
//     borderColor: 'rgb(255, 99, 132)',
//     data: [30, 10, 5, 2, 20, 30, 45],
//   }
  ]
};

const config = {
  type: 'bar',
  data,
  options: {}
};


</script>
<script>
  const mtChart = new Chart(
    document.getElementById('mtChart'),
    config
  );
</script>
<!-- 예약순위 차트 끝 -->
 
	
	
	


	<!-- 추천맛집, 조회수 높은 맛집들 소개하는 공간 -->

=======
	<!-- 제공 서비스 소개 -->
>>>>>>> branch 'main' of https://github.com/Junipaduck/Foodcode.git
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
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7"><h2 class="section-title text-center">지금 인기 있는 맛집 - 별점 평균 4점 이상</h2></div>
			</div>

				<div class="owl-carousel owl-3-slider">
					<c:forEach items="${storeList }" var="store">
								<div class="item">
									<c:set var="length" value="${fn:length(store.store_file) }"/>
									<c:set var="index" value="${fn:indexOf(store.store_file, '_') }"/>
									<c:set var="fileName" value="${fn:substring(store.store_file, index + 1, length) }"/>
									<a class="media-thumb" href="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" data-fancybox="gallery">
										<div class="media-text">
											<h3>${store.store_name }</h3>
											<span class="location">${store.store_content }</span>
					    		           	<div class="review_star">
								           		<c:if test="${not empty store.review_star }">
								           			<c:choose>
								           				<c:when test="${store.review_star == 1 }">
										  				<label for="review_star1" title="1점" id="review_star">&#11088;</label>
								           				</c:when>
								           				<c:when test="${store.review_star == 2 }">
										  				<label for="review_star2" title="2점" id="review_star">&#11088;&#11088;</label>
								           				</c:when>
								           				<c:when test="${store.review_star == 3 }">
										  				<label for="review_star3" title="3점" id="review_star">&#11088;&#11088;&#11088;</label>
								           				</c:when>
								           				<c:when test="${store.review_star == 4 }">
										  				<label for="review_star4" title="4점" id="review_star">&#11088;&#11088;&#11088;&#11088;</label>
								           				</c:when>
								           				<c:when test="${store.review_star == 5 }">
										  				<label for="review_star5" title="5점" id="review_star">&#11088;&#11088;&#11088;&#11088;&#11088;</label>
								           				</c:when>
								           				<c:otherwise>
								           				No Rating
								           				</c:otherwise>
								           			</c:choose>
								           		</c:if>
							           		</div>
										</div>
										<img alt="..." src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" style="height: 400px;width: 400px;">
									</a> 
								</div>
			
					</c:forEach>
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
	<!-- 카카오 로그인 함수들! -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>

        window.Kakao.init('17cca8149886e3a10cca266bef314925');
        window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY'))); //sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.
        
        function kakaoLogout() {
            if (!Kakao.Auth.getAccessToken()) {
                console.log('Not logged in.');
                return;
            }
            Kakao.Auth.logout(function(response) {
                alert(response +' logout');
                window.location.href='http://localhost:8089/foodcode/main';
            });
        };

        function secession() {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function(response) {
                    console.log(response);
                    //callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
                    window.location.href='http://localhost:8089/foodcode/main';
                },
                fail: function(error) {
                    console.log('탈퇴 미완료')
                    console.log(error);
                },
            });
        };

        const logout = document.querySelector('#kakaoLogout');
        const sion = document.querySelector('#secession');

        logout.addEventListener('click', kakaoLogout);
        sion.addEventListener('click', secession);
    </script>
		<!-- 카카오 함수 끝! -->
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
	  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a91ec8056a635e82b3a39377778273a1&libraries=services"></script>
<!-- 	 <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a91ec8056a635e82b3a39377778273a1"></script> -->
	<script>
	// 마커를 담을 배열입니다
	var markers = [];

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();  

	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});

	// 키워드로 장소를 검색합니다
	searchPlaces();

	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {

	    var keyword = document.getElementById('keyword').value;

	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }

	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch( keyword, placesSearchCB); 
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	        displayPlaces(data);

	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);

	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

	        alert('검색 결과가 존재하지 않습니다.');
	        return;

	    } else if (status === kakao.maps.services.Status.ERROR) {

	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;

	    }
	}

	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {

	    var listEl = document.getElementById('placesList'), 
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(), 
	    bounds = new kakao.maps.LatLngBounds(), 
	    listStr = '';
	    
	    // 검색 결과 목록에 추가된 항목들을 제거합니다
	    removeAllChildNods(listEl);

	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    for ( var i=0; i<places.length; i++ ) {

	        // 마커를 생성하고 지도에 표시합니다
	        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
	            marker = addMarker(placePosition, i), 
	            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        bounds.extend(placePosition);

	        // 마커와 검색결과 항목에 mouseover 했을때
	        // 해당 장소에 인포윈도우에 장소명을 표시합니다
	        // mouseout 했을 때는 인포윈도우를 닫습니다
	        (function(marker, title) {
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	                displayInfowindow(marker, title);
	            });

	            kakao.maps.event.addListener(marker, 'mouseout', function() {
	                infowindow.close();
	            });

	            itemEl.onmouseover =  function () {
	                displayInfowindow(marker, title);
	            };

	            itemEl.onmouseout =  function () {
	                infowindow.close();
	            };
	        })(marker, places[i].place_name);

	        fragment.appendChild(itemEl);
	    }

	    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;

	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    map.setBounds(bounds);
	}

	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {

	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';

	    if (places.road_address_name) {
	        itemStr += '    <span>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           

	    el.innerHTML = itemStr;
	    el.className = 'item';

	    return el;
	}

	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });

	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

	    return marker;
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}

	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 

	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }

	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;

	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }

	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}

	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}

	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	</script>
	

</body>

</html>
