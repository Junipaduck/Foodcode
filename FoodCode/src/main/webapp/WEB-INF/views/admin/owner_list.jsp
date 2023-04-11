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
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                       <c:forEach var="ownerList" items="${ownerList }">
                                    	<tr>
                                            <td>${ownerList.owner_idx}</td>
                                            <td>${ownerList.owner_id}</td>
                                            <td>${ownerList.owner_passwd}</td>
                                            <td>${ownerList.owner_name}</td>
                                            <td>${ownerList.owner_phone}</td>
                                            <td>${ownerList.owner_email}</td>
                                            <td>${ownerList.owner_join_date}</td>
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

           