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
	<!-- 식당 삭제 -->
	<h2>식당 삭제</h2>
	<section id="passForm">
		<form action="adminStoreManagementDeletePro" name="deleteForm" method="post">
			<%-- 입력받지 않은 글번호, 페이지번호는 input type="hidden" 속성으로 전달 --%>
			<input type="hidden" name="owner_id" value="${param.owner_id }">
			<table>
				<tr>
					<td><label>사업자 번호</label></td>
					<td><input type="text" name="store_license" required="required"></td>
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