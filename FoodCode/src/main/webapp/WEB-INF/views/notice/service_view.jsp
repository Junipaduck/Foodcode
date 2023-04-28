<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

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

  <title>FoodCode Service 소개</title>
</head>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<body>

	<!-- top.jsp -->
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




<!--   <div class="hero hero-inner"> -->
<!--     <div class="container"> -->
<!--       <div class="row align-items-center"> -->
<!--         <div class="col-lg-6 mx-auto text-center"> -->
<!--           <div class="intro-wrap"> -->
<!--             <h1 class="mb-0">FoodCode는 어떤 서비스 일까요?</h1> -->
<!--             <p class="text-white">푸드코드 푸드코드 푸드코드</p> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->


  <div class="untree_co-section">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-lg-6 text-center">
          <h2 class="section-title text-center mb-3">FoodCode 제공 서비스</h2>
          <p>다양한 맛집을 예약하고 리뷰를 남겨보세요!</p>
        </div>
      </div>
      <div class="row align-items-stretch">
        <div class="col-lg-4 order-lg-1">
          <div class="h-100"><div class="frame h-100"><div class="feature-img-bg h-100" style="background-image: url('${pageContext.request.contextPath }/resources/img/FOODCODE로고.png');"></div></div></div>
        </div>

        <div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-1" >

          <div class="feature-1 d-md-flex">
            <div class="align-self-center">
              <span class="flaticon-house display-4 text-primary"></span>
              <h3>맛집, 키워드 검색은 기본!</h3>
              <p class="mb-0">원하는 맛집을 검색해보세요!</p>
            </div>
          </div>

          <div class="feature-1 ">
            <div class="align-self-center">
              <span class="flaticon-restaurant display-4 text-primary"></span>
              <h3>내 주변 맛집</h3>
              <p class="mb-0">뭘 먹을 지 고민하지 마세요! 푸드코드가 여러분이 원하는 맛집을 알려드려요!</p>
            </div>
          </div>

        </div>

        <div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-3" >

          <div class="feature-1 d-md-flex">
            <div class="align-self-center">
              <span class="flaticon-mail display-4 text-primary"></span>
              <h3>생생한 후기 보유!</h3>
              <p class="mb-0">본인 인증을 완료한 사용자들이 남긴 솔직하고 생생한 후기를 확인해보세요!</p>
            </div>
          </div>

          <div class="feature-1 d-md-flex">
            <div class="align-self-center">
              <span class="flaticon-phone-call display-4 text-primary"></span>
              <h3>웨이팅은 이제 그만!</h3>
              <p class="mb-0">매번 기다리기 힘드셨죠? 예약을 통해 편리하게 맛집을 이용해보세요!</p>
            </div>
          </div>

        </div>

      </div>
    </div>
  </div>

  <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">궁금하신가요?</h2>
          <p class="mb-4 lead text-white text-white-opacity">맛집추천 페이지에서 이용하실 수 있습니다</p>
          <p class="mb-0"><a href="store_recommend.so" class="btn btn-outline-white text-white btn-md font-weight-bold">맛집 추천 페이지로 이동</a></p>
        </div>
      </div>
    </div>
  </div>

	<!--  footer -->
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
