<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insertTest.jsp</h1>
	
	<form action = "insert.jsp" method = "get">
	
	아이디 : <input type = "text" name = "id">
	비밀번호 : <input type = "password" name = "pw">  <!-- name은 아무거나 됨 -->
	<br>
	<input type = "submit" value = "DB에 넣기"> 
	
	</form>
</body>
</html>