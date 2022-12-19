<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Arrays.jsp</h1>
    jsp : <%=request.getAttribute("number") %> <br>
    el : ${number }<br>
    <hr>
    <!-- 서블릿에서 생성한 배열의 정보 출력 -->
    오늘의 추천메뉴 : ${menu[0] },${menu[1] },${menu[2] },....<br>
    
    <%
        String[] menuArr = (String[]) request.getAttribute("menu");
    
       if(menuArr != null){
    	   for(int i=0;i<menuArr.length;i++){
				out.print("메뉴 :"+menuArr[i]);
				%>
				 <%=menuArr[i] %><br>
				<%
    	   }
    	   
    	   for(String s:menuArr){
    		   out.print(s);
    	   }
       }
    %>
    
    <hr><hr>
    
    <c:forEach var="m" items="${menu }"> 
        <h3>${m }</h3>
    </c:forEach>
    
    <hr>
    ${menu }<br>
    ${movies }<br> 
    <hr>
    
    <c:forEach var="movie" items="${movies }">
        ${movie } <br>    
    </c:forEach>
    
    
    
    
</body>
</html>