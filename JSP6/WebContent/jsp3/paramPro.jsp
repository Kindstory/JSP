<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>paramPro.jsp</h1>
	
	<% 
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		out.println("아이디 : " + request.getParameter("id") + "<br>");
		
		String foods[] = request.getParameterValues("foods");
		
	
	%>
	
	ID : <%= id %> <br>
	<!--ID(EL) : ${id} -->      <!--  JSP의 변수는 안됨 그래서 null 뜬거임 -->	 
	
	<!-- EL 표현식쓰면 에러 많이뜨는데 변수에 에러뜨면 무조건 에런데, 변수 뒤 중괄호사이에
     	  에러가 뜨면 에러가 아닐수도 있다. 그래서 무조건 실행을 해봐야 된다. 
		 EL 표현식에 변수를 자바의 변수를 가져올수는 없다. -->
							    	
							    	
							    	

	ID(EL) : ${param.id } <br>
	foods : <%= foods[0] %> <br>
	foods : <%= foods[1] %> <br>
<%--  	foods : <%= foods[2] %> <br> --%> <!-- 없는거 부르면 에러뜸 여기서는 ArrayIndexOutOfBoundsException/ 500에러(컴파일에러) --> --%>
	
	
	foods(EL) : ${paramValues.foods[0]} <br>
	foods(EL) : ${paramValues.foods[1]} <br>
	foods(EL) : ${paramValues.foods[2]} <br>   
	* EL표현식에서 null값은 공백으로 출력함. <br>
	
	
<%-- 	Food1(EL): ${param.foods[0] } <br> --%>
<%-- 	Food2(EL): ${param.foods[1] } <br> --%>

<!-- 	위에 request.getParameter("id"); 안써도 됨  -->

<!--	 paramTest.jsp 코드에서 name이 foods로 똑같으면 2번 출력해도 1번 값만 나옴.
     	이럴때, 배열을 쓰는 거임. -->
     	
<!--      	값 입력안하면 전달은 되는데 값이 업음 get방식으로 보면, 근데 값이 null이면  -->
<!--      	nullPointException 발생 null(값이 안 뜸)이면 실행조차 안됨 jsp코드에서 -->

<!-- 			@2a3234534 -> 이런거 배열임 -->


	<%
			String hobbys[] =  request.getParameterValues("hobby");	
	
			if(hobbys != null){
				for(int i = 0; i<hobbys.length; i++){
				%>
					 취미 : <%= hobbys[i] %> <br>
				<% 
				}
			 	
			}
		%> 
			* EL 표현식은 반복문 사용 불가능 => JSTL과 결합하면 반복문 사용가능 <br>
			hobby(EL) : ${paramValues.hobby[0]} <br>
			hobby(EL) : ${paramValues.hobby[1]} <br>
			hobby(EL) : ${paramValues.hobby[2]} <br>
			hobby(EL) : ${paramValues.hobby[3]} <br>
			hobby(EL) : ${paramValues.hobby[4]} <br>
	
	
</body>
</html>