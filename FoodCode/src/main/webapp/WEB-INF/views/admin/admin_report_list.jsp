<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
				<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">신고 조회</h1>
                    <p class="mb-4">신고가 누적된 식당 리스트</p>
					
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">신고</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>신고 번호</th>
                                            <th>식당명</th>
                                            <th>식당 IDX</th>
                                            <th>신고 내용</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                               <th>신고 번호</th>
                                            <th>식당명</th>
                                            <th>식당 IDX</th>
                                            <th>신고 내용</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="reportList" items="${reportList }">
                                    	<tr>
                                            <td>${reportList.report_idx}</td>
                                            <td>${reportList.store_name}</td>
                                            <td>${reportList.store_idx}</td>
                                            <td>${reportList.report_content}</td>
<!--                                             <td> -->
<%--                                             	<a href="adminCustomer_delect?customer_idx=${customerList.c_idx }" class="btn btn-danger btn-circle btn-lg"> --%>
<!--                                        			<i class="fas fa-trash"></i> -->
<!--                                    				</a> -->
<!--                                    			</td> -->
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

           