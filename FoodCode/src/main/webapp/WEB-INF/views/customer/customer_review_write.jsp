<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/uili.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table2.css">
  <!-- 별점 기능 css -->
  <link href="${pageContext.request.contextPath }/resources/css/star.css" rel="stylesheet"/>

  <title>리뷰작성페이지</title>

</head>

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



  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <h1 class="mb-0">리뷰 작성</h1>
            <p class="text-white">양식을 작성해주세요. </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
		<jsp:include page="customer_left.jsp"></jsp:include>
      <div class="row justify-content-center">

        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">Form</h2>
            <form class="contact-form bg-white">
              <div class="form-group">
                <label class="text-black" for="email">아이디</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
              </div>
              <div class="form-group">
                <label class="text-black" for="email">업체명</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
              </div>
              <div class="form-group">
                <label class="text-black" for="message">내용</label>
                <textarea name="" class="form-control" id="message" cols="30" rows="5"></textarea>
              </div>
              <!-- 별점 선택 코드  -->
              <div class="form-group">
                <label class="text-black" for="email">별점</label>
				<div class="rating">
				  <input type="radio" id="star5" name="rating" value="5" />
				  <label for="star5" title="5점">☆</label>
				  <input type="radio" id="star4" name="rating" value="4" />
				  <label for="star4" title="4점">☆</label>
				  <input type="radio" id="star3" name="rating" value="3" />
				  <label for="star3" title="3점">☆</label>
				  <input type="radio" id="star2" name="rating" value="2" />
				  <label for="star2" title="2점">☆</label>
				  <input type="radio" id="star1" name="rating" value="1" />
				  <label for="star1" title="1점">☆</label>
				</div>
<!--                 <input type="email" class="form-control" id="email" aria-describedby="emailHelp"> -->
                <small id="emailHelp" class="form-text text-muted">1 ~ 5점 사이 별점을 선택하세요</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="email">리뷰 사진 등록</label>
                <input type="file" name="review_image_file" id="review_image_file" >
              </div>
              <button type="submit" class="btn btn-primary">작성</button>
            </form>
          </div>

          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">Social Icons</h2>
            <ul class="list-unstyled social-icons light">
              <li><a href="#"><span class="icon-facebook"></span></a></li>
              <li><a href="#"><span class="icon-twitter"></span></a></li>
              <li><a href="#"><span class="icon-linkedin"></span></a></li>
              <li><a href="#"><span class="icon-google"></span></a></li>
              <li><a href="#"><span class="icon-play"></span></a></li>
            </ul>
          </div> <!-- END .custom-block -->

        </div>
      </div>


    </div>
  </div>

  <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">Lets you Explore the Best. Contact Us Now</h2>
          <p class="mb-4 lead text-white text-white-opacity">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, fugit?</p>
          <p class="mb-0"><a href="booking.po" class="btn btn-outline-white text-white btn-md font-weight-bold">Get in touch</a></p>
        </div>
      </div>
    </div>
  </div>

	
	<!-- footer -->
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