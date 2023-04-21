<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일</title>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
</head>
<body>
<script type="text/javascript">

$(function() {
	$('#mail-Check-Btn').click(function() {
		const eamil = $('#userEmail1').val() + $('#userEmail2').val(); // 이메일 주소값 얻어오기!
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
});

</script>

	<div class="form-group email-form">
		 <label for="email">이메일</label>
		 <div class="input-group">
		<input type="text" class="form-control" name="userEmail1" id="userEmail1" placeholder="이메일" >
		<select class="form-control" name="userEmail2" id="userEmail2" >
		<option>@naver.com</option>
		<option>@daum.net</option>
		<option>@gmail.com</option>
		<option>@hanmail.com</option>
		 <option>@yahoo.co.kr</option>
		</select>
		</div>   
	<div class="input-group-addon">
		<button type="button" class="btn btn-primary" id="mail-Check-Btn">본인인증</button>
	</div>
		<div class="mail-check-box">
	<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
	</div>
		<span id="mail-check-warn"></span>
	</div>
</body>
</html>