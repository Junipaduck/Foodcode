<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<body>
	<!-- 게시판 글 삭제 -->
	<h2>회원 삭제</h2>
	<section id="passForm">
		<form action="adminMemberDeletePro" name="deleteForm" method="post">
			<%-- 입력받지 않은 글번호, 페이지번호는 input type="hidden" 속성으로 전달 --%>
			<input type="hidden" name="member_idx" value="${param.member_idx }">
			<input type="hidden" name="member_type" value="${param.member_type }">
			<table>
				<tr>
					<td><label>회원 ID 재입력</label></td>
					<td><input type="password" name="member_id" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="삭제">&nbsp;&nbsp;
						<input type="button" value="돌아가기" onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>