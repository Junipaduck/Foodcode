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
<script type="text/javascript">
function reload(owner_id, store_license){
 		
    var store_licenseCheck = document.getElementById('store_licenseCheck').value; //비교를 위해 인풋창에 입력한 아이디값 저장
    
    console.log('받아온 사업자 : ' + store_license);
    console.log('입력한 사업자 : ' + store_licenseCheck);
    
    if(store_licenseCheck==store_license) {
		location.href ="adminStoreManagementDeletePro?store_license="+store_license+"&owner_id="+owner_id
    	alert("사업자번호가 일치하여 삭제 완료하였습니다.");
    	opener.document.location.reload(); //부모창 업데이트
    	self.close();//자기 팝업창 스스로 닫기
    } else {
    	 alert("사업자번호를 다시 확인하세요.");	
    	 document.getElementById('store_licenseCheck').value = null; //사업자 재입력란 초기화
    }
}

function closePopup(){
    self.close();
}

</script>

<body>
	<!-- 식당 삭제 -->
	<h2>식당 삭제</h2>
	<section id="passForm">
		<form action="adminStoreManagementDeletePro" name="deleteForm" method="post">
			<%-- 입력받지 않은 글번호, 페이지번호는 input type="hidden" 속성으로 전달 --%>
			<input type="hidden" name="owner_id" value="${param.owner_id }">
			<input type="hidden" name="store_license" value="${param.store_license }">
			<table>
				<tr>
					<td><label>사업자 번호</label></td>
					<td><input type="text" name="store_licenseCheck" id="store_licenseCheck" required="required"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="삭제" onclick="reload('${param.owner_id }','${param.store_license }');" >&nbsp;&nbsp;
						<input type="button" value="돌아가기" onclick="closePopup()">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>