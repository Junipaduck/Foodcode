<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ page session="false" %> --%>

<%@include file="/WEB-INF/views/includes/header.jsp" %>

	
     <!-- Begin Page Content -->
                <div class="container-fluid">
				
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">메인 화면 </h1>
<!--                         <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i -->
<!--                                 class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                현재 식당 수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"> 4 </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

<!--                         Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                일반 회원 수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">30</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                            점주 회원 수
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">15</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
					
                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                신고 내역 수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">8</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
					</div>
                    <!-- Content Row -->
<!--                     <div class="row"> -->
<!--                         Area Chart -->
<!--                         <div class="col-xl-8 col-lg-7"> -->
<!--                             <div class="card shadow mb-4"> -->
<!--                                 Card Header - Dropdown -->
<!--                                 <div -->
<!--                                     class="card-header py-3 d-flex flex-row align-items-center justify-content-between"> -->
<!--                                     <h6 class="m-0 font-weight-bold text-primary">Earnings Overview</h6> -->
<!--                                     <div class="dropdown no-arrow"> -->
<!--                                         <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" -->
<!--                                             data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                                             <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
<!--                                         </a> -->
<!--                                         <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" -->
<!--                                             aria-labelledby="dropdownMenuLink"> -->
<!--                                             <div class="dropdown-header">Dropdown Header:</div> -->
<!--                                             <a class="dropdown-item" href="#">Action</a> -->
<!--                                             <a class="dropdown-item" href="#">Another action</a> -->
<!--                                             <div class="dropdown-divider"></div> -->
<!--                                             <a class="dropdown-item" href="#">Something else here</a> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Card Body -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="chart-area"> -->
<%--                                         <canvas id="myAreaChart"></canvas> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->

                        <!-- Pie Chart -->
<!--                         <div class="col-xl-4 col-lg-5"> -->
<!--                             <div class="card shadow mb-4"> -->
<!--                                 Card Header - Dropdown -->
<!--                                 <div -->
<!--                                     class="card-header py-3 d-flex flex-row align-items-center justify-content-between"> -->
<!--                                     <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6> -->
<!--                                     <div class="dropdown no-arrow"> -->
<!--                                         <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" -->
<!--                                             data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                                             <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
<!--                                         </a> -->
<!--                                         <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" -->
<!--                                             aria-labelledby="dropdownMenuLink"> -->
<!--                                             <div class="dropdown-header">Dropdown Header:</div> -->
<!--                                             <a class="dropdown-item" href="#">Action</a> -->
<!--                                             <a class="dropdown-item" href="#">Another action</a> -->
<!--                                             <div class="dropdown-divider"></div> -->
<!--                                             <a class="dropdown-item" href="#">Something else here</a> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Card Body -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="chart-pie pt-4 pb-2"> -->
<%--                                         <canvas id="myPieChart"></canvas> --%>
<!--                                     </div> -->
<!--                                     <div class="mt-4 text-center small"> -->
<!--                                         <span class="mr-2"> -->
<!--                                             <i class="fas fa-circle text-primary"></i> Direct -->
<!--                                         </span> -->
<!--                                         <span class="mr-2"> -->
<!--                                             <i class="fas fa-circle text-success"></i> Social -->
<!--                                         </span> -->
<!--                                         <span class="mr-2"> -->
<!--                                             <i class="fas fa-circle text-info"></i> Referral -->
<!--                                         </span> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->

                    <!-- Content Row -->
<!--                     <div class="row"> -->

<!--                         Content Column -->
<!--                         <div class="col-lg-6 mb-4"> -->

<!--                             Project Card Example -->
<!--                             <div class="card shadow mb-4"> -->
<!--                                 <div class="card-header py-3"> -->
<!--                                     <h6 class="m-0 font-weight-bold text-primary">Projects</h6> -->
<!--                                 </div> -->
<!--                                 <div class="card-body"> -->
<!--                                     <h4 class="small font-weight-bold">Server Migration <span -->
<!--                                             class="float-right">20%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" -->
<!--                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Sales Tracking <span -->
<!--                                             class="float-right">40%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" -->
<!--                                             aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Customer Database <span -->
<!--                                             class="float-right">60%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar" role="progressbar" style="width: 60%" -->
<!--                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Payout Details <span -->
<!--                                             class="float-right">80%</span></h4> -->
<!--                                     <div class="progress mb-4"> -->
<!--                                         <div class="progress-bar bg-info" role="progressbar" style="width: 80%" -->
<!--                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                     <h4 class="small font-weight-bold">Account Setup <span -->
<!--                                             class="float-right">Complete!</span></h4> -->
<!--                                     <div class="progress"> -->
<!--                                         <div class="progress-bar bg-success" role="progressbar" style="width: 100%" -->
<!--                                             aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->

                            <!-- Color System -->
               		<div class="row">
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3" align="center">
                                    <h6 class="m-0 font-weight-bold text-primary">공지사항</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                      <table class="table table-bordered">
										  	<tr>
										  		<th>번호</th>
										  		<th>아이디</th>
										  		<th>이름</th>
										  	</tr>
										  <c:forEach var="memberList" items="${memberList }">
										  	<tr>
										  		<td>${memberList.member_idx }</td>
										  		<td>${memberList.member_id }</td>
										  		<td>${memberList.member_name }</td>
										  	</tr>
										  </c:forEach>
									  </table>
                                    </div>
                                    <div align="right">
                                    	<a target="_blank" href="notice_list.no">공지사항 리스트 바로가기 &rarr;</a>
                                   </div>
                                </div>
                            </div>
                           </div>
                            <!-- Approach -->
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3" align="center">
                                    <h6 class="m-0 font-weight-bold text-primary">식당 목록</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                       <table class="table table-bordered">
										  	<tr>
										  		<th>식당 번호</th>
										  		<th>식당 이름</th>
										  		<th>식당 종류</th>
										  		<th>식당 시간</th>
										  	</tr>
										  <c:forEach var="storeList" items="${storeList }" begin="0" end="4" step="1">
										  	<tr>
										  		<td>${storeList.store_idx }</td>
										  		<td>${storeList.store_name }</td>
										  		<td>${storeList.store_type }</td>
										  		<td>${storeList.store_time }</td>
										  	</tr>
										  </c:forEach>
									  </table>
                                    </div>
                                   <div align="right">
                                    	<a target="_blank" href="adminStore_list">식당 리스트 바로가기 &rarr;</a>
                                   </div>
                                </div>
                              </div>
                           </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3" align="center">
                                    <h6 class="m-0 font-weight-bold text-primary">일반회원 목록</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                        <table class="table table-bordered">
										  	<tr>
										  		<th>일반회원 번호</th>
										  		<th>일반회원 아이디</th>
										  		<th>일반회원 이름</th>
										  	</tr>
										  <c:forEach var="memberList" items="${memberList }">
										  	<tr>
										  		<td>${memberList.member_idx }</td>
										  		<td>${memberList.member_id }</td>
										  		<td>${memberList.member_name }</td>
										  	</tr>
										  </c:forEach>
									  </table>
                                    </div>
                                    <div align="right">
                                    	<a target="_blank" href="adminCustomer_list">일반회원 리스트 바로가기 &rarr;</a>
                                   </div>
                                </div>
                            </div>
                           </div>
                            <!-- Approach -->
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3" align="center">
                                    <h6 class="m-0 font-weight-bold text-primary">점주회원 목록</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                    	<table class="table table-bordered">
										  	<tr>
										  		<th>점주회원 번호</th>
										  		<th>점주회원 아이디</th>
										  		<th>점주회원 이름</th>
										  	</tr>
										  <c:forEach var="ownerList" items="${ownerList }">
										  	<tr>
										  		<td>${ownerList.member_idx }</td>
										  		<td>${ownerList.member_id }</td>
										  		<td>${ownerList.member_name }</td>
										  	</tr>
										  </c:forEach>
									  </table>
                                    
<!--                                         <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" -->
<%--                                             src="${pageContext.request.contextPath }/resources/img/undraw_posting_photo.svg" alt="..."> --%>
                                    </div>
                                    <div align="right">
                                    	<a target="_blank" href="adminOwner_list">점주회원 리스트 바로가기 &rarr;</a>
                                   </div>
                                </div>
                              </div>
                           </div>
                        </div>
                 
                 
                  </div>
                    
                    
                <!-- /.container-fluid -->
            <!-- End of Main Content -->
	
	<%@include file="/WEB-INF/views/includes/footer.jsp" %>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath }/resources/vendor/chart.js/Chart.min.js"></script>
	
    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath }/resources/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/demo/chart-pie-demo.js"></script>













