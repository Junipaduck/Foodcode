<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->

<script type="text/javascript">
function Approve(store_license) {
	
	if(confirm("승인 하시겠습니까?")) {
		alert("승인 성공");
		location.href = "adminStoreManagementApprovePro?store_license="+store_license
		return true;
	} else {
		alert("승인 실패");
		return false;
	}
}
</script>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">식당 승인</h1>
                    <p class="mb-4">식당 승인 페이지</p>
					
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" align="center">
                            <h6 class="m-0 font-weight-bold text-primary">승인 관리</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" align ="center"
                                  style="color: black;">
                                    <thead>
                                        <tr align="center">
                                            <th>점주 ID</th>
                                            <th>식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>식당 종류</th>
                                            <th>신청일</th>
                                            <th>식당 승인 상태</th>
                                            <th>식당 승인</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr align="center">
                                            <th>점주 ID</th>
                                            <th>식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>식당 종류</th>
                                            <th>신청일</th>
                                            <th align="center">식당 승인 상태</th>
                                            <th align="center">식당 승인</th>
                                        </tr>
                                    </tfoot>
                                    <tbody align="center">
                                    	<c:forEach var="aList" items="${aList }">
                                    	<tr>
                                            <td>${aList.member_id}</td>
                                            <td>${aList.store_name}</td>
                                            <td>${aList.store_license}</td>
                                            <td>${aList.store_type}</td>
                                            <td>${aList.store_date }</td>
                                            <td align="center">${aList.auth_status}</td>
                                            <td align="center">
                                            	<a onclick="Approve('${aList.store_license }');" class="btn btn-success btn-icon-split">
                                        		<span class="icon text-white-50">
                                           			 <i class="fas fa-user-check"></i>
                                        		</span>
                                      		  	<span class="text">승인</span>
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

           