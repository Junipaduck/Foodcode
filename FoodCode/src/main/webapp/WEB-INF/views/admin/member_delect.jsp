<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC �Խ���</title>
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
	<!-- �Խ��� �� ���� -->
	<h2>ȸ�� ����</h2>
	<section id="passForm">
		<form action="adminMemberDeletePro" name="deleteForm" method="post">
			<%-- �Է¹��� ���� �۹�ȣ, ��������ȣ�� input type="hidden" �Ӽ����� ���� --%>
			<input type="hidden" name="member_idx" value="${param.member_idx }">
			<input type="hidden" name="member_type" value="${param.member_type }">
			<table>
				<tr>
					<td><label>ȸ�� ID ���Է�</label></td>
					<td><input type="password" name="member_id" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="����">&nbsp;&nbsp;
						<input type="button" value="���ư���" onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>