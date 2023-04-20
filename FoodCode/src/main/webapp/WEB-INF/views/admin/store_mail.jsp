<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>����</title>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
</head>
<body>
<script type="text/javascript">

$(function() {
	$('#mail-Check-Btn').click(function() {
		const eamil = $('#userEmail1').val() + $('#userEmail2').val(); // �̸��� �ּҰ� ������!
		console.log('�ϼ��� �̸��� : ' + eamil); // �̸��� ������ Ȯ��
		const checkInput = $('.mail-check-input') // ������ȣ �Է��ϴ°� 
																
		$.ajax({
			type : 'get',
			url : "mailCheck?email="+eamil, // GET���
			success : function (data) {
				console.log("����Ÿ : " +  data);
				checkInput.attr('disabled',false);
				code = data;
				alert('������ȣ�� ���۵Ǿ����ϴ�.')
			}		
		}); // end ajax
	}); // end send eamil
});

</script>

	<div class="form-group email-form">
		 <label for="email">�̸���</label>
		 <div class="input-group">
		<input type="text" class="form-control" name="userEmail1" id="userEmail1" placeholder="�̸���" >
		<select class="form-control" name="userEmail2" id="userEmail2" >
		<option>@naver.com</option>
		<option>@daum.net</option>
		<option>@gmail.com</option>
		<option>@hanmail.com</option>
		 <option>@yahoo.co.kr</option>
		</select>
		</div>   
	<div class="input-group-addon">
		<button type="button" class="btn btn-primary" id="mail-Check-Btn">��������</button>
	</div>
		<div class="mail-check-box">
	<input class="form-control mail-check-input" placeholder="������ȣ 6�ڸ��� �Է����ּ���!" disabled="disabled" maxlength="6">
	</div>
		<span id="mail-check-warn"></span>
	</div>
</body>
</html>