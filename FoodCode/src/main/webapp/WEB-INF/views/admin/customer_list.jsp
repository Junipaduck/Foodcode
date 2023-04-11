<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
				<%@include file="../includes/header.jsp" %>
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
                                            <td>비밀번호</td>
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
                                            <th>비밀번호</th>
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
                                    	<c:forEach var="customerList" items="${customerList }">
                                    	<tr>
                                            <td>${customerList.c_idx}</td>
                                            <td>
                                            <a href=>${customerList.c_id}</a>
                                            </td>
                                            <td>${customerList.c_passwd}</td>
                                            <td>${customerList.c_name}</td>
                                            <td>${customerList.c_gender}</td>
                                            <td>${customerList.c_email}</td>
                                            <td>${customerList.c_phone}</td>
                                            <td>${customerList.c_birth}</td>
                                            <td>${customerList.c_join_date}</td>
                                            <td>
                                            	<a href="adminCustomer_delect?customer_idx=${customerList.c_idx }" class="btn btn-danger btn-circle btn-lg">
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

           