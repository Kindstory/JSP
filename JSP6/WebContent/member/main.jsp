<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main.jsp</h1>
	
<!-- 	반드시 로그인을 했을때만 방문. 로그인x ->  로그인 유도	 -->

	
	
	<%
	
		//세션영역에 있는 로그인 아이디 정보를 가져오기

		// 세션은 내장객체라 바로 쓸 수 있음.
		// session.setAttribute("loginID", mb.getId());
		String id = (String)session.getAttribute("loginID");
		
		if(id == null){
			// 로그인 안했다.
		
		
 			System.out.println("로그인 정보 없음!"); 
			
			response.sendRedirect("loginForm.jsp"); 
		}
 		
			
	
	%>
	
	<h1><%=id %>님 환영합니다.</h1>
	
	<input type="button" value="로그아웃" onclick = "location.href = 'logout.jsp'">
	
	
	<hr>
	
	<h1><a href="info.jsp">개인정보 조회</a></h1>  
	
	<h1><a href="updateForm.jsp">개인정보 변경</a></h1>
	
	<h1><a href="deleteForm.jsp">개인정보 삭제</a></h1>
	
	
<!-- 	관리자(admin) 전용 메뉴 -->

		<%
		if(id != null){
			if(id.equals("admin")){
				%>
				<h1><a href="memberList.jsp">회원 정보 목록</a></h1>
				<%
			}
		}

		%>	
	
	
	
	
	
	
</body>
</html>