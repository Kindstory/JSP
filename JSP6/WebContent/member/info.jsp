<%@page import="com.itwillbs.member.MemberBean"%>
<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1> info.jsp </h1>

	<%
		// 로그인 여부 체크
		String id = (String)session.getAttribute("loginID");
		if(id == null){
			response.sendRedirect("loginForm.jsp"); 		 /* 자바 스크립트로 구현이 안됨 
															 	JSP -> html -> js 이렇게 실행 순서가 됨.  
															 	이래서 JSP로 코드로 구현함. */
															 	
		}													 // html은 되는지?
		
		// else코드를 굳이 적을필요가 없다. null이 아니라는 말이 곧 else니까 
		
	%>

	<h2> 개인정보 조회 </h2>
	
	<%
	
			// DB에 접근해서 해당유저(로그인한 유저)의 정보만 가져오기 ID(pk)만 있으면 구분 가능 고유한 정보니까.

			// 가끔 이메일로 로그인하는 사이트는 이메일에(pk)가 걸려있음.
			
			// MemberDAO 객체
			MemberDAO dao = new MemberDAO();
	
		
		
			// 정보조회 메서드 호출
			MemberBean mb1 = dao.getMember(id);
			
			
	%>
	
	<hr> 
	<h4> 아이디 : <%=mb1.getId() %></h4>
	<h4> 비밀번호 : <%=mb1.getPw() %></h4>
	<h4> 이름 : <%=mb1.getName() %></h4>
	<h4> 나이 : <%=mb1.getAge() %></h4>
	<h4> 성별 : <%=mb1.getGender() %></h4>
	<h4> 이메일 : <%=mb1.getEmail() %></h4>
	<h4> 등록일 : <%=mb1.getRegdate() %></h4>
	
	<h4><a href = "main.jsp">메인페이지로... </a></h4>
	
</body>
</html>