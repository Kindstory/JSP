<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>joinForm.jsp</h1>
	
	<form action ="joinPro.jsp" method="post">
	
	아이디 : <input type = "text"  name = "memberId">
	비밀번호 : <input type = "password" name = "memberPw">
	이름 : <input type="text" name = "name">
	
	<input type="submit" value="회원가입하기">

	</form>
	
	
</body>
</html>