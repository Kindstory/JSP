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
	<h1>core_set.jsp</h1>  <!-- 액션태그는 jsp에서만 쓸수 있는거고 -->
	
	<!--  출력문  -->
	<c:out value ="안녕하세요"></c:out>            <!-- 보통 out은 표준출력 --> 
	<c:out value ="안녕하세요"/> <br>
	안녕하세요            							
	<hr>
	<!-- prefix g로 바꿔도 되는데 왠만하면 안 바꾸는게 좋음 접두사 CORE 의 "c" -->
	<%--  <c: 태그는 JSTL에서만 쓸 수 있음. --%>
	<%
		int num1 = 10;
		int num2 = 20;
	
	%>
	
	합 :<%=num1 + num2 %><br> <!--  작동 -->
	합(el) :${num1 + num2}<br>  <!-- 그냥 일반 자바변수라 안나옴 파라미터가 아니라 -->
	
	합(JSTL) : <c:out value="num1 + num2"/><br>
	합(JSTL) : <c:out value="<%= num1 + num2 %>"/><br> <!--  작동 -->
	합(JSTL) : <c:out value="${num1 + num2}"/> <br><!-- 이건 안됨 자바변수라  -->
	합(JSTL) : <c:out value="${100 + 200}"/><br> <!-- 이건 됨 억지로 이렇게 써야할 상황이 있음 EL태그로 -->
	
	<hr>
	@@<c:out value = "${itwill.name}"/>@@ <br>  <!-- 양끝으로 @@ 넣으면 데이터가 null이라서 공백문자 가 들어감  -->
	
	@@<c:out value = "${itwill.name}" default= "NULL값 대신 사용"/>@@ <br> 
	
	<hr>
	
 	<abc> 태그는 abc 입니다. <hr> 
<!--  	출력하면 태그정보는 안 나옴  -->
 	< abc> 태그는 abc 입니다. <hr> 
<!--  	태그 옆에 공백을 주면 더이상 태그로 인식이 안됨  -->
	&lt;abc> 태그는 abc 입니다. <hr> 
	<c:out value="<abc> 태그는 abc입니다."/><br>  <!-- 태그를  그냥 문자로 읽음 -->
	<hr><hr>
	
	<h2> JSTL - 변수 </h2>
	<%	
		// 변수 (자바코드) : 다른페이지에서 사용 불가능
		int a = 100;
		int b = 200;
		int sum = a + b;
	%>
	a + b = <%= sum %> <br>
	<h3> JSTL 변수 선언 </h3>
	=>  JSTL 변수는 EL표현식으로만 사용 가능하다.
	    영역객체에 정보를 저장 -> 해당영역만 맞으면 데이터를 어디서든 꺼내쓸 수 있다.\
	   
	<!-- <c:set var ="변수명" value="변수값" />  -->
	<%
		pageContext.setAttribute("c", 1000); // 이 JSP(자바)변수랑 밑에 JSTL변수랑 같은 의미
		request.setAttribute("d", 2000);
	%>
	<c:set var ="c" value = "1000"/>   <!-- 이대로 출력하면 화면에 안나타남 변수 선언만 해서 -->
	<c:set var ="d" value = "2000"/>
	
	<c:set var = "sum2" value = "${c+d}"/>  <!-- value 에 el표현식 넣어줘야 밑에  el표현식 출력이 됨 
												 그냥 c+d 하면 출력 안됨-->
	
	<%-- <%= sum2 %>  --> jsp 표현식 사용 불가능 --%> 
	
	${sum2} <!-- el표현식 사용 가능 -->
	
	<hr>
	
	<c:set var = "name" value="phone" scope="request"/> 
	<%
		// request.setAttribute("price", 10000);
		session.setAttribute("test", "itwill");
	%>
	
	<c:set var = "price" value="10000" scope="request" />
	<c:set var = "color" value="black" scope="request" />
	<c:set var = "chris" value="bad" scope="request" />
	<c:set var = "test" value = "itwill" scope ="session"/>
<%-- 	<c:set var = "test" value = "itwill" scope ="request"/> --%>
	
	
	${name } <br> 
	
	<!-- 페이지 이동 + request영역 값-->  
	<!-- request값을 전달하귀 위해선 아직 배운건 forward밖에 없음 -->
	
 	<jsp:forward page="core_set2.jsp"/>   <!-- forward는 주소만 유지하되(core_set.jsp) 화면만 바뀜 --> --%>
	
	
	
	
</body>
</html>