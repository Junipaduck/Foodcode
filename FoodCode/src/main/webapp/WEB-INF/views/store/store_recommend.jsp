<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌2팀</title>
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

.tab_cont {
	margin-left: 100px;
}


</style>
<!-- ----------------------------------------------------------------------------------------- -->

</head>
<body>
	<header>
		<jsp:include page="../inc/top2.jsp"></jsp:include>
	</header>	
 
  
  
<script src="=f2js/jquery-3.6.4.js"></script>
<script type="text/javascript">

/* 아래 코드는 배하나가 탭 ajax 시도 후 실패한 코드 */
// $(document).ready(function() {
//   $(".webtong_tab_type04 li").click(function() {
//     var idx = $(this).index();
//     $(".webtong_tab_type04 li").removeClass("on");
//     $(".webtong_tab_type04 li").eq(idx).addClass("on");
//     $(".tab_cont > div").hide();
//     $(".tab_cont > div").eq(idx).show();
//   })
  
//   $('.tab_menu').find('a').on('click', function(){
// 	  $('.tab_menu').find('.tab_cont').text('');
	  
// 	  $('.tab_menu').find('.tab_cont').eq(0).text($(this).text());
//   })
// });



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

　

<section class="contents">
	<div class="tab_menu">
		<ul class="webtong_tab_type04">
			<li class="on"><a href="#none1">한식</a></li>
			<li><a href="#none2">일식</a></li>
			<li><a href="#none3">중식</a></li>
			<li><a href="#none4">양식</a></li>
			<li><a href="#none5">씨푸드</a></li>
			<li><a href="#none6">술</a></li>
			<li><a href="#none7">카페/디저트</a></li>
		</ul>	
	</div>
	<div class="tabBox">
    	<div class="on"> <!-- 한식 시작 (왼쪽에 + 누르면 코드 나옵니다) -->
    	
			  <!-- 가게설명 카드 시작 -->
				<section class="py-5">
		            <div class="container px-4 px-lg-5 mt-5">
		                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                   식당 설명란 입니다.
		                                </div>
		                            </div>
		                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		        			</div>
		         	   </div>
		        </section>
			<!-- 가게설명 카드 끝 -->		
			
			
			
		</div>
		<div style="display: none;"> <!-- 일식 시작 -->
		
				 <!-- 가게설명 카드 시작 -->
				<section class="py-5">
		            <div class="container px-4 px-lg-5 mt-5">
		                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">일식!!!</h5>
		                                    <!-- Product price-->
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                   식당 설명란 입니다.
		                                </div>
		                            </div>
		                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		        			</div>
		         	   </div>
		        </section>
			<!-- 가게설명 카드 끝 -->		
		
				
		</div> <!-- 일식 끝 -->
		<div style="display: none;"> <!-- 중식 시작 -->
			
			 <!-- 가게설명 카드 시작 -->
				<section class="py-5">
		            <div class="container px-4 px-lg-5 mt-5">
		                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">중식~~~</h5>
		                                    <!-- Product price-->
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                   식당 설명란 입니다.
		                                </div>
		                            </div>
		                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		        			</div>
		         	   </div>
		        </section>
			<!-- 가게설명 카드 끝 -->		
			
		</div> <!-- 중식 끝 -->
		<div style="display: none;"> <!-- 양식 시작 -->
		
			 <!-- 가게설명 카드 시작 -->
				<section class="py-5">
		            <div class="container px-4 px-lg-5 mt-5">
		                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">양식 ! !</h5>
		                                    <!-- Product price-->
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                   식당 설명란 입니다.
		                                </div>
		                            </div>
		                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		        			</div>
		         	   </div>
		        </section>
			<!-- 가게설명 카드 끝 -->		
		
		</div>
		<div style="display: none;"> <!-- 씨푸드 시작 -->
			
			 <!-- 가게설명 카드 시작 -->
				<section class="py-5">
		            <div class="container px-4 px-lg-5 mt-5">
		                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">씨푸드^^</h5>
		                                    <!-- Product price-->
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                   식당 설명란 입니다.
		                                </div>
		                            </div>
		                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		        			</div>
		         	   </div>
		        </section>
			<!-- 가게설명 카드 끝 -->		
			
		</div>
		<div style="display: none;"> <!-- 술 시작 -->
			 <!-- 가게설명 카드 시작 -->
				<section class="py-5">
		            <div class="container px-4 px-lg-5 mt-5">
		                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">술..</h5>
		                                    <!-- Product price-->
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                   식당 설명란 입니다.
		                                </div>
		                            </div>
		                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		        			</div>
		         	   </div>
		        </section>
			<!-- 가게설명 카드 끝 -->		
		</div>
		<div style="display: none;"> <!-- 카페/디저트 시작 -->
			 <!-- 가게설명 카드 시작 -->
				<section class="py-5">
		            <div class="container px-4 px-lg-5 mt-5">
		                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">카페/디저트</h5>
		                                    <!-- Product price-->
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Sale badge-->
		                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product price-->
		                                    <span class="text-muted text-decoration-line-through"></span>
		                                    식당 설명란 입니다.
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." onclick="location.href='store.so'" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">한식</h5>
		                                    <!-- Product reviews-->
		                                    <div class="d-flex justify-content-center small text-warning mb-2">
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                        <div class="bi-star-fill"></div>
		                                    </div>
		                                    <!-- Product price-->
		                                   식당 설명란 입니다.
		                                </div>
		                            </div>
		                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#" onclick="location.href='store.so'">가게상세보기</a></div>
		                            </div>
		        			</div>
		         	   </div>
		        </section>
			<!-- 가게설명 카드 끝 -->		
		</div>
	</div>







	
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