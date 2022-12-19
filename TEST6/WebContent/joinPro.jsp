<%@page import="com.itwillbs.test.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> joinPro.jsp</h1>
	

 	<jsp:useBean id= "dto" class="com.itwillbs.test.TestDTO"/> 
	
 	<jsp:setProperty property ="*"  name="dto"/> 

 	<%
 	   session.setAttribute("id", dto.getId()); 
  	   session.setAttribute("pw", dto.getPw());
  	   session.setAttribute("name", dto.getName());
 	
 	%>		
	
<%-- 	<jsp:getProperty property = "id" name="test"/>   get은 html화면 출력이니까 안해도 됨  --%>
<%-- 	<jsp:getProperty property = "pw" name="test"/> --%>
<%-- 	<jsp:getProperty property = "name" name="test"/> --%>


 	 <%
		TestDAO dao = new TestDAO();
	
 		int result = dao.joinMember(dto);
		
 		if(result == 0){
			out.println("머하세요?");
 		} 
 		else if(result == 1){
			out.println("가입이 완료되었습니다.");
 		}
 		
		%>
		 
	
	

</body>
</html>