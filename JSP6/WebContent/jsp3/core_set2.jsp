<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h1>core_set2.jsp</h1>
	
	<%
		// 전달된 정보 저장
		String name = (String)request.getAttribute("name");
		// String price = (String)request.getAttribute("price");
		int price = Integer.parseInt((String)request.getAttribute("price"));
		String color = (String)request.getAttribute("color");
		String chris = (String)request.getAttribute("chris");
		String test = (String)session.getAttribute("test");
		 //test = (String)request.getAttribute("test");
		
	
	%>
	
	이름 : <%= name %> <br>
	이름 : <%= name %> <br>
	이름 : <%= name %> <br>
	가격 : <%= price %> <br>
	색깔 : <%= color %> <br>
	이름 : <%= chris %> <br>
	테스트 : <%= test %> <br>
	테스트 : <%= test %> <br>
	테스트 : <%= test %> <br>
	
	
	<hr>
	
	<h2>EL표현식</h2>      <!-- 위에 request 받고  출력하는거 이런거랑 아무상관없음 -->
	
	<!-- => (영역객체.) 변수명 호출
		생략가능 
		
	* 중요한 개념
	=> 영역객체가 없을경우 모든 영역을 찾아서 값을 가져온다.
		page < request < session < application (크기 순서대로) 
			   1(저장) -> requestScope.name 값 1 출력   2(저장) ->  sessionScope.name 값 2 출력
			   그냥 name을 출력하면 제일 먼저 만나는 request 값 1이 출력이 되고,
			   그 이후의 데이터는 접근 불가능하다.(접근하려면 영역을 명시해야함)
			   영역객체에 데이터를 저장할떄 동일한 이름을 저장하지 말라 
			   젤 좋은건 이런 과정을 거치지 않는거다. 
			   데이터를 잘못 가져올 수도 있으니까.
			   
		한 영역씩 다 뒤졌는데 없으면 값이 없음 -> EL태그에서 값이 없으면(null) 공백.
		영역객체는 개발자의 재량임. -->
	
	
	이름 : ${requestScope.name } <br> <!--  request 영역에 name있으면 꺼내달라 -->
	이름 : ${sessionScope.name } <br>  <!--  값 안 뜸 --> <!-- session 영역에 name있으면 꺼내달라 -->
	이름 : ${name } <br> <!--  모든 영역중에서 name이란 값이 있으면 꺼내달라 -->
	가격 : ${price }<br>
	색상 : ${color }<br>
	
	<!-- 특정영역에 있는 데이터 삭제 -->
<%-- 	<c:remove var="test" scope="session"/>  <!-- 왠만하면 scope 적어주는거 좋다 --> --%>
	테스트 : ${sessionScope.test }<br>
	테스트 : ${requestScope.test }<br> 
	테스트 : ${test }
	

</body>
</html>