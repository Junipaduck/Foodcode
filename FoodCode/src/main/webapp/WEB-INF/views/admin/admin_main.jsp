<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%-- <%@ page session="false" %> --%>

<%@include file="/WEB-INF/views/includes/header.jsp" %>

	
     <!-- Begin Page Content -->
                <div class="container-fluid">
				
                    <!-- Page Heading -->
                    <div class="align-items-center justify-content-between mb-4" align="center">
                        <h1 class="h3 mb-0 text-gray-800">관리자 메인</h1>
<!--                         <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i -->
<!--                                 class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                    	<!-- 신고 수 탑 카드 시작 -->
                        <div class="col-xl-2 col-md-4 mb-2">
                            <div class="card border-left-warning shadow h-80 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                신고 내역 수</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-900">${reportCount }</div>
                                                </div>
                                                <!-- 탑 카드 게이지바 적용 style="width = ? " 넘겨주기 -->
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-warning" role="progressbar"
                                                            style="width: ${reportCount }%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                          <i class="fas fa-head-side-cough fa-2x text-gray-600"></i>
<!--                                           <i class="fab fa-weixin fa-2x text-gray-600"></i> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <!-- 신고 수 탑 카드 끝 -->
                    
                    
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-2 col-md-4 mb-2">
                            <div class="card border-left-primary shadow h-80 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                현재 식당 수</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-900">${storeCount}</div>
                                                </div>
                                                <!-- 탑 카드 게이지바 적용 style="width = ? " 넘겨주기 -->
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                            style="width: ${storeCount}%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                        	<i class="fas fa-store fa-2x text-gray-600"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 일반 회원 수 탑 카드 시작 -->
                        <div class="col-xl-2 col-md-4 mb-2">
                            <div class="card border-left-success shadow h-80 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                일반 회원 수</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-900">${memberCount }</div>
                                                </div>
                                                <!-- 탑 카드 게이지바 적용 style="width = ? " 넘겨주기 -->
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                            style="width: ${memberCount }%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                           <i class="fas fa-user fa-2x text-gray-600"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						 <!-- 일반 회원 수 탑 카드 끝 -->

                        <!-- 점주 회원 수 탑 카드 시작 -->
                        <div class="col-xl-2 col-md-4 mb-2">
                            <div class="card border-left-info shadow h-80 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                            점주 회원 수</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-900">${ownerCount }</div>
                                                </div>
                                                <!-- 탑 카드 게이지바 적용 style="width = ? " 넘겨주기 -->
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: ${ownerCount }%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                           <i class="fas fa-user-tie fa-2x text-gray-600"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<!-- 점주 회원 수 탑 카드 끝 -->
                        
                         <div class="col-xl-2 col-md-4 mb-3">
                            <div class="card border-left-danger shadow h-80 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                공지사항</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-900">${noticeCount}</div>
                                                </div>
                                                <!-- 탑 카드 게이지바 적용 style="width = ? " 넘겨주기 -->
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-danger" role="progressbar"
                                                            style="width: ${noticeCount}%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                        	<i class="fas fa-bullhorn fa-2x text-gray-600"></i>
<!--                                         	<i class="fas fa-lightbulb fa-2x text-gray-600"></i> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-xl-2 col-md-4 mb-3">
                            <div class="card border-left-dark shadow h-80 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                                                리뷰 삭제 요청</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-900">${reviewCount}</div>
                                                </div>
                                                <!-- 탑 카드 게이지바 적용 style="width = ? " 넘겨주기 -->
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-dark" role="progressbar"
                                                            style="width: ${reviewCount}%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                        	<i class="fas fa-pray fa-2x text-gray-600"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
					</div>
				<!-- 상단 최대값 카드 끝 -->
					
                  
					 <!--메인 최근 리스트 각 뷰 시작 -->
               		<div class="row">
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card border-left-warning shadow h-100 py-2" align="center">
                                    <h6 class="m-0 font-weight-bold text-warning">최근 신고 리스트</h6>
                                </div>
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="text-center">
                                      <table class="table table-bordered">
										  	<tr style="color: black;">
										  		<th>신고 번호</th>
										  		<th>신고 내용</th>
										  		<th>해당 식당 이름</th>
										  		<th>식당 IDX</th>
										  	</tr>
										  <c:forEach var="reportList" items="${reportList }" begin="0" end="4" step="1">
										  	<tr>
										  		<td>${reportList.report_idx }</td>
										  		<td>${reportList.report_content }</td>
										  		<td>${reportList.store_name }</td>
										  		<td>${reportList.store_idx }</td>
										  	</tr>
										  </c:forEach>
									  </table>
                                    </div>
                                    <div align="right">
                                    	<a target="_blank" href="reportList">신고 리스트 바로가기</a> &rarr; &nbsp;
                                   </div>
                                </div>
                            </div>
                           </div>
 							<!--신고 리스트 끝 -->

                            <!-- 식당 리스트 시작 -->
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card border-left-primary shadow h-100 py-2" align="center">
                                    <h6 class="m-0 font-weight-bold text-primary">최근 식당 등록목록</h6>
                                </div>
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="text-center">
                                       <table class="table table-bordered">
										  	<tr style="color: black;">
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
										  		<td>${storeList.store_open } ~ ${storeList.store_close }</td>
										  	</tr>
										  </c:forEach>
									  </table>
                                    </div>
                                   <div align="right">
                                    	<a target="_blank" href="adminStore_list">식당 리스트 바로가기</a> &rarr; &nbsp;
                                   </div>
                                </div>
                              </div>
                           </div>
                        </div>
                         <!-- 식당 리스트 끝 -->
                        
                         <!-- 일반 회원 리스트 시작 -->
                        <div class="row">
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card border-left-success shadow h-100 py-2" align="center">
                                    <h6 class="m-0 font-weight-bold text-success">최근 일반회원 가입 목록</h6>
                                </div>
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="text-center">
                                        <table class="table table-bordered">
										  	<tr style="color: black;">
										  		<th>일반회원 번호</th>
										  		<th>일반회원 아이디</th>
										  		<th>일반회원 이름</th>
										  	</tr>
										  <c:forEach var="memberList" items="${memberList }" begin="0" end="4" step="1">
										  	<tr>
										  		<td>${memberList.member_idx }</td>
										  		<td>${memberList.member_id }</td>
										  		<td>${memberList.member_name }</td>
										  	</tr>
										  </c:forEach>
									  </table>
                                    </div>
                                    <div align="right">
                                    	<a target="_blank" href="adminMember_list">일반회원 리스트 바로가기</a> &rarr; &nbsp;
                                   </div>
                                </div>
                            </div>
                           </div>
                            <!-- 일반 회원 리스트 끝 -->
                            
                            <!-- 점주 회원 리스트 시작 -->
                          <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card border-left-info shadow h-100 py-2" align="center">
                                    <h6 class="m-0 font-weight-bold text-info">최근 점주회원 가입 목록</h6>
                                </div>
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="text-center">
                                    	<table class="table table-bordered">
										  	<tr style="color: black;">
										  		<th>점주회원 번호</th>
										  		<th>점주회원 아이디</th>
										  		<th>점주회원 이름</th>
										  	</tr>
										  <c:forEach var="ownerList" items="${ownerList }" begin="0" end="4" step="1" >
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
                                    	<a target="_blank" href="adminOwner_list">점주회원 리스트 바로가기</a> &rarr; &nbsp;
                                   </div>
                                </div>
                              </div>
                           </div>
                        </div>
                 		 <!-- 점주 회원 리스트 끝 -->
                            
                            
                          <!-- 공지사항 리스트 시작 (카드 접이식) -->
                          <div class="card shadow mb-4" align="center">
                              <!-- Card Header - Accordion -->
                              <div class="card border-left-danger shadow h-100 py-2" align="center">
                              <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                                  role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                  <h6 class="m-0 font-weight-bold text-danger">최근 공지사항</h6>
                              </a>
                              <div class="collapse" id="collapseCardExample">
                                  <div class="card-body">
                                     <table class="table table-bordered">
										  	<tr style="color: black;" align="center">
										  		<th>공지사항 번호</th>
										  		<th>공지사항 제목</th>
										  		<th>공지사항 내용</th>
										  		<th>공지사항 작성일</th>
										  	</tr>
										  <c:forEach var="notice" items="${noticeList }" begin="0" end="4" step="1" >
										  	<tr align="center">
										  		<td>${notice.notice_idx }</td>
										  		<td><div style="width:100px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${notice.notice_title }</div></td>
										  		<td><div style= "width:1000px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${notice.notice_content }</div></td>
										  		<td><fmt:formatDate value="${notice.notice_date }" pattern="yyyy년 MM월 dd일" /></td>
										  	</tr>
										  </c:forEach>
									  </table>
                                  </div>
                                   <div align="right">
                                    	<a target="_blank" href="adminNoticeList.no">메인 공지사항 바로가기</a> &rarr; &nbsp;
                                   </div>
                              </div>
                          	</div>
                          </div>
                          
                         <!-- 공지사항 리스트 끝 (카드 접이식) -->    
                         
                         <div class="card shadow mb-4" align="center">
                              <!-- Card Header - Accordion -->
                              <div class="card border-left-dark shadow h-100 py-2" align="center">
                              <a href="#collapseCardExample2" class="d-block card-header py-3" data-toggle="collapse"
                                  role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                  <h6 class="m-0 font-weight-bold text-dark">리뷰 삭제 요청</h6>
                              </a>
                              <div class="collapse" id="collapseCardExample2">
                                  <div class="card-body">
                                     <table class="table table-bordered">
										  	<tr style="color: black;" align="center">
											  	<th>리뷰 번호</th>
	                                            <th>식당명</th>
	                                            <th>리뷰 내용</th>
	                                            <th>리뷰 평점</th>
	                                            <th>작성자</th>
	                                            <th>리뷰 사진</th>
										  	</tr>
										  <c:forEach var="reviewList" items="${reviewList }" begin="0" end="4" step="1" >
										  	<tr align="center">
										  		<td>${reviewList.review_idx }</td>
										  		<td><div style="width:200px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${reviewList.store_name }</div></td>
										  		<td><div style= "width:500px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${reviewList.review_content }</div></td>
										  		<td>${reviewList.review_star}</td>
										  		<td>${reviewList.member_id }</td>
										  		<td align="center">
								                <c:set var="length" value="${fn:length(reviewList.review_file) }"/>
												<c:set var="index" value="${fn:indexOf(reviewList.review_file, '_') }"/>
												<c:set var="fileName" value="${fn:substring(reviewList.review_file, index + 1, length) }"/>
												<img alt="등록된 사진이 없습니다." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 50px;width: 50px;">
                                            </td>
										  	</tr>
										  </c:forEach>
									  </table>
                                  </div>
                                   <div align="right">
                                    	<a target="_blank" href="reviewDeletetList">리뷰 삭제 요청 바로가기</a> &rarr; &nbsp;
                                   </div>
                              </div>
                          	</div>
                          </div>
                          
                     </div>
                       	
                    
                <!-- /.container-fluid -->
            <!-- End of Main Content -->
	
	<%@include file="/WEB-INF/views/includes/footer.jsp" %>

   
