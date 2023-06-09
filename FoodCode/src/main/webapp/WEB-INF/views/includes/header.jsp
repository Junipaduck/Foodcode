<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Itwill 2 Time Admin View</title>

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="${pageContext.request.contextPath }/resources/https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>


<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
			
            <!-- Sidebar - Brand -->
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/">
                    <i class=""></i>
                    <span style="font-size: 11pt">
                    <i class="fas fa-door-open"></i>
<!--                     <i class="fas fa-portal-exit fa-flip-horizontal"></i> -->
                    관리자 페이지 나가기
                    </span></a>
            </li>
           
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
             <a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminMain"> 
                <div class="sidebar-brand-text mx-1" style="font-size: 13pt">관리자페이지 FoodCode</div>
             </a>
             </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
				
            <!-- Heading -->
<!--             <div class="sidebar-heading"> -->
<!--                 Interface -->
<!--             </div> -->

<!--             Nav Item - Pages Collapse Menu -->
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" -->
<!--                     aria-expanded="true" aria-controls="collapseTwo"> -->
<!--                     <i class="fas fa-fw fa-cog"></i> -->
<!--                     <span>설정</span> -->
<!--                 </a> -->
<!--                 <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar"> -->
<!--                     <div class="bg-white py-2 collapse-inner rounded"> -->
<!--                         <h6 class="collapse-header">구성 요소</h6> -->
<!--                         <a class="collapse-item" href="buttons.html">버튼</a> -->
<!--                         <a class="collapse-item" href="cards.html">카드</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </li> -->

<!--             Nav Item - Utilities Collapse Menu -->
<!--             <li class="nav-item"> -->
<!--                 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" -->
<!--                     aria-expanded="true" aria-controls="collapseUtilities"> -->
<!--                     <i class="fas fa-fw fa-wrench"></i> -->
<!--                     <span>유틸리티</span> -->
<!--                 </a> -->
<!--                 <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" -->
<!--                     data-parent="#accordionSidebar"> -->
<!--                     <div class="bg-white py-2 collapse-inner rounded"> -->
<!--                         <h6 class="collapse-header">유틸리티 구성요소</h6> -->
<!--                         <a class="collapse-item" href="utilities-color.html">색상</a> -->
<!--                         <a class="collapse-item" href="utilities-border.html">화면</a> -->
<!--                         <a class="collapse-item" href="utilities-animation.html">애니매이션</a> -->
<!--                         <a class="collapse-item" href="utilities-other.html">그 외...</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </li> -->

            <!-- Divider -->
<!--             <hr class="sidebar-divider"> -->
			
            <!-- Heading -->
            <div class="sidebar-heading">
                Pages
            </div>

			
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/adminMember_list">
                    <i class="fas fa-id-badge"></i>
                    <span style="font-size: 12pt">일반회원 목록 조회</span></a>
            </li>
			
			<li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/adminOwner_list">
                    <i class="fas fa-fw fa-id-card"></i>
                    <span style="font-size: 12pt">점주회원 목록 조회</span></a>
            </li>
            
			<li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/adminStore_list">
                    <i class="fas fa-fw fa-utensils"></i>
                    <span style="font-size: 12pt">식당 조회</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/adminStore_approve">
                    <i class="fas fa-fw fa-check"></i>
                    <span style="font-size: 12pt">식당 승인</span></a>
            </li>
            
			<li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/adminStore_management">
                    <i class="fas fa-fw fa-store"></i>
                    <span style="font-size: 12pt">식당 관리</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/reviewDeletetList">
                    <i class="fas fa-fw fa-clipboard-check"></i>
                    <span style="font-size: 12pt">리뷰 관리</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-desktop"></i>
                    <span style="font-size: 12pt">그 외...</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header" style="color: #ffffff">계정 상태</h6>
                        
                        <c:choose>
						<c:when test="${empty sessionScope.sId }"> <%--비어 있다면--%>
						<a class="collapse-item" href="${pageContext.request.contextPath }/adminLogin.me">로그인</a>
						</c:when>
			 			<c:otherwise> <%-- 디폴트라면 --%>
<%-- 						<a class="collapse-item" href="${pageContext.request.contextPath }/adminLogout.me">로그아웃</a> --%>
						<a class="collapse-item" data-toggle="modal" data-target="#logoutModal">로그아웃</a>
						
						</c:otherwise>
						</c:choose>
                        
                        <div class="collapse-divider"></div>
                        
                        <h6 class="collapse-header" style="color: #ffffff">그 외 페이지</h6>
                        <a class="collapse-item" href="adminNoticeList.no" target="_blank">공지사항</a>
                        <a class="collapse-item" href="reportList" target="_blank">신고내역</a>
                    </div>
                </div>
            </li>
			
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
<!--                         	  <h1 class="h3 mb-0 text-gray-800">관리자 외 접</h1> -->
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts --> 
<!--                         <li class="nav-item dropdown no-arrow mx-1"> -->
<!--                             <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" -->
<!--                                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                                 <i class="fas fa-bell fa-fw"></i> -->
<!--                                 Counter - Alerts -->
<!--                                 <span class="badge badge-danger badge-counter">3+</span> -->
<!--                             </a> -->
<!--                             Dropdown - Alerts -->
<!--                             <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" -->
<!--                                 aria-labelledby="alertsDropdown"> -->
<!--                                 <h6 class="dropdown-header"> -->
<!--                                     알림 상황 -->
<!--                                 </h6> -->
<!--                                 <a class="dropdown-item d-flex align-items-center" href="#"> -->
<!--                                     <div class="mr-3"> -->
<!--                                         <div class="icon-circle bg-primary"> -->
<!--                                             <i class="fas fa-file-alt text-white"></i> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div> -->
<!--                                         <div class="small text-gray-500">12시 50분</div> -->
<!--                                         <span class="font-weight-bold">오늘은 뭐 먹을지 !</span> -->
<!--                                     </div> -->
<!--                                 </a> -->
<!--                             </div> -->
<!--                         </li> -->

                        <!-- Nav Item - Messages -->
<!--                         <li class="nav-item dropdown no-arrow mx-1"> -->
<!--                             <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" -->
<!--                                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                                 <i class="fas fa-envelope fa-fw"></i> -->
<!--                                 Counter - Messages -->
<!--                                 <span class="badge badge-danger badge-counter">7</span> -->
<!--                             </a> -->
<!--                             Dropdown - Messages -->
<!--                             <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" -->
<!--                                 aria-labelledby="messagesDropdown"> -->
<!--                                 <h6 class="dropdown-header"> -->
<!--                                     Message Center -->
<!--                                 </h6> -->
<!--                                 <a class="dropdown-item d-flex align-items-center" href="#"> -->
<!--                                     <div class="dropdown-list-image mr-3"> -->
<!--                                         <img class="rounded-circle" src="/resources/img/undraw_profile_1.svg" -->
<!--                                             alt="..."> -->
<!--                                         <div class="status-indicator bg-success"></div> -->
<!--                                     </div> -->
<!--                                     <div class="font-weight-bold"> -->
<!--                                         <div class="text-truncate">방가방가 우리친구 햄토리</div> -->
<!--                                         <div class="small text-gray-500">월요일 DB시간</div> -->
<!--                                     </div> -->
<!--                                 </a> -->
<!--                             </div> -->
<!--                         </li> -->

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <c:choose>
								<c:when test="${empty sessionScope.sId }"> <%--비어 있다면--%>
									<span class="mr-2 d-none d-lg-inline text-black-900 small">현재 세션 ID : 없음 </span>
								</c:when>
						 		<c:otherwise> <%-- 디폴트라면 --%>
									<span class="mr-2 d-none d-lg-inline text-whit" style="color: #ffffff;">현재 세션 ID : <B>${sessionScope.sId }</B> </span>
								</c:otherwise>
								</c:choose>
 								<i class="fas fa-user-astronaut fa-lg" style="color: #000000;"></i>
<!--                                 <img class="img-profile rounded-circle" -->
<%--                                     src="${pageContext.request.contextPath }/resources/img/undraw_profile.svg"> --%>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
<!--                                 <a class="dropdown-item" href="#"> -->
<!--                                     <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!--                                     Profile -->
<!--                                 </a> -->
<!--                                 <a class="dropdown-item" href="#"> -->
<!--                                     <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!--                                     Settings -->
<!--                                 </a> -->
<!--                                 <a class="dropdown-item" href="#"> -->
<!--                                     <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!--                                     Activity Log -->
<!--                                 </a> -->
<!--                                 <div class="dropdown-divider"></div> -->
                                <c:choose>
								<c:when test="${empty sessionScope.sId }"> <%--비어 있다면--%>
									<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Login
                                    </a>
								</c:when>
						 		<c:otherwise> <%-- 디폴트라면 --%>
									<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                    </a>
								</c:otherwise>
								</c:choose>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->