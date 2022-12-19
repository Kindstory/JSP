<%@page import="com.itwillbs.member.MemberDAO"%>
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
	<h1>insertPro3.jsp</h1>    
	
	
	<% 			
	request.setCharacterEncoding("UTF-8");
	%>
		
		<jsp:useBean id ="mb" class = "com.itwillbs.member.MemberBean"/>
		
		<jsp:setProperty property = "*" name = "mb"/>
		
	<%
		// 날짜정보 추가저장
 		mb.setRegdate(new Timestamp(System.currentTimeMillis()));
		
		// 정보 확인
																						
		System.out.println(mb);
// 		System.out.println(mb.toString());
			
		
		// 회원가입 - DB동작
		// insertMember()
		
		//MemberDAO 객체생성
		MemberDAO dao = new MemberDAO(); // 계산기를 갖다 놓은거임.
		
		dao.insertMember(mb);  // 커서 갖다대고 F3 누르면 그 메서드로 감, ctrl + 마우스 갖다대면 링크로 바뀜
		
		/*  jsp에서는 가능한 한 코드를 줄여감. 디자이너와 협업하는 곳이라.
		    로직은 최대한 작성하지 않을 거임 jsp에다가, 예외는 반복문 작성하고 출력하고
		    어떤 계산하고 결과를 내는거는 별도의 자바클래스로 빼줘야 더 객체지향적인 개발에 가까움. 
		    앞으로는 이런 과정을 계속 반복하는 거임
		    form -> pro -> action(결과 도출) 이 로직의 반복임. 
		    
		    */
		 
		 
		 
	%>
	
	
	<h3><a href = "loginForm.jsp">loginForm.jsp페이지로 이동</a></h3>
		  
		<% 
		
		// 회원가입 완료 -> 로그인
		
			// response.sendRedirect("loginForm.jsp");
		
			%>  
				

</body>
</html>