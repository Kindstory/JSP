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
  		// 세션값 초기화
		session.invalidate();
	
	%>
	
	
	<script type="text/javascript">
		alert("로그아웃 되었습니다.");
 		location.href = "sessionMain.jsp";  // main으로 보내도 세션값이 초기화되서 id = null이기 떄문에 sessionLogin페이지로 이동함.
	</script>
	
</body>
</html>