<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>scopeAction.jsp</h1>
	
	<%
//      	String id = request.getParameter("id");  //  주소에 물음표써서 붙여 보내거나 form태그로 서브밋 할떄  getParameter로 받음 
     											// setAttribute getAttribute 이런식으로 set안하면 거의다 parameter로 받으면 됨.
    %>
    아이디 : <%=request.getParameter("id") %> 
    비밀번호 : <%=request.getParameter("pw") %>
    <br><br>
    
    
	* 영역객체에 정보 출력 <hr>
    
    	page 영역의 공유데이터(Attribute) : <%= pageContext.getAttribute("pValue") %> <br> <!--  같은 페이지에서 위에서 저장한걸 바로 밑에다 가져다 쓰는거임 -->
    	request 영역의 공유데이터(Attribute) : <%= request.getAttribute("rValue") %>  <br>
    	session 영역의 공유데이터(Attribute) : <%= session.getAttribute("sValue") %>  <br>
    	application 영역의 공유데이터(Attribute) : <%= application.getAttribute("aValue") %> <br> 
    	
    	<!-- session과 application만 남아있음. 페이지를 변경하니까, page랑 request가 없어짐.
    		request를 전달할수 있는 방법은 하나 밖에 없음 일반적인 방법으로는  request 객체가 전달이 안됨.
    		 -->
    		 
    	
</body>
</html>