<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
				<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">식당 조회하는 테이블</h1>
                    <p class="mb-4">12시 50분 오뭐먹아니이거 왜 업뎃안되냐</p>
					
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">식당</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>점주 ID</th>
                                            <th>식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>가게평점</th>
                                            <th>식당삭제</th>
                                           
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>점주 ID</th>
                                            <th>식당명</th>
                                            <th>사업자등록번호</th>
                                            <th>가게평점</th>
                                            <th>식당삭제</th>

                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="aList" items="${aList }">
                                    	<tr>
                                            <td>${aList.member_id}</td>
                                            <td>${aList.store_name}</td>
                                            <td>${aList.store_license}</td>
                                            <td>${aList.review_star}</td>
                                            <td><button value="식당삭제" onclick="window.open('adminStore_managementD', width=300, height=300)"></td>
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

           