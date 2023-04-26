<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 메세지(msg 속성) 출력 후 지정된 페이지(target)로 이동 - 자바스크립트 --%>
<script>

	let customerConfirm = confirm("통합회원가입으로 이동하겠습니다. 가입 후 카카오 로그인이 가능합니다. 개인 회원으로 가입하시겠습니까?");
	
	if(customerConfirm){
		location.href = "customerJoin.me";
	} else {
	let ownerConfirm = confirm("통합회원가입으로 이동하겠습니다. 가입 후 카카오 로그인이 가능합니다. 점주 회원으로 가입하시겠습니까?");
		if(ownerConfirm){
		location.href = "ownerJoin.me";
		} else {
			location.href = "login.me";
		}
	}


</script>