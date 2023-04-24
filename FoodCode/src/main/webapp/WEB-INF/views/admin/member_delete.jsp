<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style>
	#passForm {
		width: 300px;
		margin: auto;
		border: 1px solid blue;
		text-align: center;
	}
	
	h2 {
		text-align: center;
	}
	
	table {
		width: 300px;
		margin: auto;
		text-align: center;
	}
	
</style>
</head>
<script type="text/javascript">
function reload(member_idx, member_type, member_id){
 		
    var member_idCheck = document.getElementById('member_id').value; //비교를 위해 인풋창에 입력한 아이디값 저장
     
    if(member_idCheck==member_id) {
		location.href ="adminMemberDeletePro?member_idx="+member_idx+"&member_id="+member_id+"&member_type="+member_type 
    	alert("아이디가 일치하여 삭제 완료하였습니다.");
    	opener.document.location.reload(); //부모창 업데이트
    	self.close();//자기 팝업창 스스로 닫기
    } else {
    	 alert("아이디를 다시 확인하세요.");	
    	 document.getElementById('member_id').value = null; //아이디 재입력란 초기화
    }
}

function closePopup(){
    self.close();
}

</script>

<body>
	<!-- 게시판 글 삭제 -->
	<h2>회원 삭제</h2>
	<section id="passForm">
		<form action="adminMemberDeletePro" name="deleteForm" method="post">
			<%-- 입력받지 않은 글번호, 페이지번호는 input type="hidden" 속성으로 전달 --%>
			<input type="hidden" name="member_idx" value="${param.member_idx }">
			<input type="hidden" name="member_type" value="${param.member_type }">
			<input type="hidden" name="member_id" value="${param.member_id }">
			<table>
				<tr>
					<td><label>회원 ID 재입력</label></td>
					<td><input type="password" name="member_id" id="member_id" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="삭제" onclick="reload('${param.member_idx }','${param.member_type }', '${param.member_id }' )"> &nbsp;&nbsp;
						<input type="button" value="닫기" onclick="closePopup()">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>