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
  <link rel="shortcut icon" href="../favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap" rel="stylesheet">
  
  <!-- 데이트피커 cdn -->
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
  <link type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/datepicker.css">

  <!-- 타임피커 cdn -->
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/timepicker.css">
  

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/daterangepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store.css"> 
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bookingstyle.css">
  <!-- 테이블 외부 css 파일 경로 -->
  
  <!-- 메뉴 css -->
    <!-- Favicon -->
<!--     <link href="img/favicon.ico" rel="icon"> -->

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath }/resources/css/animate.min.css" rel="stylesheet">
<!--     <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"> -->
    <link href="${pageContext.request.contextPath }/resources/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
<!--     <link href="css/bootstrap.min.css" rel="stylesheet"> -->

    <!-- Template Stylesheet -->
<!--     <link href="css/style.css" rel="stylesheet"> -->
  <!-- 메뉴 css 끝 -->
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">  
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

  <title>${map.storeInfo[0].store_name }</title>
  
</head>

<script type="text/javascript">
	        let bookingSeatCheck = false;
	        function check() {
	        if(booking_date && booking_time && booking_num){
	        		let store_idx;
					let booking_date;
					let booking_time;
					let booking_num;
					store_idx = $("#store_idx").val();
					booking_date = $("#booking_date").val();
					booking_time = $("#booking_time").val();
					booking_num = $("#booking_num").val();
					$.ajax({
		    			type : 'get',
		    			url : "bookingSeatCheck.bo?store_idx=" + store_idx + "&booking_date=" + booking_date + "&booking_time=" + booking_time + "&booking_num=" + booking_num, // GET방식
		    			success : function (Check) {
		    				if(Check){
		    					$("#bookingCheck").html("예약이 됩니다.").css("color","green");
		    					bookingSeatCheck = true;
		    				} else {
		    					$("#bookingCheck").html("예약이 안됩니다.").css("color","red");
		    				}
		    			},
		    		});
						
	        };
		}
        $(function() {
        	let booking_date = false;
        	let booking_time = false;
	       	let booking_num = false;
	        $("#booking_date").on("change", function() {
	        	if(!$("#booking_date").val() == ""){
	        		booking_date = true;
	        		check();
	        	}
			});
	        $("#booking_time").on("change", function() {
	        	if(!$("#booking_time").val() == ""){
	        		booking_time = true;
	        		check();

	        	}
			});
	        $("#booking_num").on("change", function() {
	     		
		        	if(!$("#booking_num").val() == ""){
		        		booking_num = true;
		        		check();

		        	}
			});
	        
	        
	        $("form").on("submit", function() {
		        if(!bookingSeatCheck){
		        	alert("예약 인원을 확인 해주세요");
		        	return false;
		        }
			});
	        
	        
	        
      });
        
	

</script>


<body>
	<!-- inc/top.jsp -->
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


	<!--  메인화면 소개글  -->
	<div class="hero hero-inner">
	  <div class="container">
	    <div class="row align-items-center">
	      <div class="col-lg-6 mx-auto text-center">
	        <div class="intro-wrap">
	        </div>
	      </div>
	    </div>
	  </div>
	</div>

  <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-primary fw-normal"></h5>
<%--                     <h1 class="mb-5">${map.storeInfo.store_name }</h1> --%>
                    <h1 class="mb-5">${map.storeInfo[0].store_name } </h1>
                </div>
  
  <div class="untree_co-section" style="padding-top: 10px; ">
    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          <div class="owl-single dots-absolute owl-carousel">
          	<c:forEach items="${map.storeInfo[0].store_file }" var="store">
	          	<c:set var="length" value="${fn:length(store) }"/>
				<c:set var="index" value="${fn:indexOf(store, '_') }"/>
				<c:set var="fileName" value="${fn:substring(store, index + 1, length) }"/>
	            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." class="img-fluid rounded-20" style="margin: 30px; margin-left: -1px; height: 442px; "/>
          	</c:forEach>
<!--             <img src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="img-fluid rounded-20"> -->
          </div>
       	</div>
        	<!--  가게 정보  -->
	        <div class="col-lg-5 pl-lg-5 ml-auto">
<!--           <div class="heading-section ftco-animate mb-5"> -->
<!-- 	          	<span class="subheading"> 가게명 받아오는구간 </span> -->
<!-- 	            <h2 class="mb-4">예약 테이블</h2> -->
<!-- 	          </div> -->
            <form action="bookingCheck.bo" method="get">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">이름</label>
                    <input type="hidden" name="store_idx" id="store_idx" value="${param.store_idx }">
<!--                     <input type="hidden" name="booking_idx" id="booking_idx" value="1"> -->
                    <input type="text" class="form-control" placeholder="${map.member.member_name }" readonly="true" style="text-align: center;">
                    
                  </div>
                </div>
<!--                 <div class="col-md-6"> -->
<!--                   <div class="form-group"> -->
<!--                     <label for="">Email</label> -->
<!--                     <input type="text" class="form-control" placeholder="Your Email"> -->
<!--                   </div> -->
<!--                 </div> -->
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">전화번호</label>
                    <input type="text" class="form-control" placeholder="${map.member.member_phone }" readonly="true" style="text-align: center;">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">날짜</label>
        				<input type="text" name="booking_date" id="booking_date" class="datepicker inp" placeholder="날짜를 선택 해주세요" readonly="true" style="text-align: center;" /> 
						<!-- 캘린더 옵션 { -->
						<script>
					    $.datepicker.setDefaults({
					      closeText: "닫기",
					      prevText: "이전달",
					      nextText: "다음달",
					      currentText: "오늘",
					      monthNames: ["1월", "2월", "3월", "4월", "5월", "6월",
					        "7월", "8월", "9월", "10월", "11월", "12월"
					      ],
					      monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월",
					        "7월", "8월", "9월", "10월", "11월", "12월"
					      ],
					      dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
					      dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
					      dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
					      weekHeader: "주",
					      dateFormat: "yy-mm-dd", // 날짜형태 예)yy년 m월 d일
					      firstDay: 0,
					      isRTL: false,
					      showMonthAfterYear: true,
					      yearSuffix: "년"
					    })
					    $(".datepicker").datepicker({
					      minDate: 2
					    })
					    
						</script>
						<!-- } -->
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">시간</label>
                    <input type="text" name="booking_time" id="booking_time" class="timepicker inp" readonly="true"/> 
					 <!-- 시간 옵션 { -->
					  <script>
					  $('.timepicker').timepicker({
					    timeFormat: 'HH:mm',
					    interval: 60,
					    minTime: "${map.storeInfo[0].store_open }",
					    maxTime: "${map.storeInfo[0].store_close }",
					    dynamic: false,
					    dropdown: true,
					    scrollbar: true
					   });
					  </script>
					  <!-- } -->
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">인원</label>
                    <div class="select-wrap one-third">
                      <div class="icon"><span class="ion-ios-arrow-down">
                      </span></div>
                      <select name="booking_num" id="booking_num" class="form-control" style="text-align: center;">
						<option value="">인원수 선택</option>
    					 <c:forEach var="list" begin="1" end="${map.storeInfo[0].store_maxps }">
    					 	<option value="${list}">${list}</option>
   						 </c:forEach>
                      </select>
                      </div>
                      <small id="bookingCheck"></small>
                    </div>
                  </div>
                  
                  
                  
                  <div class="form-group">
                <label class="text-black2" for="seat">선호자리</label>
                <div class="select">
				 <input type="radio" id="select1" name="booking_seat" value="상관없음" checked="checked" class="bookingradio"><label for="select1">상관없음</label>
				 <input type="radio" id="select2" name="booking_seat" value="야외"><label for="select2" class="bookingradio">야외</label>
				 <input type="radio" id="select3" name="booking_seat" value="실내"><label for="select3" class="bookingradio">실내</label>
				 <input type="radio" id="select4" name="booking_seat" value="창가"><label for="select4" class="bookingradio">창가</label>
				</div>
				<div class="form-group">
                <label class="text-black2" for="etc">요청사항</label>
                <textarea name="booking_content" class="form-control" id="booking_content" cols="30" rows="5" style="margin-left: 15px; width: 93%; height: 109px;"></textarea>
              </div>
              </div>
             </div>
                <div class="col-md-12 mt-3">
                  <div class="form-group">
                    <input type="submit" value="예약하기" class="btn btn-primary py-3 px-5" style="margin-left: 100px;">
                  </div>
                </div>
            </form>
      </div> <!--row  -->
    </div> <!-- container -->
  </div> <!-- untree_co-section -->
 </div>
 </div>



	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>


<%--   <script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script> --%>
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
  
   <!-- JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/easing.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/counterup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/moment-timezone.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
  
</body>

</html>