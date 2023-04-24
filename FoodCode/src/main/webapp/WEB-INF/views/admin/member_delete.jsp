<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
<script type="text/javascript">
function reload(member_idx, member_type, member_id){
 		
    var member_idCheck = document.getElementById('member_id').value; //�񱳸� ���� ��ǲâ�� �Է��� ���̵� ����
     
    if(member_idCheck==member_id) {
		location.href ="adminMemberDeletePro?member_idx="+member_idx+"&member_id="+member_id+"&member_type="+member_type 
    	alert("���̵� ��ġ�Ͽ� ���� �Ϸ��Ͽ����ϴ�.");
    	opener.document.location.reload(); //�θ�â ������Ʈ
    	self.close();//�ڱ� �˾�â ������ �ݱ�
    } else {
    	 alert("���̵� �ٽ� Ȯ���ϼ���.");	
    	 document.getElementById('member_id').value = null; //���̵� ���Է¶� �ʱ�ȭ
    }
}

function closePopup(){
    self.close();
}

</script>

<body>
	<!-- �Խ��� �� ���� -->
	<h2>ȸ�� ����</h2>
	<section id="passForm">
		<form action="adminMemberDeletePro" name="deleteForm" method="post">
			<%-- �Է¹��� ���� �۹�ȣ, ��������ȣ�� input type="hidden" �Ӽ����� ���� --%>
			<input type="hidden" name="member_idx" value="${param.member_idx }">
			<input type="hidden" name="member_type" value="${param.member_type }">
			<input type="hidden" name="member_id" value="${param.member_id }">
			<table>
				<tr>
					<td><label>ȸ�� ID ���Է�</label></td>
					<td><input type="password" name="member_id" id="member_id" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="����" onclick="reload('${param.member_idx }','${param.member_type }', '${param.member_id }' )"> &nbsp;&nbsp;
						<input type="button" value="�ݱ�" onclick="closePopup()">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>