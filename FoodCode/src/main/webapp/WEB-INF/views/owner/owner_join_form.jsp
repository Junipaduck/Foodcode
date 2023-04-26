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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/radio.css">

  <title>FOODCODE : 점주 회원가입</title>
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
  <script type="text/javascript">
  $(function() {
		let nameStatus = false;
		let idStatus = false;
		let passwdStatus = false;
		let passwd2Status = false;
		let birthStatus = false;
		let phoneStatus = false;
		let genderStatus = false;
		let emailStatus = false;
		$("#member_id").on("blur", function() {
			
			if($("#member_id").val() == ""){
				idStatus = false;
				$("#checkIdResult").html("아이디는 필수 항목입니다.").css('color','red');
			} else {
				let id = $("#member_id").val()
				let regex = /^[\w]{4,8}$/;
				if(!regex.exec(id)){
					$("#checkIdResult").html("영문자, 숫자를 조합하여 4 ~ 8 글자로 만들어주세요.").css('color','red');
					idStatus = false;
				} else {
					$.ajax({
						url: "MemberCheckDupIdPro.me",
						data: {
							member_id: $("#member_id").val()
						},
						success: function(isDupilcateMember) {
							if(isDupilcateMember == true){
								$("#checkIdResult").html("중복된 아이디 입니다.").css('color','red');
								idStatus = false;
							} else {
								$("#checkIdResult").html("사용 가능한 아이디 입니다.").css('color','green');
								idStatus = true;
							}
						}
					}); // ajax 끝
				}
			}
		});
		$("#member_name").on("change", function() {
			let regex = /^[가-힣]{2,10}$/;
			if(!regex.exec($("#member_name").val())) {
				nameStatus = false;
				$("#checkNameResult").html("한글 2 ~ 5자 필수!").css('color','red');
				$("#member_name").select();
			} else {
				$("#checkNameResult").html("사용 가능!").css('color','green');
				nameStatus = true;
			}
		});		
		$("#member_passwd").on("change", function() {
			let passwd = $("#member_passwd").val();
			let lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
			let engUpperRegex = /[A-Z]/;  // 대문자
			let engLowerRegex = /[a-z]/;  // 대문자
			let numberRegex = /[0-9]/;  // 대문자
			let specRegex = /[!@#$%]/;  // 대문자
			if(!lengthRegex.exec(passwd)){
				passwdStatus = false;
				$("#checkPasswdResult").html("영문자, 숫자, 특수문자 8 ~ 16자 필수").css('color','red');
				$("#member_passwd").select();
			} else {
				let count = 0;
				if(engUpperRegex.exec(passwd)){
					count++
				}
				
				if(engLowerRegex.exec(passwd)){
					count++
				} 
				
				if(numberRegex.exec(passwd)){
					count++
				}
				if(specRegex.exec(passwd)) {
					count++
				}
				switch (count) {
				case 0: case 1: $("#checkPasswdResult").html("사용 불가능한 패스워드").css('color','red'); passwdStatus = false; break;
				case 2: $("#checkPasswdResult").html("위험").css('color','red'); passwdStatus = true; break;
				case 3: $("#checkPasswdResult").html("보통").css('color','blue'); passwdStatus = true; break;
				case 4: $("#checkPasswdResult").html("안전").css('color','green'); passwdStatus = true; break;

				}
			}
		});
		$("#member_passwd2").on("change", function() {
			let passwd2 = $("#member_passwd2").val();
			let passwd = $("#member_passwd").val();
			if(passwd2 == passwd){
				passwd2Status = true;
				$("#checkPasswd2Result").text("비밀번호 일치").css('color','green');
			} else {
				passwd2Status = false;
				$("#checkPasswd2Result").text("비밀번호 불일치").css('color','red');
			}
		});
		
		$("#member_birth").on("change", function() {
			let birth = $("#member_birth").val();
			let regexBirth = /^[0-9]{8}$/;
			if(regexBirth.exec(birth)){
				birthStatus = true;
			}
		});
		
		$("#member_phone").on("change", function() {
			let phone = $("#member_phone").val();
			let regexPhone = /^[0-9]{11}$/;
			if(regexPhone.exec(phone)){
				phoneStatus = true;
			}
		});
		
		$("#member_gender").on("change", function() {
			let gender = $("#member_gender").val();
			let gender2 = $("#member_gender2").val();
			if(gender != null || gender2 != null){
				genderStatus = true;
			}
		});
		

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

		
		
		
		$("form").submit(function() {
			if(!nameStatus){
				alert("이름을 확인하세요!");
				$("#name").focus();
				return false;
			} else if(!idStatus){
				alert("아이디를 확인하세요!");
				$("#member_id").focus();
				return false;
			} else if(!passwdStatus){
				alert("패스워드를 확인하세요!");
				$("#member_passwd").focus();
				return false;
			} else if(!passwd2Status){
				alert("패스워드가 일치하는지 확인하세요!");
				$("#member_passwd2").focus();
				return false;
			} else if(!birthStatus){
				alert("생년월일을 확인하세요!");
				$("#member_birth").focus();
				return false;
			} else if(!phoneStatus){
				alert("전화번호를 확인하세요!");
				$("#member_phone").focus();
				return false;
			} else if(!genderStatus){
				alert("성별을 확인하세요!");
				$("#member_gender").focus();
				return false;
			} else if(!emailStatus){
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

  <nav class="site-nav">
  
  </nav>


  <div class="hero hero-inner">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
<!--             <h1 class="mb-0">점주 회원가입</h1> -->
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
            <h2 class="section-title">회원가입</h2>
            <form class="contact-form bg-white" action="ownerJoinPro.me"  method="post">
              <div class="form-group">
                <label class="text-black">아이디</label>
                <input type="text" class="form-control" id="member_id" name="member_id">
                <small id="checkIdResult">4 ~ 8자의 영문자, 숫자를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black">비밀번호</label>
                <input type="password" class="form-control" id="member_passwd" name="member_passwd">
                  <small id="checkPasswdResult">8 ~ 16자의 영문자, 숫자, 특수문자를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black">비밀번호확인</label>
                <input type="password" class="form-control" id="member_passwd2" name="member_passwd2">
                <small id="checkPasswd2Result"></small>
              </div>
              <div class="form-group">
                <label class="text-black">이름</label>
                <input type="text" class="form-control" id="member_name" name="member_name" aria-describedby="emailHelp">
                <small id="checkNameResult"></small>
              </div>
              <div class="form-group">
                <label class="text-black">생년 월일</label>
                <input type="text" class="form-control" id="member_birth" name="member_birth" aria-describedby="emailHelp">
                <small id="emailHelp"> - 기호 생략 ex)19000101</small>
              </div>
              <div class="form-group">
                <label class="text-black">전화 번호</label>
                <input type="text" class="form-control" id="member_phone" name="member_phone" aria-describedby="emailHelp">
                <small id="emailHelp"> - 기호 생략 ex)01012341234</small>
              </div>
              <div class="form-group">
                <label class="text-black">이메일</label>
                <input type="email" class="form-control" id="member_email" name="member_email" value="${userInfo.email }" aria-describedby="emailHelp">
                <input type="button" value="인증하기" id="mail-Check-Btn">
              </div>
              <div class="form-group">
                <label class="text-black">이메일 인증번호</label>
                <input type="text" class="form-control" id="member_emailcheck" name="member_emailcheck" aria-describedby="emailHelp">
              </div>
              <div class="form-group">
				<span id="mail-check-warn"></span>
			  </div>
              <div class="form-group">
                <label class="text-black">성별</label>
                <div class="select">
				 <input type="radio" id="member_gender" value="남" name="member_gender"><label for="member_gender">남</label>
				 <input type="radio" id="member_gender2" value="여" name="member_gender"><label for="member_gender2">여</label>
				</div>
              </div>
              <button type="submit" class="btn btn-primary">가입</button>
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
