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
		// 한글처리               // post방식이면 한글꺠질수 있음 get방식은 괜찮음
		request.setCharacterEncoding("UTF-8");
		// 전달된 정보를 저장
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		Timestamp regdate = new Timestamp(System.currentTimeMillis());
		
		%>
<!-- 		 정보 확인(HTML창에 출력하면 될듯) or console 창에 -->
		
	 	아이디 :  <%= id %> 
 		 비밀번호 :  <%= request.getParameter("pw") %> 
		 이름 :  <%= name %> 
 		 나이 :  <%= age %> 
 		 성별 :  <%= gender %> 
< 		 이메일 :  <%= email %> 
		 등록일 : <%= regdate %>
 	<% 		 
      System.out.println(id + "/" + pw + "/" +  name + "/" + age +"/" + gender +"/" + email + "/" + regdate); 	
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
		pstmt.setString(1, id);		
		pstmt.setString(2, request.getParameter("pw"));		
		pstmt.setString(3, name);		
		pstmt.setInt(4, age);		
		pstmt.setString(5, gender);		
		pstmt.setString(6, email);		
		pstmt.setTimestamp(7, regdate);		
				
		// 4. SQL 실행
		
		pstmt.executeUpdate();
		
		// 회원가입 완료 -> 로그인
		
		
			%>
			

</body>
</html>