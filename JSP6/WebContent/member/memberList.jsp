<%@page import="com.itwillbs.member.MemberBean"%>
<%@page import="java.util.ArrayList"%>
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
	<h1>memberList.jsp</h1>
	
	<h2>회원 정보 목록</h2>

	<%
		// 로그인 체크(관리자인지 여부 체크)
		String id = (String)session.getAttribute("loginID");
	
		if(id == null || !id.equals("admin")){
			response.sendRedirect("loginForm.jsp");
		}
		
		// 디비에 저장된 회원정보 모두 가져오기
		MemberDAO dao = new MemberDAO();
		
		ArrayList<MemberBean> memberList = dao.getMemberList();
		
	%>
	
<%--  	<%= memberList %>  --%>
	
	<hr>
		<table border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>나이</td>
			<td>성별</td>
			<td>이메일</td>
			<td>회원가입일</td>
		</tr>	
		
	<% for(int i =0; i<memberList.size(); i++){
		
		MemberBean mb = memberList.get(i);
	%>
	
		<tr>
			<td><%=mb.getId()%></td>
			<td><%=mb.getPw() %></td>
			<td><%=mb.getName() %></td>
			<td><%=mb.getAge() %></td>
			<td><%=mb.getGender() %></td>
			<td><%=mb.getEmail() %></td>
			<td><%=mb.getRegdate() %></td>
		</tr>	
		
	<% } %>
	


</body>
</html>