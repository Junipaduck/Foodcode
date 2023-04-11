<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
<!--   <link rel="shortcut icon" href="favicon.png"> -->

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
  

  
  <title>식당 등록페이지</title>
</head>

<body>
	<header>
		<jsp:include page="../inc/top_mypage.jsp"></jsp:include>
	</header>

  <div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close">
        <span class="icofont-close js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>

  <nav class="site-nav">
  
  </nav>


  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <h1 class="mb-0">식당 등록</h1>
          </div>
        </div>
      </div>
    </div>
  </div>

  
  
  <div class="untree_co-section">
    <div class="container my-5">

      <div class="row justify-content-center">

        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">STORE</h2>
           <form class="contact-form bg-white" action="storeRegisterPro.so">
              <div class="row">
              	<div class="col-md-6">
                  <div class="form-group">
                    <label class="text-black" for="storeType" >업종</label>
                    <input type="text" class="form-control" id="store_type" name="store_type">
                  </div>
               	 </div>
              </div>
              <div class="row">
              	<div class="col-md-6">
                  <div class="form-group">
                    <label class="text-black" for="storeName" >업체명</label>
                    <input type="text" class="form-control" name="store_name" id="store_name">
                  </div>
               	 </div>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeImage">업체사진</label>
                <input type="file" class="form-control" id="storeImage">
              </div>
              <div class="form-group">
                <label class="text-black" for="storeLicense" >사업자등록번호</label>
                <input type="text" class="form-control" name="store_license" id="store_license">
              </div>
              <div class="form-group">
                <label class="text-black" for="storePhone" >매장 전화번호</label>
                <input type="text" class="form-control" name="store_phone" id="store_phone">
              </div>
              <div class="form-group">
                <label class="text-black" for="storeAddress" >매장 주소</label>
                <input type="text" class="form-control" name="store_address" id="store_address">
              </div>
              
              <!-- 기존 메뉴 탭 -->
<!--               <div class="row"> -->
<!--               	<div class="col-md-4"> -->
<!--                   <div class="form-group"> -->
<!--                     <label class="text-black" for="menu">판매 메뉴</label> -->
<!--                     <input type="text" class="form-control" id="menu"> -->
<!--                   </div> -->
<!--                	 </div> -->
<!--               	<div class="col-md-4"> -->
<!--                   <div class="form-group"> -->
<!--                     <label class="text-black" for="menuPrice">메뉴가격</label> -->
<!--                     <input type="text" class="form-control" id="menuPrice"> -->
<!--                   </div> -->
<!--                	 </div> -->
<!--               	<div class="col-md-4"> -->
<!--                   <div class="form-group"> -->
<!--                     <label class="text-black" for="menuImage">메뉴사진</label> -->
<!--                     <input type="file" class="form-control" id="menuImage"> -->
<!--                   </div> -->
<!--                	 </div> -->
              <!-- 기존 메뉴 탭 끝 -->
              </div>
              <div class="form-group">
                <label class="text-black" for="storeTime" >영업시간</label>
                <input type="text" class="form-control" name="store_time" id="store_time">
              </div>
              <div class="form-group">
                <label class="text-black" for="storeTime">가게 소개글</label>
                <input type="text" class="form-control" name="store_content" id="store_content">
              </div>
              <div class="form-group">
                <label class="text-black" for="storeEtc">기타</label>
                <input type="text" class="form-control" name="store_etc" id="store_etc" placeholder="주차, 결제가능한 페이 종류, 화장실 유무 등 기타 안내사항을 입력해주세요.">
              </div>
              <div class="form-group">
                <label class="text-black" for="storeMenu">메뉴 등록</label>
              <input type="button" class="btn btn-primary btn-block" value="메뉴를 등록해주세요" id="store_menu" onclick="window.open('store_menu.so', 'window_name', 'width=500, height=700, location=no, status=no, scrollbars=yes')">
              </div>
              <button type="submit" class="btn btn-primary">등록하기</button>
<!--               <button type="submit" class="btn btn-primary">돌아가기</button> -->
            </form>
          </div>



        </div>
      </div>

<!--       <div class="row justify-content-center mt-5 section"> -->

<!--       </div> -->

    </div>
<!--   </div> -->

  <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">Lets you Explore the Best. Contact Us Now</h2>
          <p class="mb-4 lead text-white text-white-opacity">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, fugit?</p>
          <p class="mb-0"><a href="booking.html" class="btn btn-outline-white text-white btn-md font-weight-bold">Get in touch</a></p>
        </div>
      </div>
    </div>
  </div>

  <div class="site-footer">
    <div class="inner first">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">About Tour</h3>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
            <div class="widget">
              <ul class="list-unstyled social">
                <li><a href="#"><span class="icon-twitter"></span></a></li>
                <li><a href="#"><span class="icon-instagram"></span></a></li>
                <li><a href="#"><span class="icon-facebook"></span></a></li>
                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                <li><a href="#"><span class="icon-dribbble"></span></a></li>
                <li><a href="#"><span class="icon-pinterest"></span></a></li>
                <li><a href="#"><span class="icon-apple"></span></a></li>
                <li><a href="#"><span class="icon-google"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2 pl-lg-5">
            <div class="widget">
              <h3 class="heading">Pages</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2">
            <div class="widget">
              <h3 class="heading">Resources</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">Contact</h3>
              <ul class="list-unstyled quick-info links">
                <li class="email"><a href="#">mail@example.com</a></li>
                <li class="phone"><a href="#">+1 222 212 3819</a></li>
                <li class="address"><a href="#">43 Raymouth Rd. Baltemoer, London 3910</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>



    <div class="inner dark">
      <div class="container">
        <div class="row text-center">
          <div class="col-md-8 mb-3 mb-md-0 mx-auto">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" class="link-highlight">Untree.co</a> <!-- License information: https://untree.co/license/ -->
            </p>
          </div>
          
        </div>
      </div>
    </div>
  </div>

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


</body>

</html>
