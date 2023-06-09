<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!doctype html>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <title>FOODCODE : 마이페이지</title>
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
  <!-- 왼쪽 사이드바 css  ...근데 이 css있으면 top2.jsp css가 문제생김 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/uili.css">
  
  <!-- owner css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owner.css">

  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>


  <!-- 캘린더 -->
  <script>
        window.onload = function () { buildCalendar(); }

        // 현재 월과 날 초기화, 시간 초기화
        let nowMonth = new Date();
        let today = new Date();
        today.setHours(0, 0, 0, 0);
        let clickedYMD;
        let cnt = 0;
        let bookingDateIdx = 0;
        // 달력 생성
        function buildCalendar() {

            let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);
            let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);

            let tbody_Calendar = document.querySelector(".Calendar > tbody");
            document.getElementById("calYear").innerText = nowMonth.getFullYear();
            document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);

            // 출력 결과 초기화
            while (tbody_Calendar.rows.length > 0) {
                tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
            }

            let nowRow = tbody_Calendar.insertRow();

            for (let j = 0; j < firstDate.getDay(); j++) {
                let nowColumn = nowRow.insertCell();
                cnt += 1;
            }

            // 날짜 생성
            for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {  

                let nowColumn = nowRow.insertCell();
                cnt += 1;
                nowColumn.setAttribute('id', nowDay);		// 선택된 날짜값 가져오기 위해 id에 저장
//                 console.log(nowColumn.getAttribute('id'));

                let newDIV = document.createElement("p");
                newDIV.innerHTML = leftPad(nowDay.getDate());        // 추가한 열에 날짜 입력
                nowColumn.appendChild(newDIV);
//                 console.log(cnt);

                if (nowDay.getDay() == 6) {                 // 토요일인 경우
                    nowRow = tbody_Calendar.insertRow();
                }

                if (nowDay < today) {                       // 지난날인 경우
                    newDIV.className = "pastDay";
                }
                else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
                    newDIV.className = "today";
                    newDIV.onclick = function () { choiceDate(this); }
                }
                else {                                      // 미래인 경우
                    newDIV.className = "futureDay";
                    newDIV.onclick = function () { choiceDate(this); }
                }
                
              
//                 선택한 날짜 값 가져오기
	                nowColumn.onclick = function() {
	                	clickedYear = nowMonth.getFullYear();
	                	clickedMonth = (1 + nowMonth.getMonth());
	                	clickedDate = this.getAttribute('id').toString().substr(8,2);
	                	
	                	clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
	                	clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;
                		console.log(clickedYMD);
//                 		$("#bookingArea").hide();
                		$.ajax({
                			type: "GET",
                			url: "getTodayBooking.me",
                			data:{"clickedDay" : clickedYMD},
                			dataType    : "json",
                			// contentType : "application/json; charset=UTF-8",
                			success: function(result){
								let area = "";
								for(let booking of result) {
								bookingDateIdx = booking.booking_idx;
// 								let url = "location.href='myBookingCancle.me?booking_idx=" + booking.booking_idx + "'";
								area += '<tr>' +
               				         '<th scope="row">' + booking.store_name + '</th>' +
               				         '<td>' + booking.booking_idx + '</td>' +
               				         '<td>' + booking.booking_date + '</td>' +
               				         '<td>' + booking.booking_time + '</td>' +
               				         '<td>' + booking.member_name + '</td>' +
               				         '<td>' + booking.booking_num + '</td>' +
               				         '<td>' + booking.member_phone + '</td>' +
               				         '<td>' + booking.booking_seat + '</td>' +
               				         '<td>' + booking.booking_content + '</td>' +
//                				         '<td class="white-space-nowrap"><input type="button" class="btn btn-primary" style="padding:1rem 1rem" value="취소" onclick="' + url + '"></td>' + 
               				         '<td class="white-space-nowrap"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" onclick="DeleteStoreBooking();"><path fill-rule="evenodd" clip-rule="evenodd" d="M8 11C10.2091 11 12 9.20914 12 7C12 4.79086 10.2091 3 8 3C5.79086 3 4 4.79086 4 7C4 9.20914 5.79086 11 8 11ZM8 9C9.10457 9 10 8.10457 10 7C10 5.89543 9.10457 5 8 5C6.89543 5 6 5.89543 6 7C6 8.10457 6.89543 9 8 9Z" fill="currentColor"/><path d="M11 14C11.5523 14 12 14.4477 12 15V21H14V15C14 13.3431 12.6569 12 11 12H5C3.34315 12 2 13.3431 2 15V21H4V15C4 14.4477 4.44772 14 5 14H11Z" fill="currentColor"/><path d="M22 9H16V11H22V9Z" fill="currentColor" /></svg></td>' + 
               				         '</tr>';
								}
								$("#bookingArea").html(area);
                			}
                		});
	                }
                
//                 console.log(cnt);
				// 토요일은 파란색, 일요일은 빨간색으로 표시
                if (cnt % 7 == 1) {
                	newDIV.innerHTML = "<font color=#F79DC2>" + leftPad(nowDay.getDate()) + "</font>";
                }
                if (cnt % 7 == 0) {
                	newDIV.innerHTML = "<font color=skyblue>" + leftPad(nowDay.getDate()) + "</font>";
                }
            }
            
            cnt = 0;	// 다음 달 위해 cnt값 초기화
//             console.log(clickedYMD);
        }

        // 날짜 선택
        function choiceDate(newDIV) {
            if (document.getElementsByClassName("choiceDay")[0]) { 
                document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay"); 
            }
            newDIV.classList.add("choiceDay");
        }

        // 이전달 버튼 클릭
        function prevCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());
            buildCalendar();
        }
        // 다음달 버튼 클릭
        function nextCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
            buildCalendar();
        }

        // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
        function leftPad(value) {
            if (value < 10) {
                value = "0" + value;
                return value;
            }
            return value;
        }
    
        
        function DeleteStoreBooking() {
    		if(window.confirm("예약을 삭제하시겠습니까?")){
//     		location.href="ownerStoreDelete.me?store_idx=${param.store_idx}";
    		location.href="myBookingCancle.me?booking_idx=" + bookingDateIdx;
    		}
        }
    </script>
    <style>
    @import url('https://fonts.googleapis.com/css?family=Questrial&display=swap');
    .row{
    	margin-right: -138px;
    	margin-left: -66px;
    }
    .a{
    	color:rgba(255, 255, 255, 0.7);
    }
    </style>
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
<!--           <div class="intro-wrap"> -->
<!--             <h1 class="mb-0"></h1> -->
<!--           </div> -->
        </div>
      </div>
    </div>
  </div>
  
  
<%-- 사이드바 --%>
<jsp:include page="owner_left.jsp"></jsp:include>

<div class="untree_co-section">
<div class="col-lg-5">
</div>
	<div class="container">
		<div class="row">
        	<div class="col-lg-12">
				<div class="accordion" id="accordionExample">
					<div class="card">
						<c:forEach items="${storeInfo}" var="storeInfo" varStatus="loop">
				       		<div class="card-header border-bottom" id="headingOne">
				      			<h5 class="mb-0"><button class="btn btn-link p-0 collapsed" type="button" data-toggle="collapse" data-target="#collapse_${storeInfo.store_idx}" aria-expanded="true" aria-controls="collapse_${storeInfo.store_idx}">${storeInfo.store_name }</button></h5>
				       		</div>
							<div class="collapse ${loop.first ? 'show' : ''}" id="collapse_${storeInfo.store_idx}" aria-labelledby="heading_${storeInfo.store_idx}" data-parent="#accordionExample">
								<c:set var="length" value="${fn:length(storeInfo.store_file) }" />
								<c:set var="index" value="${fn:indexOf(storeInfo.store_file, '_') }" />
								<c:set var="fileName" value="${fn:substring(storeInfo.store_file, index + 1, length) }" />
								<img src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" style="width:50%; float:left;">
								
				        		<div class="card-body">
        							<div class="col-lg-5 pl-lg-7 ml-auto" style="margin-right: 60px;">
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
					           				&nbsp;&nbsp;&nbsp;${storeInfo.store_open } ~ ${storeInfo.store_close }
					          			</div>
					          			<div class="icon">
					            			<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
					           				&nbsp;&nbsp;&nbsp;${storeInfo.store_license }
					          			</div>
					          			<div class="icon">
					            			<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
					            			&nbsp;&nbsp;&nbsp;${storeInfo.store_etc }
					          			</div>
					          			<div class="form-group">
<!-- 							              <label class="text-black" for="storeMenu">메뉴 등록</label> -->
							              <input type="button" class="btn btn-primary btn-block" value="메뉴를 등록해주세요" id="store_menu" onclick="window.open('store_menu.so?store_idx=${storeInfo.store_idx}', 'window_name')">
							              </div>
									<br>
									<button type="button" class="btn btn-primary" style="padding: 0.3125rem 1.7rem;" onclick="location.href='storeModify.me?store_idx=${storeInfo.store_idx}'">수정</button>
				          			</ul>
				          			</div>
				       			</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<button type="button" class="btn btn-primary" onclick="location.href='storeRegister.me'">식당 추가</button>
			</div>
		</div>
	</div>
</div>
 
  <div class="justify-content-center row">
	  <!-- 왼쪽 부분 -->
        <div class="col-lg-3.5">
          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">예약달력</h2>
            <div class="custom-accordion" id="accordion_1">
              <div class="accordion-item">
                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion_1">
                  <div class="accordion-body">
                  <!-- 캘린더 시작 -->
                   <table class="Calendar">
			            <thead>
			                <tr>
			                    <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
			                    <td colspan="5">
			                        <span id="calYear"></span>.
			                        <span id="calMonth"></span>
			                    </td>
			                    <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
			                </tr>
			                <tr>
			                    <td><font color ="#F79DC2">일</td>
			                    <td>월</td>
			                    <td>화</td>
			                    <td>수</td>
			                    <td>목</td>
			                    <td>금</td>
			                    <td><font color ="skyblue">토</td>
			                </tr>
			            </thead>
			            <tbody>
			            </tbody>
			        </table>
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
			      <th scope="col">가게</br>이름</th>
			      <th scope="col">예약</br>번호</th>
			      <th scope="col">예약</br>날짜</th>
			      <th scope="col">예약</br>시간</th>
			      <th scope="col">예약자</br>이름</th>
			      <th scope="col">인원</th>
			      <th scope="col">전화번호</th>
			      <th scope="col">좌석</th>
			      <th scope="col">기타</th>
			      <th class="white-space-nowrap" scope="col"></th>
			    </tr>
			  </thead>
			  <tbody id="bookingArea">
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

</body>

</html>
