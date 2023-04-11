<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
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

  <title>점주 회원가입</title>
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

  <nav class="site-nav">
  
  </nav>


  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
<!--             <h1 class="mb-0">점주 회원가입</h1> -->
<!--             <p class="text-white">글씨체 뭐야..여기 뭐 적ㅈㅣ? </p> -->
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
            <h2 class="section-title">JOIN</h2>
            <form class="contact-form bg-white"  action="ownerJoinPro.me">
              <div class="row">
              	<div class="col-md-6">
                  <div class="form-group">
                    <label class="text-black" for="owner_id">아이디</label>
                    <input type="text" class="form-control" id="owner_id" name="owner_id">
                    <small id="emailHelp" class="form-text text-muted">4 ~ 8 자리 아이디를 입력해주세요.</small>
                  </div>
               	 </div>
              </div>
              <div class="form-group">
                <label class="text-black" for="owner_passwd">비밀번호</label>
                <input type="password" class="form-control" id="owner_passwd" name="owner_passwd">
                <small id="emailHelp" class="form-text text-muted">8 ~ 16 자리 비밀번호를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="owner_passwd2">비밀번호 확인</label>
                <input type="password" class="form-control" id="owner_passwd2" name="owner_passwd2">
                <small id="emailHelp" class="form-text text-muted">비밀번호를 다시 적어주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="owner_name">이름</label>
                <input type="text" class="form-control" id="owner_name" name="owner_name">
              </div>
              <div class="form-group">
                <label class="text-black" for="owner_phone">핸드폰 번호</label>
                <input type="text" class="form-control" id="owner_phone" name="owner_phone">
                <small id="emailHelp" class="form-text text-muted">'-'기호 생략하고 적어주세요</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="owner_email">이메일</label>
                <input type="email" class="form-control" id="owner_email" name="owner_email" aria-describedby="ownerEmailHelp">
                <small id="ownerEmailHelp" class="form-text text-muted">회원가입시 입력된 이메일로 인증 메일을 발송합니다</small>
              </div>
<!--               <div class="form-group"> -->
<!--                 <label class="text-black" for="select">Select</label> -->

<!--                 <select name="" id="select" class="custom-select"> -->
<!--                   <option value="">Untree.co</option> -->
<!--                   <option value="">Offers high quality free template</option> -->
<!--                 </select> -->

<!--               </div> -->
<!--               <div class="form-group"> -->
<!--                 <label class="control control--checkbox"> -->
<!--                   <span class="caption">Custom checkbox</span> -->
<!--                   <input type="checkbox" checked="checked" /> -->
<!--                   <div class="control__indicator"></div> -->
<!--                 </label> -->
<!--               </div> -->
			  <br>
              <button type="submit" class="btn btn-primary">가입</button>
              <button type="button" class="btn btn-primary" onclick="location.href='main'">돌아가기</button>
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

<!--       <div class="row justify-content-center mt-5 section"> -->

<!--       </div> -->

    </div>
  </div>

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
