<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
				<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">식당 조회하는 테이블</h1>
                    <p class="mb-4">12시 50분 오뭐먹</p>
					
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
                                            <th>식당 IDX</th>
                                            <th>식당명</th>
                                            <th>식당 번호</th>
                                            <th>식당 주소</th>
                                            <th>분류</th>
                                            <th>영업 시간</th>
                                            <th>사업자등록 번호</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>식당 IDX</th>
                                            <th>식당명</th>
                                            <th>식당 번호</th>
                                            <th>식당 주소</th>
                                            <th>분류</th>
                                            <th>영업 시간</th>
                                            <th>사업자등록 번호</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="storeList" items="${storeList }">
                                    	<tr>
                                            <td>${storeList.store_idx}</td>
                                            <td>
                                            <a href=>${storeList.store_name}</a>
                                            </td>
                                            <td>${storeList.store_phone}</td>
                                            <td>${storeList.store_address}</td>
                                            <td>${storeList.store_type}</td>
                                            <td>${storeList.store_time}</td>
                                            <td>${storeList.store_license}</td>
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

           