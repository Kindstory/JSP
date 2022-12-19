<%@page import="java.sql.DriverManager"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>dbConnect.jsp</h1>
	<%
		// JDBC : Java와 Database를 연결하는 API
		
		// 0. mysql 드라이버(라이브러리) 설치  => 프로젝트당 1번
		//     /WEB-INF/lib/mysql-connector-java-8.0.30.jar 복사(추가)
		
		// 1. 설치된 드라이버 로드 (리플렉션) -> 검색해보기               load: 저장된 데이터를 메모리에 불러오는거, 실행하겠다.
		
		// 	Class.forName(classname);
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		System.out.println("드라이버 로드 성공!");
		
		// 2.드라이버를 사용해서 DB 접속
 		// DriverManager.getConnection(url, user, password);
		
 		DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?servertimeZone=Asia/Seoul;", "root", "1234");
 		
 		// DriaveManager치고 ctrl+space눌려서 추가해주면 import가 뜸 기본객체가 아니라서 갖다 쓰는거라 이렇게 import되야 사용가능 
 		
 		System.out.println("디비 연결 성공!");
	
		
		// CRUD를 얼마나 잘하느냐 못하느냐가 실력의 기준
		
		
	
	%>

</body>
</html>