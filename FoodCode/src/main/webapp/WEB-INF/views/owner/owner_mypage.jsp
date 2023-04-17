<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/uili.css">
<%--   <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owner.css"> --%>
  <!-- 캘린더 css -->
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
	.icon {
		margin-bottom: 10px;
		float: left;
		width: 48%;
		display: inline-block;
		vertical-align: text-top;
	}
	</style>

  <title>점주가게목록</title>
</head>
<body>
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
  

  <nav class="site-nav">
  
  </nav>


  <div class="hero hero-inner">
<!--     <div class="container"> -->
<!--       <div class="row align-items-center"> -->
<!--         <div class="col-lg-6 mx-auto text-center"> -->
<!--           <div class="intro-wrap"> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--   	</div> -->
  </div>
  
<jsp:include page="owner_left.jsp"></jsp:include>

<div class="untree_co-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          <div class="owl-single dots-absolute owl-carousel">
            <img src="${pageContext.request.contextPath }/resources/images/slider-1.jpg" alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
            <img src="${pageContext.request.contextPath }/resources/images/slider-2.jpg" alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
            <img src="${pageContext.request.contextPath }/resources/images/slider-3.jpg" alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
            <img src="${pageContext.request.contextPath }/resources/images/slider-4.jpg" alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
            <img src="${pageContext.request.contextPath }/resources/images/slider-5.jpg" alt="Free HTML Template by Untree.co" class="img-fluid rounded-20">
          </div>
        </div>
        <div class="col-lg-5 pl-lg-5 ml-auto">
        <c:forEach items="${storeInfo }" var="storeInfo">
          <h2 class="section-title mb-4" >${storeInfo.store_name }</h2>
	          <p>${storeInfo.store_content }</p>
		          <ul class="list-unstyled two-col clearfix">
			          <div class="icon">
			            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map"><polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"></polygon><line x1="8" y1="2" x2="8" y2="18"></line><line x1="16" y1="6" x2="16" y2="22"></line></svg>
			            &nbsp;&nbsp;&nbsp;${storeInfo.store_address }
			          </div>
			          <div class="icon">
			            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
			            &nbsp;&nbsp;&nbsp;${storeInfo.store_phone }
			          </div>
			          <div class="icon">
			            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
			            &nbsp;&nbsp;&nbsp;${storeInfo.store_time }
			          </div>
			          <div class="icon">
			            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
			            &nbsp;&nbsp;&nbsp;${storeInfo.store_license }
			          </div>
			          <div class="icon">
			            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
			            &nbsp;&nbsp;&nbsp;${storeInfo.store_etc }
			          </div>
		          </ul>
          </c:forEach>
          <hr>
          <button type="button" class="btn btn-primary" onclick="location.href='storeModify.me'">수정</button>
          <button type="button" class="btn btn-primary" onclick="location.href='storeRegister.me'">식당 추가</button>
        </div>
      </div>
    </div>
  </div>
  


  
 
  <div class="row justify-content-center">
	  <!-- 왼쪽 부분 -->
        <div class="col-lg-3.5">
          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">예약달력</h2>
            <div class="custom-accordion" id="accordion_1">
              <div class="accordion-item">
                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion_1">
                  <div class="accordion-body">
                  <!-- 캘린더 시작 -->
                   <jsp:include page="owner_reservation_cal.jsp"></jsp:include>
                  <!-- 캘린더 끝 -->
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
        <!-- 왼쪽 부분 끝 -->
        <div class="col-lg-6">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
          <!-- 오른쪽 예약 리스트 출력 -->
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
			      <th scope="col">좌석</th>
			      <th class="white-space-nowrap" scope="col">기타</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${storeBooking }" var="storeBooking">
			    <tr>
			      <th scope="row">${storeBooking.booking_idx }</th>
			      <td>${storeBooking.booking_date }</td>
			      <td>${storeBooking.booking_time }</td>
			      <td>최보아</td>
			      <td>${storeBooking.booking_num }</td>
			      <td>051-803-0909</td>
			      <td>${storeBooking.booking_seat }</td>
			      <td class="white-space-nowrap">${storeBooking.booking_content }</td>
			    </tr>
			    </c:forEach>
			  </tbody>
			</table>
            
            
            
          </div>
        </div>
      </div>
  
          
          
  <div class="untree_co-section">
    <div class="container my-5">


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

	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>

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
  <!-------------------------- 캘린더 js ----------------------------------->
  
  <!-- ------------------------------------------------------------------ -->
  <script src="${pageContext.request.contextPath }/resources/js/typed.js"></script>
  
  <script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>

</body>

</html>
