<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
      <h1>Attribute.jsp</h1>
      
      <h2>  TestServlet2 (서블릿)과 연결  </h2>
      <h2>  TestServlet2 (서블릿)에서 정보 공유가 가능(JAVA코드-JSP코드) </h2>
      
      <%
          // 변수 - 해당페이지 에서만 사용가능
          int cnt = 100;
      
      	  // request 영역에 저장된 정보사용
      	  int cnt2 = (Integer)request.getAttribute("cnt");
      	  
      %>
      
      cnt 값(변수) : <%=cnt+200 %><br>
      
      cnt2 값(속성) : <%=cnt2+2000 %><br>
      
      cnt2 값(EL) : ${cnt+500 }<br>
      cnt2 값(EL) : ${requestScope.cnt+500 }<br>
      
      request영역의 cnt : ${requestScope.cnt }<br>
      session영역의 cnt : ${sessionScope.cnt }<br> 
      ???? 영역의 cnt : ${cnt }<br>
      <hr>
      영역객체가 없을경우 모든 영역을 찾아서 값을 가져온다.<br>
        page -> request -> session -> application<br>
        위 순서대로 영역을 돌면서 데이터 검색함.<br>
        동일한 이름의 속성이 존재하는 경우 가장 먼저만나는 데이터를 사용<br>
         이후의 데이터는 접근 불가능하다. (접근하려면 영역을 명시)
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
</body>
</html>