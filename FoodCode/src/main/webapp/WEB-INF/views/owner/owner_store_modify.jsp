<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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

  <title>식당 정보수정</title>
  
<script type="text/javascript">
	function deleteFile() {
		$.ajax({
			type: "POST",
			url: "StoreDeleteFile.bo",
			data: {
				"store_idx" : ${store.store_idx},
				"store_file" : "${store.store_file}",
				"store_file_path" : "${store.store_file_path}"
			},
			success: function(result) {
				if(result == "true") {
					$("#fileBtnArea").html("<input type='file' name='file'/>");
				} else {
					alert("일시적인 오류로 파일 삭제에 실패했습니다!");
				}
			}
		});
	}
</script>
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
<!--             <h1 class="mb-0">식당 수정</h1> -->
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
            <form class="contact-form bg-white" action="ownerStoreModifyPro.me" name="ownerStoreModifyPro" method="post"  enctype="multipart/form-data">
            <input type="hidden" name="store_idx" value="${param.store_idx }">
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
                 <input type="text" class="form-control" id="store_type" name="store_type" value="${store.store_type }" required="required">
                 <small id="small1" class="form-text text-muted">ex) 한식, 일식, 중식, 양식, 요리주점, 카페/디저트 중 택1 </small>
               </div>
               <div class="form-group">
                 <label class="text-black" for="storeName" >업체명</label>
                 <input type="text" class="form-control" name="store_name" id="store_name" value="${store.store_name }" required="required">
                 <small id="small2" class="form-text text-muted">실제 영업중인 가게상호명을 정확히 입력해주세요.</small>
               </div>
               <div class="form-group">
                <label class="text-black" for="file" >업체사진</label>
                <div id="fileBtnArea">
                	<c:choose>
                		<c:when test="${empty store.store_file }">
	                		<input type="file" class="form-control" id="file" name="file" required="required">
	                	</c:when>
                		<c:otherwise>
	                		<c:set var="length" value="${fn:length(store.store_file) }" />
							<c:set var="index" value="${fn:indexOf(store.store_file, '_') }" />
							<c:set var="fileName" value="${fn:substring(store.store_file, index + 1, length) }" />
							<a>${fileName }</a>
							<%-- 삭제버튼 클릭 시 deleteFile() 함수 호출(파라미터로 글번호, 파일명 전달) --%>
							<input type="button" value="삭제" onclick="deleteFile()">
                		</c:otherwise>
                	</c:choose>
                </div>
                <small id="small3" class="form-text text-muted">메인화면에 보여지는 사진입니다.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeLicense" >사업자등록번호</label>
                <input type="text" class="form-control" name="store_license" id="store_license" value="${store.store_license }" required="required">
                <small id="small4" class="form-text text-muted">'-'기호를 생략하고 입력해주세요. ex) 1112233333</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storePhone" >매장 전화번호</label>
                <input type="text" class="form-control" name="store_phone" id="store_phone" value="${store.store_phone }">
                <small id="small5" class="form-text text-muted">'-'기호를 생략하고 입력해주세요. ex) 0513337777</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeAddress">매장 주소</label>
				<c:set var="addressName1" value="${fn:split(store.store_address,',')[0] }" />
				<c:set var="addressName2" value="${fn:split(store.store_address,',')[1] }" />
                <input type="text" class="form-control" name="store_address1" id="store_address1" required="required" value="${addressName1}">
                <input type="text" class="form-control" name="store_address2" id="store_address2" value="${addressName2}">
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
                <input type="text" class="form-control" name="store_time" id="store_time" value="${store.store_time }">
                <small id="small7" class="form-text text-muted">ex) 09:00~22:00 형식으로 입력해주세요. </small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeTime">가게 소개글</label>
                <input type="text" class="form-control22" name="store_content" id="store_content" value="${store.store_content }" style="border: 2px solid #e9ecef; font-size: 16px; width:540px; height: 150px;">
                <small id="small8" class="form-text text-muted">메인화면에 보여질 가게 소개글을 자유롭게 입력해주세요 :) </small>
              </div>
              <div class="form-group">
                <label class="text-black" for="storeEtc">기타</label>
                <input type="text" class="form-control" name="store_etc" id="store_etc" value="${store.store_etc }">
              	<small id="small9" class="form-text text-muted">주차가능 여부, 결제가능한 페이 종류, 화장실 유무 등 기타 안내사항을 자유롭게 입력해주세요 :) </small>
              </div>
              <button type="submit" class="btn btn-primary">수정</button>
              <button type="button" class="btn btn-primary">삭제요청</button>
              <button type="button" class="btn btn-primary">돌아가기</button>
              </form>
              </div>
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
