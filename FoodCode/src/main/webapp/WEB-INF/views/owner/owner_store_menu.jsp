<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="shortcut icon" href="../favicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/daterangepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<!-- 테이블 관련 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store_menu_table.css">
<!-- 테이블 관련 -->

<!-- 부트스트랩 css 링크 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 

<!-- 아래 4줄 : 상단 탭css 관련 링크 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store_recommend_style.css" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>


<script>
// 테이블 체크박스 부분 + 아이콘 툴팁 스크립트
$(document).ready(function(){
	// 아이콘 툴팁 출력
	$('[data-toggle="tooltip"]').tooltip();
	
	// 체크박스 전체 체크,해제
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});

// 행 추가
function add_tr(menu_table) {
    let table_body = document.getElementById(menu_table);
    let first_tr   = table_body.firstElementChild;
    let tr_clone   = first_tr.cloneNode(true);//*1)복제된 node 반환

    table_body.append(tr_clone);
    clean_first_tr(table_body.firstElementChild);
}

function clean_first_tr(firstTr) {//값 초기화
    let children = firstTr.children;//*2) 자식 요소가 포함된 HTMLCollection을 반환
    
    children = Array.isArray(children) ? children : Object.values(children);//*3)
    children.forEach(x=>{
        if(x !== firstTr.lastElementChild){//마지막child가 아닐때
            x.firstElementChild.value = '';//td의 첫번째 child > input값 초기화
        }
    });
}

var menu_idx ="";
var store_idx ="";
$(document).ready(function() {     
    $('#editEmployeeModal').on('show.bs.modal', function(event) {          
        menu_idx = $(event.relatedTarget).data('menu_idx');
        store_idx = $(event.relatedTarget).data('store_idx');
        $("#menu_idx").val(menu_idx);
        $("#store_idx").val(store_idx);
    });
    
    $('#deleteEmployeeModal').on('show.bs.modal', function(event) {          
        menu_idx = $(event.relatedTarget).data('menu_idx');
        store_idx = $(event.relatedTarget).data('store_idx');
        $("#menu_idxD").val(menu_idx);
        $("#store_idxD").val(store_idx);
    });
});

// 행 삭제
function remove_tr(This) {//행 삭제
    //*4)closet:현재 엘리멘트에서 가장 가까운 조상을 반환
    if(This.closest('tbody').childElementCount == 1)
    {
        alert("삭제할 수 없습니다.");
    }else{
        This.closest('tr').remove();//삭제
    }
}

//입력값 가져오기
// var menuTextName = document.getElementById('menu_name').value;

</script>
<title>가게 메뉴 등록 페이지</title>
</head>
<body>

<header>
	<jsp:include page="../inc/top2.jsp"></jsp:include>
</header>


<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2><b>메뉴 등록</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal" ><i class="material-icons">&#xE147;</i> <span>메뉴 추가하기</span></a>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover" id="menu_table">
				<thead>
					<tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>메뉴 이름1</th>
						<th>메뉴 종류</th>
						<th>가격</th>
						<th>메뉴 사진</th>
						<th>설명</th>
						<th></th>
					</tr>
				</thead>
				<tbody id="table_body">
				<c:forEach items="${menuList }" var="menu" >
					<tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<input type="hidden" value="${menu.menu_idx }" name="menu_idx">
						<th>${menu.menu_name }</th>
						<th>${menu.menu_type }</th>
						<th>${menu.menu_price }</th>
						<th>${menu.menu_image }</th>
						<th>${menu.menu_content }</th>
						<th><a href="#editEmployeeModal" class="btn btn-success" data-toggle="modal" data-menu_idx="${menu.menu_idx }" data-store_idx="${param.store_idx }"><i class="material-icons">&#xE147;</i> <span>수정</span></a></th>
						<th><a href="#deleteEmployeeModal"  class="btn btn-danger" data-toggle="modal" data-menu_idx="${menu.menu_idx}" data-store_idx="${param.store_idx}"><i class="material-icons">&#xE15C;</i> <span>삭제</span></a></th>
					</tr>
					</c:forEach>
					<input type="hidden" value="${param.store_idx }" name="store_idx">
<!-- 					<tr> -->
<!-- 						<td> -->
<!-- 							<span class="custom-checkbox"> -->
<!-- 								<input type="checkbox" id="checkbox1" name="options[]" value="1"> -->
<!-- 								<label for="checkbox1"></label> -->
<!-- 							</span> -->
<!-- 						</td> -->
<!-- 						<td></td> -->
<!-- 						<td></td> -->
<!-- 						<td></td> -->
<!--  						<td></td>  -->
<!-- 						<td></td> -->
<!-- 						<td> -->
<!-- 							<a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="수정">&#xE254;</i></a> -->
<!-- 							<a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="삭제">&#xE872;</i></a> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					</tr>
				</tbody>
			</table>
<!-- 			<div class="clearfix"> 페이징 처리 후에 쓰게 된다면 주석 해제 -->
<!-- 				<div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div> -->
<!-- 				<ul class="pagination"> -->
<!-- 					<li class="page-item disabled"><a href="#">Previous</a></li> -->
<!-- 					<li class="page-item"><a href="#" class="page-link">1</a></li> -->
<!-- 					<li class="page-item"><a href="#" class="page-link">2</a></li> -->
<!-- 					<li class="page-item active"><a href="#" class="page-link">3</a></li> -->
<!-- 					<li class="page-item"><a href="#" class="page-link">4</a></li> -->
<!-- 					<li class="page-item"><a href="#" class="page-link">5</a></li> -->
<!-- 					<li class="page-item"><a href="#" class="page-link">Next</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
		</div>
	</div>        
</div>
<!-- 추가 팝업 부분 -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="store_menu_pro.so">
				<div class="modal-header">						
					<h4 class="modal-title">추가하기</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>메뉴 이름</label>
						<input type="text" class="form-control" name="menu_name" id="menu_name">
					</div>
					<div class="form-group">
						<label>메뉴 종류</label>
						<input type="text" class="form-control" name="menu_type" id="menu_type">
					</div>
					<div class="form-group">
						<label>가격</label>
						<input class="form-control" name="menu_price" id="menu_price">
					</div>
					<div class="form-group">
						<label>사진</label>
						<input type="text" class="form-control" name="menu_image" id="menu_image">
					</div>					
					<div class="form-group">
						<label>메뉴 설명</label>
						<textarea class="form-control" name="menu_content" id="menu_content" required></textarea>
					</div>
					<div>
					<input type="hidden" value="${param.store_idx }" name="store_idx"> 					
						<textarea class="form-control" name="menu_content" id="menu_content"></textarea>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-success" value="등록" onclick="add_tr('table_body')">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 수정 팝업 부분 -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="MenuModify.so">
				<div class="modal-header">						
					<h4 class="modal-title">수정하기</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>메뉴 이름</label>
						<input type="text" class="form-control" name="menu_name" id="menu_name" required>
						<input type="text" class="form-control">
					</div>
					<div class="form-group">
						<label>메뉴 종류</label>
						<input type="text" class="form-control" name="menu_type" id="menu_type" required>
						<input type="text" class="form-control">
					</div>
					<div class="form-group">
						<label>가격</label>
						<input class="form-control" name="menu_price" id="menu_price" required>
						<input type="text" class="form-control">
					</div>
					<div class="form-group">
						<label>사진</label>
						<input type="text" class="form-control" name="menu_image" id="menu_image" required>
						<label>메뉴 사진</label>
						<input type="text" class="form-control">
					</div>					
					<div class="form-group">
						<label>메뉴 설명</label>
						<textarea class="form-control" name="menu_content" id="menu_content" required></textarea>
					</div>
					
					<input type="hidden" name="store_idx" id="store_idx">
					<input type="hidden" name="menu_idx" id="menu_idx">
						<textarea class="form-control"></textarea>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-info" value="저장하기">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 삭제 팝업 부분 -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="menuDelete.so">
				<div class="modal-header">						
					<h4 class="modal-title">메뉴 삭제</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>정말 이 메뉴를 삭제 하시겠어요?</p>
					<p class="text-warning"><small>삭제된 메뉴는 복구되지 않습니다.</small></p>
					<input type="hidden" name="store_idxD" id="store_idxD">
					<input type="hidden" name="menu_idxD" id="menu_idxD">
				</div>
				<div class="modal-footer">
					
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-danger" value="삭제" name="dtl_del">
				</div>
			</form>
		</div>
	</div>
</div>


<footer>
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
</footer>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.fancybox.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/typed.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>

</body>
</html>