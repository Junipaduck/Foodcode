<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

				<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">점주 조회 페이지</h1>
                    <p class="mb-4">점주 상세 정보를 출력하며 삭제 버튼을 이용하여 삭제 할 수있습니다. <a target="_blank"
                            href="https://drive.google.com/drive/folders/1LBM2HqUweQIpO8KZmK6BHsW6OI9pbt4N">-2팀 공유 드라이브 링크(Google 2Time Dirve)-</a></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">점주 테이블</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                       		<th>점주 IDX</th>
                                            <th>점주 ID</th>
                                            <th>점주 비밀번호</th>
                                            <th>점주 이름</th>
                                            <th>점주 번호</th>
                                            <th>점주 이메일</th>
                                            <th>점주 가입일</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                      <tr>
                                       		<th>점주 IDX</th>
                                            <th>점주 ID</th>
                                            <th>점주 비밀번호</th>
                                            <th>점주 이름</th>
                                            <th>점주 번호</th>
                                            <th>점주 이메일</th>
                                            <th>점주 가입일</th>
                                            <th>삭제</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                       <c:forEach var="ownerList" items="${ownerList }">
                                    	<tr>
                                            <td>${ownerList.member_idx}</td>
                                            <td>${ownerList.member_id}</td>
                                            <td><div style="width:150px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${ownerList.member_passwd}</div></td>
                                            <td>${ownerList.member_name}</td>
                                            <td>${ownerList.member_phone}</td>
                                            <td>${ownerList.member_email}</td>
                                            <td>${ownerList.member_join_date}</td>
                                             <td align="center">
                                            	<a href="adminMember_delete?member_idx=${ownerList.member_idx }&member_type=${ownerList.member_type}" class="btn btn-danger btn-circle">
                                       			<i class="fas fa-trash"></i>
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

           