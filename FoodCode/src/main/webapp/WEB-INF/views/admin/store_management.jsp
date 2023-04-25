<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
				<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>


<script type="text/javascript">


	function Mail(member_email, store_name, store_idx) {
		const eamil = member_email; // 이메일 주소값 얻어오기!
		const storeName = store_name;
		alert(store_idx);
		console.log('완성된 이메일 : ' + eamil + '받는 사람 :' + storeName); // 이메일 오는지 확인
																
		$.ajax({
			type : 'get',
			url : "mailCheck?email="+eamil+"&storeName="+storeName+"&store_idx="+store_idx, // GET방식
			success : function (data) {
				console.log("데이타 : " +  data);
				code = data;
				alert('경고 메세지가 전송되었습니다.')
			}	
		}); // end ajax
	}
	
	
	
	function DeletePopup(store_license, owner_id) {
		
		var url = "adminStore_managementDelete?store_license="+store_license+"&owner_id="+owner_id
		
		var name = "DeletePopUp";
		
		var option = "width = 500, height = 200, top = 300, left = 200, location = yes"
		
			window.open(url, name, option);
				
	}
	
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
                                        <tr align="center">
                                            <th valign="middle">점주 ID</th>
                                            <th>식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>점주 이메일</th>
                                            <th>신고 횟수</th>
                                            <th>경고 메세지</th>
                                            <th>식당삭제</th>
                                           
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr align="center">
                                            <th>점주 ID</th>
                                            <th>식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>점주 이메일</th>
                                            <th>신고 횟수</th>
                                            <th>경고 메세지</th>
                                            <th>식당삭제</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="aList" items="${aList }">
                                    	<tr align="center">
                                            <td>${aList.member_id}</td>
                                            <td>${aList.store_name}</td>
                                            <td>${aList.store_license}</td>
                                            <td align="center">${aList.member_email}</td>
                                            <td>${aList.report_count}</td>
                                            <td align="center">
                                            <a href="#" class="btn btn-warning btn-icon-split">
		                                        <span class="icon text-white-50">
		                                            <i class="fas fa-exclamation-triangle"></i>
		                                        </span>
		                                        <span class="text" msttexthash="359"_msthash="70" onclick="Mail('${aList.member_email}','${aList.store_name}','${aList.store_idx}');">경고 메세지&nbsp;<i class="fas fa-envelope fa-fw"></i></span>
		                                    </a>
                                            </td>
                                             <td align="center">
                                            	<a onclick="DeletePopup('${aList.store_license}','${aList.member_id}');" class="btn btn-danger btn-circle btn-5x">
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

           