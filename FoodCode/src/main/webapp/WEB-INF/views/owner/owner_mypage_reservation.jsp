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


<style type="text/css">
.mb-0 { /*폰트수정*/
	font-family: 'Noto Sans KR', sans-serif;
}

.text-white {
	font-family: 'Noto Sans KR', sans-serif;
}

.btn btn-primary btn-block {
	font-family: 'Noto Sans KR', sans-serif;
}

</style>

  <title>식당예약목록</title>
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
            <h1 class="mb-0">식당예약목록</h1>
            <p class="text-white"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  


	  <div class="row justify-content-center">
        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">예약달력</h2>
            <div class="custom-accordion" id="accordion_1">
              <div class="accordion-item">
                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion_1">
                  <div class="accordion-body">
                    <!-- 캘린더 옵션 { -->
                    	<input type="datetime-local" name="" value="" class="datepicker inp"  />
						<script>
// 					    $.datepicker.setDefaults({
// 					      closeText: "닫기",
// 					      prevText: "이전달",
// 					      nextText: "다음달",
// 					      currentText: "오늘",
// 					      monthNames: ["1월", "2월", "3월", "4월", "5월", "6월",
// 					        "7월", "8월", "9월", "10월", "11월", "12월"
// 					      ],
// 					      monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월",
// 					        "7월", "8월", "9월", "10월", "11월", "12월"
// 					      ],
// 					      dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
// 					      dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
// 					      dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
// 					      weekHeader: "주",
// 					      dateFormat: "yy.m.d", // 날짜형태 예)yy년 m월 d일
// 					      firstDay: 0,
// 					      isRTL: false,
// 					      showMonthAfterYear: true,
// 					      yearSuffix: "년"
// 					    })
// 					    $(".datepicker").datepicker({
// 					      minDate: 2
// 					    })
					    
						</script>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">예약목록</h2>
            
            <table class="table">
			  <thead class="undefined">
			    <tr>
			      <th scope="col">예약번호</th>
			      <th scope="col">예약날짜</th>
			      <th scope="col">예약시간</th>
			      <th scope="col">예약자이름</th>
			      <th scope="col">인원</th>
			      <th scope="col">전화번호</th>
			      <th class="white-space-nowrap" scope="col">기타</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>2023-04-07</td>
			      <td>12:00</td>
			      <td>최보아</td>
			      <td>2</td>
			      <td>051-803-0909</td>
			      <td class="white-space-nowrap">창가자리주세요</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>2023-04-10</td>
			      <td>15:00</td>
			      <td>배하나</td>
			      <td>2</td>
			      <td>051-803-0909</td>
			      <td class="white-space-nowrap">맛있게 해주세요</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>2023-04-18</td>
			      <td>10:00</td>
			      <td>강지훈</td>
			      <td>5</td>
			      <td>051-803-0909</td>
			      <td class="white-space-nowrap">-</td>
			    </tr>
			    <tr>
			      <th scope="row">4</th>
			      <td>2023-04-28</td>
			      <td>17:00</td>
			      <td>양선정</td>
			      <td>4</td>
			      <td>051-803-0909</td>
			      <td class="white-space-nowrap">-</td>
			    </tr>
			    <tr>
			      <th scope="row">5</th>
			      <td>2023-05-01</td>
			      <td>13:00</td>
			      <td>위찬영</td>
			      <td>2</td>
			      <td>051-803-0909</td>
			      <td class="white-space-nowrap">-</td>
			    </tr>
			    <tr>
			      <th scope="row">6</th>
			      <td>2023-05-10</td>
			      <td>17:00</td>
			      <td>박윤</td>
			      <td>2</td>
			      <td>051-803-0909</td>
			      <td class="white-space-nowrap">-</td>
			    </tr>
			  </tbody>
			</table>
            
            
            
          </div>
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