<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scopeForm.jsp</h1>   p.209      중요한 개념 Spring까지 가는 개념임.
	
	<h2> 영역: 데이터(Attribute)의 공유되는 범위(Scope) </h2>
	[page(내꺼), request(옆에 책상 거리정도), session(반), application(학원전체)]
	
	<h2> 영역객체 : 데이터의 공유되는 범위에 접근가능한 객체 </h2>
	[pageContext, request, session, application]
	
	<h2> 유효범위 </h2>
	[해당페이지, 요청이 처리되는 페이지, 세선유지되는 페이지, 서버 실행되는 모든페이지]
	   1(page)   2(page)         2든 3이든 공유(page)     전체 (page)   <!-- 굳이 나누면 --> 
	   
	  
	 <hr>
	 
<!-- 	 Chrome은 세션유지라 네이버에 로그인하고 새창열어도 다 로그인 되있음  -->
<!-- 	 100개의 창을 열어도 다 로그인 되있다는 말임. -->
<!-- 	 Edge는 세션유지가 안됨.    -->



	<form action = "scopePro.jsp" method = "get">
	
	 아이디: <input type = "text" name = "id">
	 비밀번호: <input type = "password" name = "pw"> 
	 
	 <input type = "submit" value = "전송하기">
	
	
	</form>
	
</body>
</html>