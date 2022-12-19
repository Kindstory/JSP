<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>testForm1.jsp</h1>
  
  <h2>정보전달 - form태그</h2>
  
  <form action="testPro1.jsp" method="get">
      좋아하는 숫자 입력 : <input type="number" name="num">
      
      <input type="submit" value="전송하기">  
  </form>
  
  

</body>
</html>