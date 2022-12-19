<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	 
	<h1>sessionDel.jsp</h1>  <!--  sessionDel도 하나의 서버임 근데 샘이 일부러 나눠놓은거임 -->
	
	<%
	//name 세션값 삭제
	session.removeAttribute("name");
	
	System.out.println("세션값 삭제 완료!");
	
	
	%>
	
	
	<script type="text/javascript">
		alert("세션값 삭제완료");
		location.href = "sessionTest.jsp";
	</script>
	



</body>
</html>