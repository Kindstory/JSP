<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> sessionSet.jsp </h1>

	<h1>서버</h1>
	<%
	// 세션값 생성
	session.setAttribute("name", "ITWILL"); // ITWIll이  Object형임.
	session.setAttribute("id", "BUSAN");
	
	System.out.println(" 세션값 생성완료! ");
	
	
	%>


	<script type="text/javascript">
		alert("요청 정보 처리완료");
		alert("세션값 생성완료");
		location.href = "sessionTest.jsp";
	</script>


</body>
</html>