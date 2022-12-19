<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test1.jsp</h1>
<!--  HTML 주석문  -->
	
	<%
	// Java 주석
	// 안녕하세요
	// JSP = java + html(JavaScript)
	%>
	
	<%-- JSP 주석 --%>
	<%-- <% 1234 %>  --%>
	
	<script type="text/javascript">
	// javaScript 주석
	</script>
	<% 
	// '스크립틀릿'(이라 부름 이 퍼센트 태그) : java 코드 작성영역 
	// int a = 100; 이건 지역변수임.  이 태그안에 쓰는 코드들은 service라는 메서드안에서 쓰이는 거임 
	//                                그래서 지역변수
	
	// 문자열 배열 생성 -> 데이터 입력
	
	String[] strArr = new String[3];
	
	strArr[0] = "a";
	strArr[1] = "b";
	strArr[2] = "c";
	
	for(int i = 0; i<strArr.length; i++){
		System.out.println(strArr[i]);
	}
	
	for(int i = 0; i<strArr.length; i++){
		out.println(strArr[i]+"<br>");
	}
	
	for(int i = 0; i<strArr.length; i++){
		out.println("<h1>" + strArr[i] + "</h1>");
	}
	// System 지우니까 화면에 출력 
	
	// System이 빠지면 html의 요소로 들어가니까 println으로 해도 줄 바뀌는게 아님
	// HTML코드의 줄바꿈을 넣어줘야 함.
	// <h3> 태그는 <br>태그 쓸필요없음 자동으로 개행이 되니까.
	
// 	System.out.println(array[0]);
// 	System.out.println(array[1]);
// 	System.out.println(array[2]);
	
		for(int j = 0; j<strArr.length; j++){
	%>
	
	<!-- 이 공간은 html임 ㅇㅇ 자바 태그 사이니까 -->
	<hr>
	
	<%=strArr[j] %><br>
	
	<% 
		}
		
	// '스크립틀릿'(이라 부름 이 퍼센트 태그) : java 코드 작성영역 
	
	
	%>
<!-- 	위에 2 태그들은 나눠진게 아니라 실제로 연결되있음 자바니까 ㅇㅇ 
		위에 태그 안에 선언한 변수를 밑에 태그안에서도 쓸 수 있다. ㅇㅇ -->
	
</body>
</html/>