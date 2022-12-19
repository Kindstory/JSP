<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insertForm.jsp</h1>
	
	<h2> 회원가입 페이지 </h2>
	
	
	<!--  프로젝트시
	가장 먼저 해야할 것은 DB설계임 클라이언트가 
	요구하는 것을 정리하고 논리를 설립하기에 좋음 
	이러이러한 요구 사항을 받았다고 가정하고 진행해봄 지금.
	-->
	
	<!--  아이디, 비밀번호 , 이름, 나이, 성별, 이메일, 회원가입일 -->
	
	<!-- form action에서 name은 DB에 컬럼명이랑 같이맞춰야된다. 
		 달라도 에러는 안 나지만,  같으면 나중에 코드를 구현하기가 편해진다
		 DB에 있는걸 다 쓸 필요는 없다. 어디서 회원가입일은 잘 안묻음.
		 이건 다 유저한테 받아야 하는 정보들임.  -->
		 				 
		 				 
		 				 
<fieldset>	
	<form action = "insertPro3.jsp" post = "post">
	
	아이디 : <input type = "text" name ="id"><br>
	비밀번호 : <input type = "password" name = "pw"><br>
	이름 : <input type = "text" name = "name"><br>
	나이 : <input type = "number" name = "age"><br>
	성별 : <input type = "radio" name = "gender" value = "남"> 남
		   <input type = "radio" name = "gender" value = "여"> 여
	<br>
	이메일 : <input type = "email" name = "email">
<!-- 	회원가입일 : <input type ="timestamp" name = "regdate">   -->
	
	<hr>
	<input type ="submit" value = "회원가입하기">
	
	</form>
</fieldset>	


</body>
</html>