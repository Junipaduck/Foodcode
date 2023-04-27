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

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/daterangepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store.css"> <!-- 테이블 외부 css 파일 경로 -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu:wght@300&family=Gowun+Dodum&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">  
<style type="text/css">
/* .menubox { */
/* 	width: 80px; */
/* 	height: 80px; */
/* 	object-fit: contain; */
/* } */

.mb-0 { /*폰트수정*/
	font-family: 'Noto Sans KR', sans-serif;
}

.text-white {
	font-family: 'Noto Sans KR', sans-serif;
}

.btn btn-primary btn-block {
	font-family: 'Noto Sans KR', sans-serif;
}
.image_hover {

}
</style>

  <title>아이티윌 2팀</title>
<script type="text/javascript">

</script>  
</head>

<body>
	<!-- inc/top.jsp -->
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


	<!--  메인화면 소개글  -->
<!-- 	<div class="hero hero-inner"> -->
<!-- 	  <div class="container"> -->
<!-- 	    <div class="row align-items-center"> -->
<!-- 	      <div class="col-lg-6 mx-auto text-center"> -->
<!-- 	        <div class="intro-wrap"> -->
<!-- 	          <h1 class="mb-0">아이티윌 2팀</h1> -->
<!-- 	          <p class="text-white">맛있는 식당을 예약해보세요~</p> -->
<!-- 	        </div> -->
<!-- 	      </div> -->
<!-- 	    </div> -->
<!-- 	  </div> -->
<!-- 	</div> -->


  
  <div class="untree_co-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          <div class="owl-single dots-absolute owl-carousel">
<!--             <img src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="img-fluid rounded-20"> -->
          	<c:forEach items="${storeInfo }" var="store2">
	          	<c:set var="length" value="${fn:length(store2.store_file) }"/>
				<c:set var="index" value="${fn:indexOf(store2.store_file, '_') }"/>
				<c:set var="fileName" value="${fn:substring(store2.store_file, index + 1, length) }"/>
	            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." />
          	</c:forEach>
          </div>
       	</div>
        	<!--  가게 정보  -->
	        <div class="col-lg-5 pl-lg-5 ml-auto">
	        	<!-- 가게 정보 select 후 반복문으로 출력. model 객체에 StoreVO 저장 
	        	현재(0412) store_idx = 1 인 경우만 출력되도록 하드코딩 해놓은 상태
	        	 -->

				<c:forEach items="${storeInfo }" var="store">
		          <h2 class="section-title mb-4" style="font-family: 'Noto Sans KR', sans-serif;">
		          	${store.store_name }
		          	<img src="${pageContext.request.contextPath }/resources/images/report.png" width="30px;" onclick="location.href='storeReport.re?store_idx=${store.store_idx}'">
		          </h2>
		          <p style="font-family: 'Noto Sans KR', sans-serif;">${StoreVO.store_content }</p>
		          <ul class="list-unstyled two-col clearfix" style="font-family: 'Noto Sans KR', sans-serif;">
    	      		<div class="icon">
					     <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
          				 &nbsp;&nbsp;&nbsp;${store.store_type }
          			</div>
          			&nbsp;&nbsp;
    	      		<div class="icon">
					     <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
          				 &nbsp;&nbsp;&nbsp;${store.store_phone }
          			</div>
          			&nbsp;&nbsp;
    	      		<div class="icon">
					     <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
          				 &nbsp;&nbsp;&nbsp;${store.store_time }
          			</div>
          			&nbsp;&nbsp;
    	      		<div class="icon">
					     <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
          				 &nbsp;&nbsp;&nbsp;${store.store_etc }
          			</div>
          			&nbsp;&nbsp;
    	      		<div class="icon">
            			 <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map"><polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"></polygon><line x1="8" y1="2" x2="8" y2="18"></line><line x1="16" y1="6" x2="16" y2="22"></line></svg>
          				 &nbsp;&nbsp;&nbsp;${store.store_address }
          			</div>
          			&nbsp;&nbsp;
    	      		<div class="icon">
					     <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ff9507" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
          				 &nbsp;&nbsp;&nbsp;
		            	<c:forEach var="starAvg" items="${starAvg }">
		            		<img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${starAvg.review_star}</span>
		            	</c:forEach>
          			</div>
          			&nbsp;&nbsp;
					<div class="form-group">
	          		<input type="button" class="btn btn-primary btn-block" value="예약하기" onclick="location.href='booking.bo?store_idx=${store.store_idx }'">
					</div>
				</c:forEach>
	        </div>
      </div> <!--row  -->
    </div> <!-- container -->
  </div> <!-- untree_co-section -->
  
  
	<!--  지도 api 추가 -->  
  	<div id="map" style="width:500px;height:400px;margin: auto;"></div>
	
  	<p>
  
  <!-- 메뉴소개 -->	
	        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="mb-5">메뉴</h1>
                </div>
                <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                    	 <c:set var="length" value="${fn:length(menuList[0].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[0].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[0].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>${menuList[0].menu_name }</span>
                                                <span class="text-primary">${menuList[0].menu_price }원</span>
                                            </h5>
                                            <small class="fst-italic">${menuList[0].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                    	 <c:set var="length" value="${fn:length(menuList[1].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[1].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[1].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                 <span>${menuList[1].menu_name }</span>
                                               <span class="text-primary">${menuList[1].menu_price }원</span>
                                            </h5>
                                            <small class="fst-italic">${menuList[1].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <c:set var="length" value="${fn:length(menuList[2].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[2].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[2].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>${menuList[2].menu_name }</span>
                                                <span class="text-primary">${menuList[2].menu_price }원</span>
                                            </h5>
                                             <small class="fst-italic">${menuList[2].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <c:set var="length" value="${fn:length(menuList[3].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[3].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[3].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>${menuList[3].menu_name }</span>
                                                <span class="text-primary">${menuList[3].menu_price }원</span>
                                            </h5>
                                             <small class="fst-italic">${menuList[3].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <c:set var="length" value="${fn:length(menuList[4].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[4].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[4].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>${menuList[4].menu_name }</span>
                                                <span class="text-primary">${menuList[4].menu_price }원</span>
                                            </h5>
                                             <small class="fst-italic">${menuList[4].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <c:set var="length" value="${fn:length(menuList[5].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[5].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[5].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>${menuList[5].menu_name }</span>
                                                <span class="text-primary">${menuList[5].menu_price }원</span>
                                            </h5>
                                             <small class="fst-italic">${menuList[5].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <c:set var="length" value="${fn:length(menuList[6].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[6].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[6].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>${menuList[6].menu_name }</span>
                                                <span class="text-primary">${menuList[6].menu_price }원</span>
                                            </h5>
                                             <small class="fst-italic">${menuList[6].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                       <c:set var="length" value="${fn:length(menuList[7].menu_image) }"/>
										 <c:set var="index" value="${fn:indexOf(menuList[7].menu_image, '_') }"/>
										 <c:set var="fileName" value="${fn:substring(menuList[7].menu_image, index + 1, length) }"/>
							             <img class="flex-shrink-0 img-fluid rounded menubox" src="${pageContext.request.contextPath }/resources/menuFileUpload/${fileName}" alt="..." style="height: 80px;width: 80px;"/>
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>${menuList[7].menu_name }</span>
                                                <span class="text-primary">${menuList[7].menu_price }원</span>
                                            </h5>
                                             <small class="fst-italic">${menuList[7].menu_content }</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
	
		<!--  리뷰 목록 조회  -->
	    <table  class="rwd-table" style="width: 1300px;">
        <tbody>
        <tr>
            <th>글번호</th>
            <th>작성자</th>
            <th>업체명</th>
            <th>리뷰내용</th>
            <th>리뷰사진</th>
            <th>별점</th>
            <th>작성일자</th>
            <th></th>
        </tr>

		<c:forEach items="${storeReviewList }" var="review">
	        <tr class="KOTRA-fontsize-80">
	          <td>${review.review_idx }</td>
	          <td>${review.member_id }</td>
	          <!-- 업체명 출력 -->
	           <td>${storeInfo[0].store_name }</td> 
	           <td>${review.review_content }</td>
		        <td class="image_hover">
  				    <c:set var="length" value="${fn:length(review.review_file) }"/>
					<c:set var="index" value="${fn:indexOf(review.review_file, '_') }"/>
					<c:set var="fileName" value="${fn:substring(review.review_file, index + 1, length) }"/>
					<img alt="..." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 50px;width: 50px;">
	           	</td>
	           <td>
        		   <div class="review_star">
		           		<c:if test="${not empty review.review_star }">
		           			<c:choose>
		           				<c:when test="${review.review_star == 1 }">
				  				<label for="review_star1" title="1점" id="review_star">&#11088;</label>
		           				</c:when>
		           				<c:when test="${review.review_star == 2 }">
				  				<label for="review_star2" title="2점" id="review_star">&#11088;&#11088;</label>
		           				</c:when>
		           				<c:when test="${review.review_star == 3 }">
				  				<label for="review_star3" title="3점" id="review_star">&#11088;&#11088;&#11088;</label>
		           				</c:when>
		           				<c:when test="${review.review_star == 4 }">
				  				<label for="review_star4" title="4점" id="review_star">&#11088;&#11088;&#11088;&#11088;</label>
		           				</c:when>
		           				<c:when test="${review.review_star == 5 }">
				  				<label for="review_star5" title="5점" id="review_star">&#11088;&#11088;&#11088;&#11088;&#11088;</label>
		           				</c:when>
		           				<c:otherwise>
		           				No Rating
		           				</c:otherwise>
		           			</c:choose>
		           		</c:if>
	           		</div>
	           </td>
	           <td>${review.review_date }</td>
	        </tr>
		</c:forEach>
	</tbody>
    </table>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	

	
  <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">더 많은 리뷰를 보고 싶으신가요?</h2>
          <p class="mb-4 lead text-white text-white-opacity">리뷰게시판으로 이동하세요</p>
          <p class="mb-0"><a href="reviewList.me" class="btn btn-outline-white text-white btn-md font-weight-bold">리뷰게시판</a></p>
        </div>
      </div>
    </div>
  </div>


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
  
  <!--  지도 API 코드 -->
  <!--  -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a91ec8056a635e82b3a39377778273a1&libraries=services"></script>
<!--   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a91ec8056a635e82b3a39377778273a1"></script> -->
	<script>
	
	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch("${storeInfo[0].store_address}", function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${storeInfo[0].store_name}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
	    } 
	});    
	</script>

</body>

</html>