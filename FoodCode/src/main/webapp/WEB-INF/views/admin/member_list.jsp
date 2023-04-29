<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@include file="../includes/header.jsp" %>
<script type="text/javascript">
	function DeletePopup(member_idx, member_type, member_id) {
		
		var url = "adminMember_delete?member_idx="+member_idx+"&member_id="+member_id+"&member_type="+member_type
		
		var name = "DeletePopUp";
		
		var option = "width = 500, height = 200, top = 300, left = 200, location = yes"
		
 		window.open(url, name, option);
				
	}
</script>				
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">일반 회원을 조회하는 테이블</h1>
                    <p class="mb-4">이름, ID, 주소... 등 회원의 상세 정보를 출력하며 삭제 버튼을 이용하여 삭제 할 수있습니다. <a target="_blank"
                            href="https://dynamic-alloy-db2.notion.site/687107f26f9040a1ba505c7124a83999?v=8fc1acc75e394c2abafc380ab2011bee">-임시 데이터 베이스 관련 링크(노션 회의록)-</a></p>
					
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">일반 유저 데이터베이스 테이블</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>IDX</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                            <th>성별</th>
                                            <th>이메일</th>
                                            <th>번호</th>
                                            <th>생일</th>
                                            <th>가입일</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                          	<th>IDX</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                            <th>성별</th>
                                            <th>이메일</th>
                                            <th>번호</th>
                                            <th>생일</th>
                                            <th>가입일</th>
                                            <th>삭제</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="memberList" items="${memberList }">
                                    	<tr>
                                            <td>${memberList.member_idx}</td>
                                            <td>${memberList.member_id}</td>
<%--                                             <td><div style="width:100px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${memberList.member_passwd}</div></td> --%>
                                            <td>${memberList.member_name}</td>
                                            <td>${memberList.member_gender}</td>
                                            <td>${memberList.member_email}</td>
                                            <td>${memberList.member_phone}</td>
                                            <td>${memberList.member_birth}</td>
                                            <td>${memberList.member_join_date}</td>
                                            <td align="center">
                                            	<a onclick="DeletePopup('${memberList.member_idx }','${memberList.member_type }', '${memberList.member_id}');" class="btn btn-danger btn-circle">
                                       			<i class="fas fa-user-alt-slash"></i>
                                   				</a>
                                   			</td>
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

           