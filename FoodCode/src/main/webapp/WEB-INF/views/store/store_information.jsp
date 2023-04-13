<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
// 	$(function () {
// 		$("#btnReview").on("click", function() {
// 			let sendData = $("#reviewTable").serialize();
			
// 			$.ajax({
// 				type = "post",
// 				url: "reviewList.me",
// 				data: sendData,
// 				dataType: "html",
// 				success: function(response){
// 					$("#reviewArea").html(response);
// 				},
// 				error: function(xhr, testStatus, errorThrown){
// 					$("#reviewArea").html("xhr = " + xhr + "<br>testStatus = " + textStatus + "<br>errorThrown = " + errorThrown);
// 				}
// 			});
// 		});
// 	});

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
            <img src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" class="img-fluid rounded-20">
          </div>
       	</div>
        	<!--  가게 정보  -->
	        <div class="col-lg-5 pl-lg-5 ml-auto">
	        	<!-- 가게 정보 select 후 반복문으로 출력. model 객체에 StoreVO 저장 
	        	현재(0412) store_idx = 1 인 경우만 출력되도록 하드코딩 해놓은 상태
	        	 -->

				<c:forEach items="${storeList }" var="StoreVO">
		          <h2 class="section-title mb-4" style="font-family: 'Noto Sans KR', sans-serif;">${StoreVO.store_name }</h2>
		          <p style="font-family: 'Noto Sans KR', sans-serif;">${StoreVO.store_content }</p>
		          <ul class="list-unstyled two-col clearfix" style="font-family: 'Noto Sans KR', sans-serif;">
		            <li>${StoreVO.store_type }</li>
		            <li>${StoreVO.store_phone }</li>
		            <li>${StoreVO.store_time }</li>
		            <li>${StoreVO.store_etc }</li>
		            <li>${StoreVO.store_address }</li>
		            <!--  review 테이블의 1개의 컬럼만 조회하면 되므로 반목문 사용 x  -->
		            <li>${reviewList[0].review_star }</li>
		          </ul>
				</c:forEach>
	          <input type="button" class="btn btn-primary btn-block" value="예약하기" onclick="location.href='${pageContext.request.contextPath }/booking.bo'">
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
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-1.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>치킨버거</span>
                                                <span class="text-primary">5000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-2.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>불고기버거</span>
                                                <span class="text-primary">4000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-3.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>치즈스틱</span>
                                                <span class="text-primary">2000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-4.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>감자튀김</span>
                                                <span class="text-primary">2000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-5.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>아이스크림</span>
                                                <span class="text-primary">1000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-6.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>콜라</span>
                                                <span class="text-primary">2000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-7.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>커피</span>
                                                <span class="text-primary">3000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-8.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>치킨너겟</span>
                                                <span class="text-primary">3000원</span>
                                            </h5>
                                            <small class="fst-italic">맛있어요</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-1.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-2.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-3.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-4.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-5.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-6.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-7.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-8.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-1.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-2.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-3.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-4.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-5.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-6.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-7.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/menu-8.jpg" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Chicken Burger</span>
                                                <span class="text-primary">$115</span>
                                            </h5>
                                            <small class="fst-italic">Ipsum ipsum clita erat amet dolor justo diam</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 </div>
  
	<div>
	<!--  [리뷰목록] 클릭 시 리뷰 게시판으로 이동  -->
	<input type="button" value="리뷰목록" onclick="location.href='reviewList.me'">
	
	<!-- 리뷰 게시판 영역 -->
	<div id="reviewArea"></div>

	
    <table  class="rwd-table" id="reviewTable">
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

        <tr class="KOTRA-fontsize-80">
          <td>1</td>
          <td>양선정</td>
           <td>아이티윌 햄버거</td>
           <td>와 너무 맛있어요!</td>
	        <td class="image_hover">
	           	<img alt="이미지가안뜨네요" src="https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908__480.jpg" style="widows: 50px;height: 50px;">
           	</td>
           <td>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           </td>
           <td>2023/03/20</td>
           <td><input type="button" value="점주답글달기"></td>
           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
        </tr>
        <tr class="KOTRA-fontsize-80">
          <td>2</td>
          <td>최보아</td>
          <td>아이티윌 햄버거</td>
          
           <td>와 너무 맛있어요!</td>
           <td>
           		<img alt="이미지가안뜨네요" src="https://cdn.pixabay.com/photo/2018/05/01/18/21/eclair-3366430__480.jpg" style="widows: 50px;height: 50px;">
           </td>
           <td>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           	<span style="font-size:2em">&#11088;</span>
           </td>
           <td>2023/03/20</td>
           <td><input type="button" value="점주답글달기"></td>
           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
        </tr>
        <tr class="KOTRA-fontsize-80">
          <td>3</td>
          <td>강지훈</td>
          <td>아이티윌 햄버거</td>
            <td>와 너무 맛있어요!</td>
			<td>
				<img alt="이미지가안뜨네요" src="https://cdn.pixabay.com/photo/2018/05/01/18/21/eclair-3366430__480.jpg" style="widows: 50px;height: 50px;">
			</td>
            <td>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            </td>
            <td>2023/03/20</td>
           <td><input type="button" value="점주답글달기"></td>
           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
        </tr>
        <tr class="KOTRA-fontsize-80">
          <td>4</td>
          <td>위찬영</td>
          <td>아이티윌 햄버거</td>
            <td>와 너무 맛있어요!</td>
          <td>
          	<img alt="이미지가안뜨네요" src="https://cdn.pixabay.com/photo/2018/05/01/18/21/eclair-3366430__480.jpg" style="widows: 50px;height: 50px;">
          </td>
          <td>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            </td>
            <td>2023/03/20</td>
           <td><input type="button" value="점주답글달기"></td>
           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
        </tr>
        <tr class="KOTRA-fontsize-80">
          <td>5</td>
          <td>배하나</td>
          <td>아이티윌 햄버거</td>
            <td>와 너무 맛있어요!</td>
          <td>
          	<img alt="이미지가안뜨네요" src="https://cdn.pixabay.com/photo/2018/05/01/18/21/eclair-3366430__480.jpg" style="widows: 50px;height: 50px;">
          </td>
          <td>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            </td>
            <td>2023/03/20</td>
           <td><input type="button" value="점주답글달기"></td>
           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
        </tr>
        <tr class="KOTRA-fontsize-80">
          <td>6</td>
          <td>박윤</td>
          <td>아이티윌 햄버거</td>
            <td>와 너무 맛있어요!</td>
          <td>
          	<img alt="이미지가안뜨네요" src="https://cdn.pixabay.com/photo/2018/05/01/18/21/eclair-3366430__480.jpg" style="widows: 50px;height: 50px;">
          </td>
          <td>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            	<span style="font-size:2em">&#11088;</span>
            </td>
            <td>2023/03/20</td>
           <td><input type="button" value="점주답글달기"></td>
           <!-- 이 점주답글달기 버튼은 점주 아이디로 로그인 했을 경우에만 보이도록. 관리자페이지 세션아이디 접근 처럼  -->
        </tr>
        </tbody>
    </table>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
  <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">와 맛있겠다</h2>
          <p class="mb-4 lead text-white text-white-opacity">지금 당장 예약하세요</p>
          <p class="mb-0"><a href="booking.html" class="btn btn-outline-white text-white btn-md font-weight-bold">예약하기</a></p>
        </div>
      </div>
    </div>
  </div>


	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>



<!--     <div class="inner dark"> -->
<!--       <div class="container"> -->
<!--         <div class="row text-center"> -->
<!--           <div class="col-md-8 mb-3 mb-md-0 mx-auto"> -->
<!--             <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" class="link-highlight">Untree.co</a> License information: https://untree.co/license/ -->
<!--             </p> -->
<!--           </div> -->
          
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
  
<!--   <div id="overlayer"></div> -->
<!--   <div class="loader"> -->
<!--     <div class="spinner-border" role="status"> -->
<!--       <span class="sr-only">Loading...</span> -->
<!--     </div> -->
<!--   </div> -->


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
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a91ec8056a635e82b3a39377778273a1"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(35.15842107120856, 129.06190268934887), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(35.15842107120856, 129.06190268934887); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
	// marker.setMap(null);    
	</script>

</body>

</html>
