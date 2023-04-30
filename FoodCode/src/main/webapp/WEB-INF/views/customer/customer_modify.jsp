<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/uili.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table2.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/radio.css">
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
  

  <title>FOODCODE :회원 정보 수정</title>
  <script type="text/javascript">
function DeleteMember() {
	if(window.confirm("탈퇴하시겠습니까?")){
	location.href="customerDelete.me";
	}
}

	$(function() {
		$("#member_passwd2").on("change", function() {
			let passwd = $("#member_passwd2").val();
			let lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
			let engUpperRegex = /[A-Z]/;  // 대문자
			let engLowerRegex = /[a-z]/;  // 대문자
			let numberRegex = /[0-9]/;  // 대문자
			let specRegex = /[!@#$%]/;  // 대문자
			if(!lengthRegex.exec(passwd)){
				passwdStatus = false;
				$("#checkPasswdResult").html("영문자, 숫자, 특수문자 8 ~ 16자 필수").css('color','red');
				$("#member_passwd2").select();
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
		$("#member_passwd2_1").on("change", function() {
			let passwd2 = $("#member_passwd2_1").val();
			let passwd = $("#member_passwd2").val();
			if(passwd2 == passwd){
				passwd2Status = true;
				$("#checkPasswd2Result").text("비밀번호 일치").css('color','green');
			} else {
				passwd2Status = false;
				$("#checkPasswd2Result").text("비밀번호 불일치").css('color','red');
			}
		});
		
		$("form").submit(function() {
			if(!passwdStatus){
				alert("패스워드를 확인하세요!");
				$("#member_passwd2").focus();
				return false;
			} else if(!passwd2Status){
				alert("패스워드가 일치하는지 확인하세요!");
				$("#member_passwd2_1").focus();
				return false;
			}  else {
				return true;
			}
		});
		
	});






</script>
</head>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
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
            <h2 class="section-title">회원수정</h2>
            <form class="contact-form bg-white" action="customerModifyPro.me">
              <input type="hidden" id="member_idx" value="${map.member.member_idx }" name="member_idx">
              <div class="form-group">
                <label class="text-black" for="email">아이디</label>
                <input type="text" class="form-control" id="member_id" aria-describedby="emailHelp" placeholder="${map.member.member_id}" readonly="readonly" name="member_id">
                <small id="emailHelp" class="form-text text-muted">4 ~ 8 자리 아이디를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="password">비밀번호</label>
                <input type="password" class="form-control" id="member_passwd" name="member_passwd">
                  <small id="emailHelp" class="form-text text-muted">8 ~ 16 자리 비밀번호를 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="password">변경할 비밀번호</label>
                <input type="password" class="form-control" id="member_passwd2" name="modifyMember">
                  <small id="checkPasswdResult"></small>
              </div>
              <div class="form-group">
                <label class="text-black" for="password">변경할 비밀번호확인</label>
                <input type="password" class="form-control" id="member_passwd2_1" name="modifyMember2">
                <small id="checkPasswd2Result"></small>
              </div>
              <div class="form-group">
                <label class="text-black" for="email">이름</label>
                <input type="text" class="form-control" id="member_name" aria-describedby="emailHelp" placeholder="${map.member.member_name}" readonly="readonly" name="member_name">
              </div>
              <div class="form-group">
                <label class="text-black" for="email">생년 월일</label>
                <input type="text" class="form-control" id="member_birth" aria-describedby="emailHelp" placeholder="${map.member.member_birth}" readonly="readonly" name="member_birth">
                <small id="emailHelp" class="form-text text-muted">yyyy.mm.dd 식으로 입력해주세요.</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="email">전화 번호</label>
                <input type="text" class="form-control" id="member_phone" aria-describedby="emailHelp" value="${map.member.member_phone}" name="member_phone">
                <small id="emailHelp" class="form-text text-muted">'-'기호 생략하고 적어주세요</small>
              </div>
              <div class="form-group">
                <label class="text-black" for="email">이메일</label>
                <input type="email" class="form-control" id="member_email" readonly="readonly" aria-describedby="emailHelp" value="${map.member.member_email}" name="member_email">
              </div>
              <div class="form-group">
                <label class="text-black" for="email">성별</label>
                <div class="select">
				 <input type="radio" id="select" name="member_gender"  <c:if test="${map.member.member_gender eq '남'}">checked</c:if> ><label for="select">남</label>
				 <input type="radio" id="select2" name="member_gender"  <c:if test="${map.member.member_gender eq '여'}">checked</c:if>><label for="select2">여</label>
				</div>
              </div>
              <button type="submit" class="btn btn-primary">수정</button>
              <button type="button" class="btn btn-primary" onclick="location.href='MemberInfo.me'">돌아가기</button>
              <button type="button" class="btn btn-primary" onclick="location.href ='customerDelete.me'">회원 탈퇴</button>
            </form>
          </div>


        </div>
      </div>




  <!-- footer -->
	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>

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
