<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="kr" xmlns:th="http://www.thymeleaf.org">
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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/radio.css">
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
  <title>개인 회원 가입</title>
  <script type="text/javascript">
  $(function() {
		let emailStatus = false;
		let emailDupStatus = false;

	$("#member_email").on("blur", function() {
			
			if($("#member_email").val() == ""){
				emailDupStatus = false;
				$("#checkEmailResult").html("이메일은 필수 항목입니다.").css('color','red');
			} else {
					$.ajax({
						url: "MemberCheckDupEmailPro.me",
						data: {
							member_email: $("#member_email").val()
						},
						success: function(isDupilcateMember) {
							if(isDupilcateMember == true){
								$("#checkEmailResult").html("이메일이 조회 되었습니다.").css('color','green');
								emailDupStatus = true;
								$(function() {
									$('#mail-Check-Btn').click(function() {
										const eamil = $('#member_email').val(); // 이메일 주소값 얻어오기!
										console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
										const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
																								
										$.ajax({
											type : 'get',
											url : "mailCheck?email="+eamil, // GET방식
											success : function (data) {
												console.log("데이타 : " +  data);
												checkInput.attr('disabled',false);
												code = data;
												alert('인증번호가 전송되었습니다.')
											}	
										}); // end ajax
									}); // end send eamil
									
									// 인증번호 비교 
									$('#member_emailcheck').keyup(function () {
										const inputCode = $(this).val();
										const $resultMsg = $('#mail-check-warn');
										
										if(inputCode === code){
											$resultMsg.html('인증번호가 일치합니다.');
											$resultMsg.css('color','green');
											$('#mail-Check-Btn').attr('disabled',true);
											$('#member_email').attr('readonly',true);
											$('#member_emailcheck').attr('readonly',true);
											emailStatus = true;
									        
						//		 	        $('#mail-check-warn').append(
						//		 	                $(document.createElement('input')).prop({
						//		 	                    type: 'button',
						//		 	                    id: 'submit',
						//		 	                    value: '확인',
						//		 	                    className: 'btn'
						//		 	                })
						//		 	            ); 서브밋 버튼 생성 
									        
										}else{
											$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
											$resultMsg.css('color','red');
											emailStatus = false;
										}
									});
								});
							} else {
								$("#checkEmailResult").html("조회 된 이메일이 없습니다.").css('color','red');
								emailDupStatus = false;
										
							}
						}
					});
					// ajax 끝
				}
		});
		
		
		
		
		
		$("form").submit(function() {
			if(!emailStatus){
				alert("이메일을 확인하세요!");
				$("#member_email").focus();
				return false;
			} else {
				return true;
			}
		});
	});
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
  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <h1 class="mb-0"></h1>
            <p class="text-white"> </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="untree_co-section">
  
      </div>

      <div class="row justify-content-center">

        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">비밀번호 찾기</h2>
            <form action="findPasswdPro.me" method="post" class="contact-form bg-white">
			 <div class="form-group">
                <label class="text-black" for="email">아이디</label>
                <input type="text" class="form-control" id="member_id" aria-describedby="emailHelp" name="member_id">
                <small id="emailHelp" class="form-text text-muted"></small>
              </div>
			 <div class="form-group">
                <label class="text-black" for="email">전화번호</label>
                <input type="text" class="form-control" id="member_phone" aria-describedby="emailHelp" name="member_phone">
                <small id="emailHelp" class="form-text text-muted"></small>
              </div>
              <div class="form-group">
                <label class="text-black">이메일</label>
                <input type="email" class="form-control" id="member_email" name="member_email" aria-describedby="emailHelp">
                <small id="checkEmailResult"></small><br>
                <input type="button" value="인증하기" id="mail-Check-Btn">
              </div>
              <div class="form-group">
                <label class="text-black">이메일 인증번호</label>
                <input type="text" class="form-control" id="member_emailcheck" name="member_emailcheck" aria-describedby="emailHelp">
              </div>
              <div class="form-group">
				<span id="mail-check-warn"></span>
			  </div>
              <button type="submit" class="btn btn-primary">비밀번호 찾기</button>
              <button type="button" class="btn btn-primary" onclick="history.back()">돌아가기</button>
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


  <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">Lets you Explore the Best. Contact Us Now</h2>
          <p class="mb-4 lead text-white text-white-opacity">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, fugit?</p>
          <p class="mb-0"><a href="booking.po" class="btn btn-outline-white text-white btn-md font-weight-bold">Get in touch</a></p>
        </div>
      </div>
    </div>
  </div>

  <div class="site-footer">
    <div class="inner first">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">About Tour</h3>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
            <div class="widget">
              <ul class="list-unstyled social">
                <li><a href="#"><span class="icon-twitter"></span></a></li>
                <li><a href="#"><span class="icon-instagram"></span></a></li>
                <li><a href="#"><span class="icon-facebook"></span></a></li>
                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                <li><a href="#"><span class="icon-dribbble"></span></a></li>
                <li><a href="#"><span class="icon-pinterest"></span></a></li>
                <li><a href="#"><span class="icon-apple"></span></a></li>
                <li><a href="#"><span class="icon-google"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2 pl-lg-5">
            <div class="widget">
              <h3 class="heading">Pages</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2">
            <div class="widget">
              <h3 class="heading">Resources</h3>
              <ul class="links list-unstyled">
                <li><a href="#">Blog</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="widget">
              <h3 class="heading">Contact</h3>
              <ul class="list-unstyled quick-info links">
                <li class="email"><a href="#">mail@example.com</a></li>
                <li class="phone"><a href="#">+1 222 212 3819</a></li>
                <li class="address"><a href="#">43 Raymouth Rd. Baltemoer, London 3910</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>



    <div class="inner dark">
      <div class="container">
        <div class="row text-center">
          <div class="col-md-8 mb-3 mb-md-0 mx-auto">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" class="link-highlight">Untree.co</a> <!-- License information: https://untree.co/license/ -->
            </p>
          </div>
          
        </div>
      </div>
    </div>
  </div>

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