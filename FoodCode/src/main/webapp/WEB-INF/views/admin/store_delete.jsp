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
	<!-- �Ĵ� ���� -->
	<h2>�Ĵ� ����</h2>
	<section id="passForm">
		<form action="adminStoreManagementDeletePro" name="deleteForm" method="post">
			<%-- �Է¹��� ���� �۹�ȣ, ��������ȣ�� input type="hidden" �Ӽ����� ���� --%>
			<input type="hidden" name="owner_id" value="${param.owner_id }">
			<table>
				<tr>
					<td><label>����� ��ȣ</label></td>
					<td><input type="text" name="store_license" required="required"></td>
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