<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
				<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->

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
                                            <td align="center">
                                            <a href="#" class="btn btn-warning btn-icon-split">
		                                        <span class="icon text-white-50">
		                                            <i class="fas fa-exclamation-triangle"></i>
		                                        </span>
		                                        <span class="text" msttexthash="359"_msthash="70">경고 메세지&nbsp;<i class="fas fa-envelope fa-fw"></i></span>
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

           