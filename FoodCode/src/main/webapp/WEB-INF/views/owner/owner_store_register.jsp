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
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<!-- 타임피커 cdn -->
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/timepicker.css">
  
  <title>FOODCODE : 점주 가게 등록</title>
</head>

<body>
	<header>
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>
<!-- 파일 업로드 기능을 사용하려면 form 태그의 enctype 속성을 사용 (POST방식 필수) -->
 <form class="contact-form bg-white" action="storeRegisterPro.so" name="storeRegisterPro" method="POST" enctype="multipart/form-data">
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
<!--           <div class="intro-wrap"> -->
<!--             <h1 class="mb-0">식당 등록</h1> -->
<!--           </div> -->
        </div>
      </div>
    </div>
  </div>

  
  

  
  
  
  <div class="untree_co-section">
    <div class="container my-5">

      <div class="row justify-content-center">
	
        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100" style="width: 540px; margin-left: -80px;">
            <h3 class="section-title">STORE</h3>
              <div class="row">
              	<div class="col-md-6">
               	 </div>
              </div>
              <div class="row">
              	<div class="col-md-6">
               	 </div>
              </div>
               <div class="form-group">
                 <label class="text-black" for="storeType" >업종</label>
<!--                  <input type="text" class="form-control" id="store_type" name="store_type" required="required"> -->
						<br>
		                <div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="store_type" id="inlineRadio1" value="한식">
						  <label class="form-check-label" for="inlineRadio1" style="font-size: 17px;">한식</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="store_type" id="inlineRadio2" value="일식">
						  <label class="form-check-label" for="inlineRadio2" style="font-size: 17px;">일식</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="store_type" id="inlineRadio3" value="중식">
						  <label class="form-check-label" for="inlineRadio2" style="font-size: 17px;">중식</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="store_type" id="inlineRadio4" value="양식">
						  <label class="form-check-label" for="inlineRadio2" style="font-size: 17px;">양식</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="store_type" id="inlineRadio5" value="요리주점">
						  <label class="form-check-label" for="inlineRadio2" style="font-size: 17px;">요리주점</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="store_type" id="inlineRadio6" value="카페/디저트">
						  <label class="form-check-label" for="inlineRadio2" style="font-size: 17px;">카페/디저트</label>
						</div>
                 <small id="small1" class="form-text text-muted">ex) 한식, 일식, 중식, 양식, 요리주점, 카페/디저트 중 택1 </small>
               </div>
               <div class="form-group">
                 <label class="text-black" for="storeName" >업체명</label>
                 <input type="text" class="form-control" name="store_name" id="store_name" required="required">
                 <small id="small2" class="form-text text-muted">실제 영업중인 가게상호명을 정확히 입력해주세요.</small>
               </div>
               <div class="form-group">
                <label class="text-black" for="file" >업체사진</label>
                <input type="file" class="form-control" id="file" name="file" required="required">
                <small id="small3" class="form-text text-muted">메인화면에 보여지는 사진입니다.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeLicense" >사업자등록번호</label>
                <input type="text" class="form-control" name="store_license" id="store_license" required="required">
                <small id="small4" class="form-text text-muted">'-'기호를 생략하고 입력해주세요. ex) 1112233333</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storePhone" >매장 전화번호</label>
                <input type="text" class="form-control" name="store_phone" id="store_phone">
                <small id="small5" class="form-text text-muted">'-'기호를 생략하고 입력해주세요. ex) 0513337777</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeAddress">매장 주소</label>
                <input type="text" class="form-control" name="store_address1" id="store_address1" required="required" placeholder="주소검색">
                <input type="text" class="form-control" name="store_address2" id="store_address2" placeholder="상세주소입력">
              	<small id="small6" class="form-text text-muted">영업중인 사업장의 실제 주소를 정확히 입력해주세요.</small>
		               <!-- 주소 API 스크립트 -->
		                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script>
						window.onload = function(){
						    document.getElementById("store_address1").addEventListener("click", function(){ //주소입력칸을 클릭하면
						        //카카오 지도 발생
						        new daum.Postcode({
						            oncomplete: function(data) { //선택시 입력값 세팅
						                document.getElementById("store_address1").value = data.address; // 주소 넣기
						                document.querySelector("input[name=store_address2]").focus(); //상세입력 포커싱
						            }
						        }).open();
						    });
						}
						</script>
				
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
              
              <div class="form-group">
                <label class="text-black" for="storeTime" >영업시간</label>
              </div>

              <div class="form-group">
                 <input type="text" name="store_open" id="store_open" class="timepicker inp" readonly="true"/> 
                 ~ 
                 <input type="text" name="store_close" id="store_close" class="timepicker inp" readonly="true"/> 
                 <small id="small8" class="form-text text-muted">예약이 가능한 영업시간을 선택해주세요. </small>
              </div>
<!--                     <input type="text" name="booking_time" id="booking_time"/>  -->
					 <!-- 시간 옵션 { -->
					  <script>
					  $('.timepicker').timepicker({
					    timeFormat: 'HH:mm',
					    interval: 120,
// 					    minTime: '10',
// 					    maxTime: '24',
					    defaultTime: '00',
					    startTime: '00:00',
					    dynamic: false,
					    dropdown: true,
					    scrollbar: true
					   });
					  </script>
					  <!-- } -->
					  
<!-- 			<div class="col-md-6"> -->
                  <div class="form-group">
                    <label for="">인원</label>
                    <div class="select-wrap one-third">
                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                      <select name="store_maxps" id="store_maxps" class="form-control">
                        <option>인원수 선택</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4+</option>
                        <option value="0">그 외</option>
                      </select>
                      </div>
                    </div>
<!--                   </div>		   -->
					  
              <div class="form-group">
                <label class="text-black" for="storeTime">가게 소개글</label>
                <input type="text" class="form-control22" name="store_content" id="store_content" style="border: 2px solid #e9ecef; font-size: 16px; width:540px; height: 150px;">
                <small id="small8" class="form-text text-muted">메인화면에 보여질 가게 소개글을 자유롭게 입력해주세요 :) </small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeEtc">기타</label>
                <input type="text" class="form-control" name="store_etc" id="store_etc">
              	<small id="small9" class="form-text text-muted">주차가능 여부, 결제가능한 페이 종류, 화장실 유무 등 기타 안내사항을 자유롭게 입력해주세요 :) </small>
              </div>
              <button type="submit" class="btn btn-primary">등록하기</button>
<!--               <button type="submit" class="btn btn-primary">돌아가기</button> -->
              </div>
          </div>
         



        </div>
      </div>

<!--       <div class="row justify-content-center mt-5 section"> -->

<!--       </div> -->

    </div>
<!--   </div> -->

<!--   <div class="py-5 cta-section"> -->
<!--     <div class="container"> -->
<!--       <div class="row text-center"> -->
<!--         <div class="col-md-12"> -->
<!--           <h2 class="mb-2 text-white">Lets you Explore the Best. Contact Us Now</h2> -->
<!--           <p class="mb-4 lead text-white text-white-opacity">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, fugit?</p> -->
<!--           <p class="mb-0"><a href="booking.html" class="btn btn-outline-white text-white btn-md font-weight-bold">Get in touch</a></p> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->

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

  <script src="${pageContext.request.contextPath }/resources/js/typed.js"></script>
  
  <script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>

</form>
</body>

</html>