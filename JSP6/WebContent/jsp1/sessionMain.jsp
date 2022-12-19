<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		// 로그인 정보(세션값) 사용
	
		String id = (String)session.getAttribute("id");
		if(id == null){
 			//response.sendRedirect("sessionLogin.jsp");    // sendRedirect말고 다른 페이지이동 방법써도 됨 이동 형태나 방식이 다름.
														  // 페이지가 움직일때 자동으로 넘겨줌 	
														  // sendredirect방식으로 하면 로직이 안 보임.
														  // 1번 방식으로 하면 누를떄 마다 움직이니까 로직 다 볼 수 있음.
//  		<jsp:forward page="sessionLogin.jsp"/>  
 			%>
 			<a href = "sessionLogin.jsp"> sessionLogin.jsp 페이지로 이동</a>   <!-- 눌렀을때 페이지 이동 안 눌르면 페이지 이동안함 링크 걸어주는 거 -->
  		<br><br> 
 	<%
		}
		
	%>
	
		<%= id %>님 환영합니다.
		<input type = "button" value = "로그아웃" onclick="location.href ='sessionLogout.jsp'; ">		
		
</body>
</html>