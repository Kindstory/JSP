<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insertPro.jsp</h1>    
	
	 <!-- 이거 자바빈으로 받아보기 숙제 -->
	<% 			
	request.setCharacterEncoding("UTF-8");
	%>
		
		<jsp:useBean id ="mb" class = "com.itwillbs.member.MemberBean"/>
		
		<jsp:setProperty property = "*" name = "mb"/>
		
	<%
		// 날짜정보 추가저장
		mb.setRegdate(new Timestamp(System.currentTimeMillis()));
		
		// 정보 확인
																						
// 		System.out.println(mb);
		System.out.println(mb.toString());
			
	
	%>
		
		<%!
			static final String DRIVER = "com.mysql.cj.jdbc.Driver";
			static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
			static final String DBID = "root";
			static final String DBPW = "1234";
		%>
	
	
		  
		<% 
		// 디비연결 - 정보 저장
		// 1. 드라이버 로드
		Class.forName(DRIVER);
		// 2. 디비 연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		// 3. SQL & pstmt 생성
		String sql = "insert into itwill_member(id, pw, name, age, gender, email, regdate) values(?, ?, ?, ?, ?, ?, ?)";
		
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		//  ???
		pstmt.setString(1, mb.getId());		
		pstmt.setString(2, mb.getPw());		
		pstmt.setString(3, mb.getName());		
		pstmt.setInt(4, mb.getAge());		
		pstmt.setString(5, mb.getGender());		
		pstmt.setString(6, mb.getEmail());		
		pstmt.setTimestamp(7, mb.getRegdate());		
				
		// 4. SQL 실행
		int result = pstmt.executeUpdate();
		// sql 쿼리의 결과가 테이블에 영향을 준 행의 수를 리턴
		//pstmt.executeUpdate();
		
		
		// 회원가입 완료 -> 로그인
		if(result == 1){
			response.sendRedirect("loginForm.jsp");
		}
		
		
		
		
			%>  
				

</body>
</html>