<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>operatorPro.jsp</h1>
	
	
	<%
	  int num1 = Integer.parseInt(request.getParameter("num1"));  // 숫자로 바뀔수 있는 걸 form에서 넘겨줘야함 
	  int num2 = Integer.parseInt(request.getParameter("num2"));  // 문자로 넘겨주면 java.lang.NumberFormatException 발생
	  
	  /*  난 밑에 jsp코드에서 integer로 바꿀려고 했는데 아니지, Integer.parseInt는 자바에서 사용되는 함수니까 
	  	  자바코드에서 미리 int로 바꿔 놓고 밑에서는 출력만 갈겨야지 */
	%>
	

	JSP : <%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <br>  
	
	EL : ${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 } 
		=> EL표현식을 사용하면 전달받은 파라미터의 데이터가 자동으로 형변환 된다.
		
		<!-- Form에서 바로 받아옴 -->]
		
	<hr>
	<h1> num1, num2 데이터는 모두 양수입니까?</h1>
	
	
		 ${param.num1 > 0} , ${param.num2 > 0} => ${(param.num1 > 0) && (param.num2 >0)}
	
	<h3> num1, num2 데이터는 모두 양수입니까?("양수", "아니다")</h3> 
	
	
		${(param.num1 > 0) && (param.num2 >0) ? "모두 양수" : "아니다" }  			<!-- 코딩테스트에 좋음 if연산자보다 빠르니까 -->
		<!-- 부동호 연산자 > , < 도 태그랑 비슷해서 헷갈릴수도 있어서 권장하지  않음 EL태그에서 -->
	
		<hr>
		
		* el 표현식 비교연산자
		==  eq  <br>
		!=  ne  <br>
		<   lt  <br>
		>   gt  <br>
		<=  le  <br>
		>=  ge  <br><Br>
		
		${(param.num1 gt 0) && (param.num2 lt 0) ? "양수, 음수" : "아니다" }
	
	
</body>
</html>