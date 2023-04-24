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
<script type="text/javascript">
function reload(owner_id, store_license){
 		
    var store_licenseCheck = document.getElementById('store_licenseCheck').value; //�񱳸� ���� ��ǲâ�� �Է��� ���̵� ����
    
    console.log('�޾ƿ� ����� : ' + store_license);
    console.log('�Է��� ����� : ' + store_licenseCheck);
    
    if(store_licenseCheck==store_license) {
		location.href ="adminStoreManagementDeletePro?store_license="+store_license+"&owner_id="+owner_id
    	alert("����ڹ�ȣ�� ��ġ�Ͽ� ���� �Ϸ��Ͽ����ϴ�.");
    	opener.document.location.reload(); //�θ�â ������Ʈ
    	self.close();//�ڱ� �˾�â ������ �ݱ�
    } else {
    	 alert("����ڹ�ȣ�� �ٽ� Ȯ���ϼ���.");	
    	 document.getElementById('store_licenseCheck').value = null; //����� ���Է¶� �ʱ�ȭ
    }
}

function closePopup(){
    self.close();
}

</script>

<body>
	<!-- �Ĵ� ���� -->
	<h2>�Ĵ� ����</h2>
	<section id="passForm">
		<form action="adminStoreManagementDeletePro" name="deleteForm" method="post">
			<%-- �Է¹��� ���� �۹�ȣ, ��������ȣ�� input type="hidden" �Ӽ����� ���� --%>
			<input type="hidden" name="owner_id" value="${param.owner_id }">
			<input type="hidden" name="store_license" value="${param.store_license }">
			<table>
				<tr>
					<td><label>����� ��ȣ</label></td>
					<td><input type="text" name="store_licenseCheck" id="store_licenseCheck" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="����" onclick="reload('${param.owner_id }','${param.store_license }');" >&nbsp;&nbsp;
						<input type="button" value="���ư���" onclick="closePopup()">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>