<%@page import="com.itwillbs.test.TestDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testInsert.jsp</h1>
	
	test_member 테이블 정보 저장 <br>
	
	
	<%
		//  DB를 실행해서 정보를 저장
		TestDAO dao = new TestDAO();
	
		 dao.testInsert();
		 
		
		 // 기존의 메서드를 이용한 회원가입 기능
		 /* 일단 joinForm.jsp 에서 form 태그로 id, pw 입력받고  
		 	joinPro.jsp에서 request.getParameter() 로 id , pw 입력받은 다음에
		 
		 	javaDAO 파일에서 메서드 만들고 그대로 호출하면 됨
		 
		 */
		 
		 
		 
		 
	%>
	
	test_member 테이블 정보 저장 끝
	
	
	
	
	
</body>
</html>