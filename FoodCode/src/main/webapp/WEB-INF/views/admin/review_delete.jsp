<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@include file="../includes/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
                <!-- Begin Page Content -->

<script type="text/javascript">
function DeleteReview(review_idx) {
	
	if(confirm("삭제 하시겠습니까?")) {
		alert("삭제 성공");
		location.href = "reviewDeletetListPro?review_idx="+review_idx
		return true;
	} else {
		alert("삭제 실패");
		return false;
	}
}
</script>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">리뷰 삭제 요청</h1>
                    <p class="mb-4">리뷰 삭제 페이지</p>
					
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" align="center">
                            <h6 class="m-0 font-weight-bold text-primary">리뷰 관리</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" align ="center"
                                  style="color: black;">
                                    <thead>
                                        <tr align="center">
                                            <th>리뷰 번호</th>
                                            <th>식당명</th>
                                            <th>리뷰 내용</th>
                                            <th>리뷰 평점</th>
                                            <th>작성자</th>
                                            <th>리뷰 사진</th>
                                            <th>리뷰 삭제 사유</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr align="center">
                                            <th>리뷰 번호</th>
                                            <th>식당명</th>
                                            <th>리뷰 내용</th>
                                            <th>리뷰 평점</th>
                                            <th>작성자</th>
                                            <th>리뷰 사진</th>
                                            <th>리뷰 삭제 사유</th>
                                            <th>삭제</th>
                                        </tr>
                                    </tfoot>
                                    <tbody align="center">
                                    	<c:forEach var="reviewList" items="${reviewList }">
                                    	<tr>
                                            <td>${reviewList.review_idx}</td>
                                            <td>${reviewList.store_name}</td>
                                            <td>${reviewList.review_content}</td>
                                            <td>${reviewList.review_star}</td>
                                            <td>${reviewList.member_id }</td>
                                            <td align="center">
								                <c:set var="length" value="${fn:length(reviewList.review_file) }"/>
												<c:set var="index" value="${fn:indexOf(reviewList.review_file, '_') }"/>
												<c:set var="fileName" value="${fn:substring(reviewList.review_file, index + 1, length) }"/>
												<img alt="등록된 사진이 없습니다." src="${pageContext.request.contextPath }/resources/upload/${fileName}" style="height: 50px;width: 50px;">
                                            </td>
                                            <td>${reviewList.review_report }</td>
                                            <td align="center">
                                            	<a onclick="DeleteReview('${reviewList.review_idx }');" class="btn btn-danger btn-circle"">
                                           			 <i class="fas fa-comment-slash"></i>
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

           