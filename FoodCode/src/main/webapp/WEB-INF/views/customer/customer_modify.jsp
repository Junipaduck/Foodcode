<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/uili.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table2.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/radio.css">

  <title>Tour Free Bootstrap Template for Travel Agency by Untree.co</title>
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
            <h1 class="mb-0">개인 회원 수정</h1>
            <p class="text-white">수정하세요. </p>
          </div>
        </div>
      </div>
    </div>
  </div>
<jsp:include page="customer_left.jsp"></jsp:include>
  
  
  <div class="untree_co-section">
  
      </div>

      <div class="row justify-content-center">

        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">Form</h2>
            <form class="contact-form bg-white">
              <div class="form-group">
                <label class="text-black" for="email">아이디</label>
                <input type="email" class="form-control" id="c_id" aria-describedby="emailHelp" name="c_id">
                <small id="emailHelp" class="form-text text-muted">4 ~ 8 자리 아이디를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="password">비밀번호</label>
                <input type="password" class="form-control" id="c_passwd" name="c_passwd">
                  <small id="emailHelp" class="form-text text-muted">8 ~ 16 자리 비밀번호를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="password">비밀번호확인</label>
                <input type="password" class="form-control" id="c_passwd2" name="c_passwd2">
                <small id="emailHelp" class="form-text text-muted">비밀번호를 다시 적어주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="email">이름</label>
                <input type="email" class="form-control" id="c_name" aria-describedby="emailHelp" name="c_name">
              </div>
              <div class="form-group">
                <label class="text-black" for="email">생년 월일</label>
                <input type="email" class="form-control" id="c_birth" aria-describedby="emailHelp" name="c_birth">
                <small id="emailHelp" class="form-text text-muted">yyyy.mm.dd 식으로 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="email">전화 번호</label>
                <input type="email" class="form-control" id="c_phone" aria-describedby="emailHelp" name="c_phone">
                <small id="emailHelp" class="form-text text-muted">'-'기호 생략하고 적어주세요</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="email">이메일</label>
                <input type="email" class="form-control" id="c_email" aria-describedby="emailHelp" name="c_email">
              </div>
              <div class="form-group">
                <label class="text-black" for="email">성별</label>
                <div class="select">
				 <input type="radio" id="select" name="c_gender" name="c_gender"><label for="select">남</label>
				 <input type="radio" id="select2" name="c_gender" name="c_gender"><label for="select2">여</label>
				</div>
              </div>
<!--               <div class="form-group"> -->
<!--                 <label class="text-black" for="message">내용</label> -->
<!--                 <textarea name="" class="form-control" id="content" cols="30" rows="5"></textarea> -->
<!--               </div> -->
              <button type="submit" class="btn btn-primary" onclick="location.href='main'">정보수정</button>
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
