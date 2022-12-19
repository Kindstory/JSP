<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testPro1.jsp</h1>
	<% 
		// HTTP 요청정보는 파라미터 형태로 전달될때 항상 String타입
		
		// 주소에 전달되는 정보 => 파라미터 (String)
		
		int num = Integer.parseInt(request.getParameter("num")); 
	
	%>
	<%= num + 100 %>
	<%= request.getParameter("num") + num + 100 %> <br>
	
	

</body>
</html>