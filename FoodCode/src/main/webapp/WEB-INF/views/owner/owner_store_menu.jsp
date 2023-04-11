<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>가게 메뉴 등록</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/daterangepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>

  <div class="untree_co-section">
    <div class="container my-5">

      <div class="row justify-content-center">

        <div class="col-lg-4">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">메뉴 등록</h2>
            <form class="contact-form bg-white" action="store_menuPro.so">
             <div class="form-group">
                <label class="text-black" for="menuName" >메뉴 이름</label>
                <input type="text" class="form-control" name="menu_name" id="menu_name">
                
              </div>
             <div class="form-group">
                <label class="text-black" for="menuType" >메뉴 종류</label>
                <input type="text" class="form-control" name="menu_type" id="menu_type">
              </div>
             <div class="row">
             <div class="col-md-6">
             	<div class="form-group">
                	<label class="text-black" for="menuPrice" >가격</label>
                	<input type="text" class="form-control" name="menu_price" id="menu_price">
	            </div>
             </div>
             </div> 
             <div class="form-group">
                <label class="text-black" for="menuImage">메뉴 사진</label>
                <input type="file" class="form-control" name="menu_image" id="menu_image">
              </div> 
              <div class="form-group">
                <label class="text-black" for="menuContent" >설명</label>
                <input type="textarea" class="form-control" name="menu_content" id="menu_content">
              </div>
              
             <button type="submit" class="btn btn-primary">등록하기</button>
             <button type="submit" class="btn btn-primary">돌아가기</button>
            </form>
          </div>
		</div>
	  </div>
     </div>
   </div>
		


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