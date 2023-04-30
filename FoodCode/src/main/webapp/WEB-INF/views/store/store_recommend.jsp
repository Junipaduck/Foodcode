<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FOODCODE : 맛집추천</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="../favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
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
 
 <!-- 부트스트랩 css 링크 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 

<!-- 아래 4줄 : 상단 탭css 관련 링크 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store_recommend_style.css" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- css 시작 ----------------------------------------------------------------------------------------- -->
<style type="text/css">

.page123 {
	margin-bottom: 30px;
}

.element77, .outer-container77 {
   width: 1500px;
	height: 800px;
	margin: 0 auto;
 }

 .outer-container77 {
   position: relative;
   overflow: hidden;
/*   border: 5px solid purple; */
 }

 .inner-container77 {
   position: absolute;
   left: 0;
   overflow-x: hidden;
   overflow-y: scroll;
 }

 .inner-container77::-webkit-scrollbar77 {
   display: none;
 }
 
 .form222 {
  border-radius: 10px;
  z-index: 9;
  background: #ffffff; }

</style>
<!-- ----------------------------------------------------------------------------------------- -->

</head>
<body>
	<header>
		<jsp:include page="../inc/top2.jsp"></jsp:include>
	</header>	
 
  
  
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">

/* 탭 기능 제이쿼리 */
$(document).ready(function() {
	  $(".webtong_tab_type04 li").click(function() {
	    var idx = $(this).index();
	    $(".webtong_tab_type04 li").removeClass("on");
	    $(".webtong_tab_type04 li").eq(idx).addClass("on");
	    $(".tabBox > div").hide();
	    $(".tabBox > div").eq(idx).show();
	  })
	});



</script>



<!-- 중간body 시작 ----------------------------------------------------------------------------------------- -->

　<!-- 이 줄에 띄어쓰기 해놓았습니다. 삭제X -->


<!-- 		<section id="buttonArea"> -->
<!-- 			<form action="store_recommend.so"> 검색 눌렀을 때 이동할 곳 -->
<!-- 				검색타입목록, 검색창 추가 -->
<!-- 				<select name="searchType"> -->
<%-- 					<option value="store_name" <c:if test="${param.searchKeyword eq 'store_name'}">selected</c:if>>가게명</option> --%>
<%-- 					<option value="store_content" <c:if test="${param.searchKeyword eq 'store_content'}">selected</c:if>>가게소개글</option> --%>
<%-- 					<option value="store_name_store_content" <c:if test="${param.searchKeyword eq 'store_name_store_content'}">selected</c:if>>가게명&가게소개글</option> --%>
<%-- 					<option value="subject_content" <c:if test="${param.searchKeyword eq 'subject_content'}">selected</c:if>>지역</option> --%>
<!-- 				</select> -->
<%-- 				<input type="text" name="searchKeyword" value="${param.searchKeyword }"/> --%>
<!-- 				<input type="submit" value="검색" /> -->
<!-- 			</form> -->
<!-- 		</section> -->
   
   <div style="margin-left: 520px;"> 		
    <section id="buttonArea" style="margin-right: -3490px;">		
		<form class="form222" action="store_recommend.so" style="margin-bottom: 10px; margin-top: -10px; margin-left: -78px;">
				<select name="searchType" id="" class="custom-select" style="width: 5%; float: left;">
					<option value="store_name" <c:if test="${param.searchKeyword eq 'store_name'}">selected</c:if>>가게명</option>
					<option value="store_content" <c:if test="${param.searchKeyword eq 'store_content'}">selected</c:if>>가게소개글</option>
					<option value="store_address" <c:if test="${param.searchKeyword eq 'store_address'}">selected</c:if>>지역</option>
				</select>
				<input class="form-control me-2" type="search" placeholder="검색해 보세요" aria-label="Search" name="searchKeyword" value="${param.searchKeyword }" style="width: 14%; float: left; margin-left: 10px;">
				<button class="btn btn-outline-success" type="submit" style="margin-left: 10px;">Search</button>
		</form>
	</section>
</div>	    
			    
<section class="contents">
	<div class="tab_menu">
		<ul class="webtong_tab_type04">
			<li class="on"><a href="#전체">전체</a></li>
			<li><a href="#한식1">한식</a></li>
			<li><a href="#일식2">일식</a></li>
			<li><a href="#중식3">중식</a></li>
			<li><a href="#양식4">양식</a></li>
			<li><a href="#요리주점5">요리주점</a></li>
			<li><a href="#카페/디저트6">카페/디저트</a></li>
		</ul>	
	</div>
	<div class="tabBox">
    	<div class="on"> <!-- 전체 시작 (왼쪽에 + 누르면 코드 나옵니다) -->
    	
    	
    		
   		<!-- 스크롤 코드 시작 (아래 div태그 3줄) -->	
		 <div class="outer-container77">
	       <div class="inner-container77">
	         <div class="element77">
	         
					<!-- 가게설명 카드 시작 -->
						<section class="py-5">
					            <div class="container px-4 px-lg-5 mt-5">
					                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
										 <c:forEach var="store" items="${storeList }"> <!-- list를 뿌려주는 forEach문 시작 -->
										 	<c:if test="${store.auth_status eq 'Y'}"> <!-- 관리자가 Y로 승인해주는 가게만 출력됨 -->
							                    <div class="col-lg-6 col-md-6">
							                        <div class="card h-100">
							                            <c:set var="length" value="${fn:length(store.store_file) }"/>
														<c:set var="index" value="${fn:indexOf(store.store_file, '_') }"/>
														<c:set var="fileName" value="${fn:substring(store.store_file, index + 1, length) }"/>
							                            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." onclick="location.href='store.so?store_idx=${store.store_idx }'" alt="..." />
							                            <div class="card-body p-4">
							                                <div class="text-center">
							                                    <h5 class="fw-bolder">
							                                    ${store.store_name } 
													            		<img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${store.review_star}</span>
							                                    </h5> <!-- 가게명 -->
							                                   	${store.store_content } <!-- 가게상세내용 -->
							                                </div>
							                            </div>
							                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="store.so?store_idx=${store.store_idx }">가게상세보기</a></div>
							                            </div>
							                        </div>
							                    </div>
						                    </c:if>
										</c:forEach>  
				       				</div>
				        	   </div>
				   	   	 </section>
					<!-- 가게설명 카드 끝 -->	
		
			</div>
	      </div>
	    </div>
	   <!-- 스크롤 코드 끝(윗 div태그 3줄) -->
			
			
		</div> <!-- 전체 끝 -->
		
		<div style="display: none;"> <!-- 한식 시작 -->
		
		<!-- 스크롤 코드 시작 (아래 div태그 3줄) -->	
			 <div class="outer-container77">
		       <div class="inner-container77">
		         <div class="element77">
		         
						<!-- 가게설명 카드 시작 -->
								<section class="py-5">
							            <div class="container px-4 px-lg-5 mt-5">
							                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
												 <c:forEach var="store1" items="${storeList1 }"> <!-- list를 뿌려주는 forEach문 시작 -->
								                    <div class="col-lg-6 col-md-6"> <!-- col-lg-6 의 숫자는 6일때 한줄에 카드2개가 보여지고, 3일때 카드4개가 보여짐!  -->
								                        <div class="card h-100">
								                        	<c:set var="length" value="${fn:length(store1.store_file) }"/>
															<c:set var="index" value="${fn:indexOf(store1.store_file, '_') }"/>
															<c:set var="fileName" value="${fn:substring(store1.store_file, index + 1, length) }"/>
								                            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." onclick="location.href='store.so?store_idx=${store1.store_idx }'" alt="..." />
								                            <div class="card-body p-4">
								                                <div class="text-center">
								                                    <h5 class="fw-bolder">${store1.store_name }
								                                    	<img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${store1.review_star}</span>
								                                    </h5> <!-- 가게명 -->
								                                   	${store1.store_content } <!-- 가게상세내용 -->
								                                </div>
								                            </div>
								                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so?store_idx=${store1.store_idx }'">가게상세보기</a></div>
								                            </div>
								                        </div>
								                    </div>
												</c:forEach>  
						       				</div>
						        	   </div>
						   	   	 </section>
							<!-- 가게설명 카드 끝 -->
									
				</div>
		      </div>
		    </div>
		   <!-- 스크롤 코드 끝(윗 div태그 3줄) -->
				
		</div> <!-- 한식 끝 -->
		
		<div style="display: none;"> <!-- 일식 시작 -->
		
		
		
		<!-- 스크롤 코드 시작 (아래 div태그 3줄) -->	
			 <div class="outer-container77">
		       <div class="inner-container77">
		         <div class="element77">
		         
						<!-- 가게설명 카드 시작 -->
								<section class="py-5">
							            <div class="container px-4 px-lg-5 mt-5">
							                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
												 <c:forEach var="store2" items="${storeList2 }"> <!-- list를 뿌려주는 forEach문 시작 -->
								                    <div class="col-lg-6 col-md-6"> <!-- col-lg-6 의 숫자는 6일때 한줄에 카드2개가 보여지고, 3일때 카드4개가 보여짐!  -->
								                        <div class="card h-100">
								                        	<c:set var="length" value="${fn:length(store2.store_file) }"/>
															<c:set var="index" value="${fn:indexOf(store2.store_file, '_') }"/>
															<c:set var="fileName" value="${fn:substring(store2.store_file, index + 1, length) }"/>
								                            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." onclick="location.href='store.so?store_idx=${store2.store_idx }'" alt="..." />
								                            <div class="card-body p-4">
								                                <div class="text-center">
								                                    <h5 class="fw-bolder">${store2.store_name }
								            							<img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${store2.review_star}</span>
								                                    </h5> <!-- 가게명 -->
								                                   	${store2.store_content } <!-- 가게상세내용 -->
								                                </div>
								                            </div>
								                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so?store_idx=${store2.store_idx }'">가게상세보기</a></div>
								                            </div>
								                        </div>
								                    </div>
												</c:forEach>  
						       				</div>
						        	   </div>
						   	   	 </section>
							<!-- 가게설명 카드 끝 -->
									
				</div>
		      </div>
		    </div>
		   <!-- 스크롤 코드 끝(윗 div태그 3줄) -->
				
		</div> <!-- 일식 끝 -->
		<div style="display: none;"> <!-- 중식 시작 -->
			
			<!-- 스크롤 코드 시작 (아래 div태그 3줄) -->	
			 <div class="outer-container77">
		       <div class="inner-container77">
		         <div class="element77">
		         
					 <!-- 가게설명 카드 시작 -->
						<section class="py-5">
					            <div class="container px-4 px-lg-5 mt-5">
					                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
										 <c:forEach var="store3" items="${storeList3 }"> <!-- list를 뿌려주는 forEach문 시작 -->
						                    <div class="col-lg-6 col-md-6">
						                        <div class="card h-100">
							                        <c:set var="length" value="${fn:length(store3.store_file) }"/>
													<c:set var="index" value="${fn:indexOf(store3.store_file, '_') }"/>
													<c:set var="fileName" value="${fn:substring(store3.store_file, index + 1, length) }"/>
						                            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." onclick="location.href='store.so?store_idx=${store3.store_idx }'" alt="..." />
						                            <div class="card-body p-4">
						                                <div class="text-center">
						                                    <h5 class="fw-bolder">${store3.store_name }
														           <img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${store3.review_star}</span>
						                                    </h5> <!-- 가게명 -->
						                                   	${store3.store_content } <!-- 가게상세내용 -->
						                                </div>
						                            </div>
						                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so?store_idx=${store3.store_idx }'">가게상세보기</a></div>
						                            </div>
						                        </div>
						                    </div>
										</c:forEach>  
				       				</div>
				        	   </div>
				   	   	 </section>
					<!-- 가게설명 카드 끝 -->		
			
				</div>
		      </div>
		    </div>
		   <!-- 스크롤 코드 끝(윗 div태그 3줄) -->
			
			
		</div> <!-- 중식 끝 -->
		<div style="display: none;"> <!-- 양식 시작 -->
		
		
			<!-- 스크롤 코드 시작 (아래 div태그 3줄) -->	
			 <div class="outer-container77">
		       <div class="inner-container77">
		         <div class="element77">
		         
					 <!-- 가게설명 카드 시작 -->
						<section class="py-5">
					            <div class="container px-4 px-lg-5 mt-5">
					                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
										 <c:forEach var="store4" items="${storeList4 }"> <!-- list를 뿌려주는 forEach문 시작 -->
						                    <div class="col-lg-6 col-md-6">
						                        <div class="card h-100">
							                        <c:set var="length" value="${fn:length(store4.store_file) }"/>
													<c:set var="index" value="${fn:indexOf(store4.store_file, '_') }"/>
													<c:set var="fileName" value="${fn:substring(store4.store_file, index + 1, length) }"/>
						                            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." onclick="location.href='store.so?store_idx=${store4.store_idx }'" alt="..." />
						                            <div class="card-body p-4">
						                                <div class="text-center">
						                                    <h5 class="fw-bolder">${store4.store_name }
						                   				     <img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${store4.review_star}</span>
						                                    </h5> <!-- 가게명 -->
						                                   	${store4.store_content } <!-- 가게상세내용 -->
						                                </div>
						                            </div>
						                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so?store_idx=${store4.store_idx }'">가게상세보기</a></div>
						                            </div>
						                        </div>
						                    </div>
										</c:forEach>  
				       				</div>
				        	   </div>
				   	   	 </section>
					<!-- 가게설명 카드 끝 -->
						
				</div>
		      </div>
		    </div>
		   <!-- 스크롤 코드 끝(윗 div태그 3줄) -->	
		
		</div> <!-- 양식 끝 -->
		<div style="display: none;"> <!-- 요리주점 시작 -->
		
			<!-- 스크롤 코드 시작 (아래 div태그 3줄) -->	
			 <div class="outer-container77">
		       <div class="inner-container77">
		         <div class="element77">
		         
					  <!-- 가게설명 카드 시작 -->
						<section class="py-5">
					            <div class="container px-4 px-lg-5 mt-5">
					                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
										 <c:forEach var="store5" items="${storeList5 }"> <!-- list를 뿌려주는 forEach문 시작 -->
						                    <div class="col-lg-6 col-md-6">
						                        <div class="card h-100">
						                        	<c:set var="length" value="${fn:length(store5.store_file) }"/>
													<c:set var="index" value="${fn:indexOf(store5.store_file, '_') }"/>
													<c:set var="fileName" value="${fn:substring(store5.store_file, index + 1, length) }"/>
						                            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." onclick="location.href='store.so?store_idx=${store5.store_idx }'" alt="..." />
						                            <div class="card-body p-4">
						                                <div class="text-center">
						                                    <h5 class="fw-bolder">${store5.store_name }
						                       			       <img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${store5.review_star}</span>
						                                    </h5> <!-- 가게명 -->
						                                   	${store5.store_content } <!-- 가게상세내용 -->
						                                </div>
						                            </div>
						                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so?store_idx=${store5.store_idx }'">가게상세보기</a></div>
						                            </div>
						                        </div>
						                    </div>
										</c:forEach>  
				       				</div>
				        	   </div>
				   	   	 </section>
					<!-- 가게설명 카드 끝 -->
					
				</div>
		      </div>
		    </div>
		   <!-- 스크롤 코드 끝(윗 div태그 3줄) -->			
		   
		</div> <!-- 요리주점 끝 -->
		<div style="display: none;"> <!-- 카페/디저트 시작 -->
		
			<!-- 스크롤 코드 시작 (아래 div태그 3줄) -->	
			 <div class="outer-container77">
		       <div class="inner-container77">
		         <div class="element77">
					 <!-- 가게설명 카드 시작 -->
						<section class="py-5">
					            <div class="container px-4 px-lg-5 mt-5">
					                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
										 <c:forEach var="store6" items="${storeList6 }"> <!-- list를 뿌려주는 forEach문 시작 -->
						                    <div class="col-lg-6 col-md-6">
						                        <div class="card h-100">
							                        <c:set var="length" value="${fn:length(store6.store_file) }"/>
													<c:set var="index" value="${fn:indexOf(store6.store_file, '_') }"/>
													<c:set var="fileName" value="${fn:substring(store6.store_file, index + 1, length) }"/>
						                            <img class="card-img-top" src="${pageContext.request.contextPath }/resources/storeFileUpload/${fileName}" alt="..." onclick="location.href='store.so?store_idx=${store6.store_idx }'" alt="..." />
						                            <div class="card-body p-4">
						                                <div class="text-center">
						                                    <h5 class="fw-bolder">${store6.store_name }
											            		<img src="${pageContext.request.contextPath }/resources/images/star333.png" width="30px;" height="30px;"><span style="font-size: 20px; color: #ef2c00;"> ${store6.review_star}</span>
						                                    </h5> <!-- 가게명 -->
						                                   	${store6.store_content } <!-- 가게상세내용 -->
						                                </div>
						                            </div>
						                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so?store_idx=${store6.store_idx }'">가게상세보기</a></div>
						                            </div>
						                        </div>
						                    </div>
										</c:forEach>  
				       				</div>
				        	   </div>
				   	   	 </section>
					<!-- 가게설명 카드 끝 -->
						
				</div>
		      </div>
		    </div>
		   <!-- 스크롤 코드 끝(윗 div태그 3줄) -->		
		   
		</div> <!-- 카페/디저트 끝 -->
		
		
	</div>
</section>







	
<!-- 중간body 끝 ----------------------------------------------------------------------------------------- -->
	
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