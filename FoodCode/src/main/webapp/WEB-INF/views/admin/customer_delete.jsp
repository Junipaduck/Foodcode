<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
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
		<form action="adminCustomerDeletePro" name="deleteForm" method="post">
			<%-- 입력받지 않은 글번호, 페이지번호는 input type="hidden" 속성으로 전달 --%>
			<input type="hidden" name="customer_idx" value="${param.customer_idx }">
			<table>
				<tr>
					<td><label>회원 비밀번호</label></td>
					<td><input type="password" name="customer_passwd" required="required"></td>
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