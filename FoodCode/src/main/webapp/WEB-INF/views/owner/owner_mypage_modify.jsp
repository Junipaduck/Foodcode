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

  <title>점주 회원정보 수정</title>
  <script type="text/javascript">
function DeleteMember() {
	if(window.confirm("탈퇴하시겠습니까?")){
	location.href="customerDelete.me";
	}
}
  </script>
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
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <p class="text-white"></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  
  
  <div class="untree_co-section">
    <div class="container my-5">

      <div class="row justify-content-center">

        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">My Page</h2>
            <form class="contact-form bg-white" action="ownerModifyPro.me" method="post">
              <div class="form-group">
                <label class="text-black">아이디</label>
                <input type="text" class="form-control" id="member_id" aria-describedby="emailHelp" name="member_id" placeholder="${map.member.member_id}" readonly="readonly" >
                <small id="emailHelp" class="form-text text-muted">4 ~ 8 자리 아이디를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black">비밀번호</label>
                <input type="password" class="form-control" id="member_passwd" name="member_passwd">
                  <small id="emailHelp" class="form-text text-muted">기존의 비밀번호를 적어주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="password">변경할 비밀번호</label>
                <input type="password" class="form-control" id="newPasswd" name="newPasswd">
                <small id="emailHelp" class="form-text text-muted">8 ~ 16 자리 비밀번호를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="password">변경할 비밀번호확인</label>
                <input type="password" class="form-control" id="newPasswd2" name="newPasswd2">
                <small id="emailHelp" class="form-text text-muted">비밀번호를 다시 적어주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black">이름</label>
                <input type="text" class="form-control" id="member_name" name="member_name"  placeholder="${map.member.member_name}" readonly="readonly" aria-describedby="emailHelp">
              </div>
              <div class="form-group">
                <label class="text-black">생년 월일</label>
                <input type="text" class="form-control" id="member_birth" name="member_birth" placeholder="${map.member.member_birth}" readonly="readonly" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">yyyy.mm.dd 식으로 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black">전화 번호</label>
                <input type="text" class="form-control" id="member_phone" name="member_phone" value="${map.member.member_phone}" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">'-'기호 생략하고 적어주세요</small>
              </div>
              <div class="form-group">
                <label class="text-black">이메일</label>
                <input type="email" class="form-control" id="member_email" name="member_email" value="${map.member.member_email}" aria-describedby="emailHelp">
              </div>
              <div class="form-group">
                <label class="text-black" for="email">성별</label>
                <div class="select">
				 <input type="radio" id="select" name="member_gender" <c:if test="${member.member_gender eq '남'}"> checked</c:if>> <label for="select">남</label>
				 <input type="radio" id="select2" name="member_gender" <c:if test="${member.member_gender eq '여'}"> checked</c:if>> <label for="select2">여</label>
				</div>
              </div>
              <button type="submit" class="btn btn-primary">수정</button>
              <button type="button" class="btn btn-primary" onclick="DeleteMember();">회원 탈퇴</button>
              <input type="hidden" id="member_idx" value="1" name="member_idx">
            </form>
          </div>

          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">Social Icons</h2>
            <ul class="list-unstyled social-icons light">
              <li><a href="#"><span class="icon-facebook"></span></a></li>
              <li><a href="#"><span class="icon-twitter"></span></a></li>
              <li><a href="#"><span class="icon-linkedin"></span></a></li>
              <li><a href="#"><span class="icon-google"></span></a></li>
              <li><a href="#"><span class="icon-play"></span></a></li>
            </ul>
          </div> <!-- END .custom-block -->
        </div>
      </div>



        </div>
      </div>

<!--       <div class="row justify-content-center mt-5 section"> -->

<!--       </div> -->


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
