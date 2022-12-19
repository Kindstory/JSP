<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>  
      <h1>testServlet.jsp</h1>
      
      
      파라메터 :  <%=request.getParameter("cnt") %><br>
      
      속성 : <%=request.getAttribute("cnt") %><br>
      
      속성 : ${cnt } <br>
      속성 : ${requestScope.cnt } <br>
      
      
      
      
      
      
      

</body>
</html>