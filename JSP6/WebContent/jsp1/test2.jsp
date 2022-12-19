<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP 구성요소</h1>
	
	<h3>1. JSP 지시어(Directive)</h3>
	<%--
	        p150
	        <%@   %> :  JSP페이지가 실행때 필요한 설정을 작성하는 코드
	        [ page, include, taglib ]
	          
	--%>
	<h3>2. JSP 선언문(Declaration)</h3>
	<%-- 
		<%!			 %> :  선언문 -> 멤버변수, 메서드를 선언공간
	 --%>
	 
	 <%! 
	    //java 코드 작성
	    int a;
	 
	 %>
	<h3>3. 스크립트릿(Scriptlet)</h3>
	<%-- 
		<%   %> : JSP 코드 작성 (지역변수) 
	--%>
	<%
	    int b;
	%>
	
	<h3>4. 표현식(Expression)</h3>
	
	<%--
	    <%= %>  : 선언문,스크립틀릿에  만들어놓은 변수,메서드를 사용하여 
	              화면에 출력하는 코드 
	--%>
	
	<%=1000 %>
	2000(html)


	<h1>JSP 내장객체 (p177~)</h1>
	
	javax.servlet 패키지 		<!-- 기억해야함 --> 
	<h3> request : 클라이언트의 HTTP요청 정보를 저장객체 </h3>
	<h3> response : HTTP 요청에 대한 응답정보 저장객체 </h3>
	<h3> session : 클라이언트의 세션정보를 저장객체 </h3>
	<h3> pageContext : 페이지실행에 필요한 컨텍스트 정보를 저장객체</h3>
	<h3> out : 응답 페이지 전송을 위한 출력스트림 객체</h3>
	<h3> application : 동일한 애플리케이션 컨텍스트 정보 저장객체</h3>
	<h3> config : 서블릿 설정정보(초기화 정보)</h3>
	<h3> page : 해당 페이지 (서블릿 객체)</h3>
		 java.lang 패키지 (자바 기본패키지)
	<h3> exception : 예외처리 객체</h3>
	
	
	<hr>
	서버 도메인명 : <%=request.getServerName() %> <br>
	서버 포트번호 : <%=request.getServerPort() %> <br>
	URL : <%=request.getRequestURL() %> <br>
	URI : <%=request.getRequestURI() %> <br>
	
	<hr>
	<%
	  //response.setHeader(arg0, arg1);
	  //response.addCookie(arg0);
	  //response.setContentType(arg0); 
	  //response.sendRedirect(페이지주소);
	  //response.addHeader("Refresh", "3; url=https://www.naver.com");
	%>
	세션 객체 : <%=session.getId() %> <br>
	세션 생성시간 : <%=session.getCreationTime()%><br>
	세션 최종접속시간 : <%=session.getLastAccessedTime()%> <br>
	세션 유지시간 (1800초,30분): <%=session.getMaxInactiveInterval() %><br>
	<%
	  session.setMaxInactiveInterval(3600);	
	%>
	세션 유지시간 (3600초,60분): <%=session.getMaxInactiveInterval() %><br>
	
	
	


</body>
</html> 