<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
				<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>


<script type="text/javascript">


function Mail(member_email) {
	const eamil = member_email; // 이메일 주소값 얻어오기!
	console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
	const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
															
	$.ajax({
		type : 'get',
		url : "mailCheck?email="+eamil, // GET방식
		success : function (data) {
			console.log("데이타 : " +  data);
			checkInput.attr('disabled',false);
			code = data;
			alert('경고 메세지가 전송되었습니다.')
		}	
	}); // end ajax
}
	// 인증번호 비교 
	// blur -> focus가 벗어나는 경우 발생
// 	$('.mail-check-input').keyup(function () {
// 		const inputCode = $(this).val();
// 		const $resultMsg = $('#mail-check-warn');
		
// 		if(inputCode === code){
// 			$resultMsg.html('인증번호가 일치합니다.');
// 			$resultMsg.css('color','green');
// 			$('#mail-Check-Btn').attr('disabled',true);
// 			$('#userEamil1').attr('readonly',true);
// 			$('#userEamil2').attr('readonly',true);
// 			$('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
// 	        $('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
	        
// 	        $('#mail-check-warn').append(
// 	                $(document.createElement('input')).prop({
// 	                    type: 'button',
// 	                    id: 'submit',
// 	                    value: 'Submit',
// 	                    className: 'btn'
// 	                })
// 	            );
	        
// 		}else{
// 			$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
// 			$resultMsg.css('color','red');
// 		}
// 	});

</script>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">식당 관리</h1>
                    <p class="mb-4">신고 누적 경고 및 삭제</p>
					
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" align="center">
                            <h6 class="m-0 font-weight-bold text-primary">식당</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" align ="center"
                                  style="color: black;">
                                    <thead>
                                        <tr>
                                            <th align="center" valign="middle">점주 ID</th>
                                            <th >식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>가게평점</th>
                                            <th>점주 이메일</th>
                                            <th>경고 메세지</th>
                                            <th>식당삭제</th>
                                           
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th align="center" >점주 ID</th>
                                            <th>식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>가게평점</th>
                                             <th>점주 이메일</th>
                                            <th>경고 메세지</th>
                                            <th>식당삭제</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="aList" items="${aList }">
                                    	<tr>
                                            <td>${aList.member_id}</td>
                                            <td>${aList.store_name}</td>
                                            <td>${aList.store_license}</td>
                                            <td align="center">${aList.review_star}</td>
                                            <td align="center">${aList.member_email}</td>
                                            <td align="center">
                                            <a href="#" class="btn btn-warning btn-icon-split">
		                                        <span class="icon text-white-50">
		                                            <i class="fas fa-exclamation-triangle"></i>
		                                        </span>
		                                        <span class="text" msttexthash="359"_msthash="70" onclick="Mail('${aList.member_email}')">경고 메세지&nbsp;<i class="fas fa-envelope fa-fw"></i></span>
		                                    </a>
                                            </td>
                                             <td align="center">
                                            	<a href="adminStore_managementDelete?store_license=${aList.store_license }&owner_id=${aList.member_id}" class="btn btn-danger btn-circle btn-5x">
                                       			<i class="fas fa-trash"></i>
                                   				</a>
                                   			</td>
<!--                                             <td><button value="식당삭제" onclick="window.open('adminStore_managementD', width=30, height=30)"></td> -->
                                        </tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
                
                <%@include file="../includes/footer.jsp" %>

           