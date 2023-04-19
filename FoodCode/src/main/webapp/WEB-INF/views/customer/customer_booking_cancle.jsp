<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
if(confirm("예약을 취소하시겠습니까?")){
	location.href = "customerBookingCanclePro.me?booking_idx=${param.booking_idx}"
} else {
	history.back();
}
</script>
</head>
<body>
	<h1>customer_booking_cancle.jsp</h1>
	<%=request.getParameter("booking_idx")%>
</body>
</html>