<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>cookieTest.jsp</h1>
	쿠키 : HTTP 프로토콜 정보가 웹 페이지의 정보를 저장x
		=> 서버와의 상태를 저장하기위해서 사용하는 정보(클라이언트)   
		
		=> 이름, 값, 유효기간, 도메인, 경로와 같은 정보들로 구성
		   (숫자, 알파벳)
		
						->  요청 ->
	  클라이언트      						서버  (new Cookie)
	  	 (C)			<- 응답(C) <-
	  	 
	  	 <br><br><br>
	  	 
	  	 			<!--  커피집에서 찍어주는 쿠폰같은거 -->
<!-- 					스타벅스에가면 내가 이전에 왔던 사람인지 아닌지 판별하는 기준이 필요함 -->
<!-- 			왔다라는 증거로 그 사람의 정보를 저장하고 관리함. cookie는 쿠폰 10개찍으면  -->
<!-- 					1개 더줘요 같은 종이 session은 다이어리 같은 폼에 전화번호를 저장해놓는거임. -->
<!-- 			session의 정보를 보고 이 사람이 왔던 사람이네 아니네 판단하는거, -->
<!-- 						cookie는 모를수도 있지만, 쿠폰을 보고 이사람이 왔던 사람이네 판단함. -->
<!-- 					언제 만들어진건지 모르지만, cookie는 그것만 보고 판단함. -->
<!-- 						내가 쿠폰 10개를 다 모았는데 잃어버렸다. 커피집에서 인정 안해줌. -->
<!-- 			cookie는 client측에서 관리하기 떄문에, server측에서 어떻게 할수가 없음. -->
<!-- 								cookie는 별도의 주의와 관심이 필요함.  -->
<!-- 	cookie는 아이디 기억하기, 쇼핑몰에 최근 본 상품 그런거임. client에게 정보를 전달해놓고 -->
<!-- 					쓰게함. 예전에는 안썼음. client사양이 별로 안 좋아서.  -->
<!-- 	근데 요즘은 client사양이 좋아져서 server가 일을 좀 덜하게 함. server배려해서 ㅇㅇ -->
		
		<%
		   // 클라이언트
		   
		   // 쿠키값 가져오기 => 쿠키정보는 쿠키 배열의 형태로 전달됨 여러개니까 배열로 저장		
		   Cookie[] cookies = request.getCookies();
		  
		   // 쿠키값이 있는지 제어
		   if(cookies != null){
			   // 쿠키값이 존재한다.
			   for(int i = 0;i<cookies.length; i++){
				   if(cookies[i].getName().equals("name")){   // name은 임의로 지정한 key값이라 바꿔도 됨.
					   
					   out.println("쿠키이름 : "+cookies[i].getName()+ "<br>");
					   out.println("쿠키값 : "+cookies[i].getValue()+ "<br>");
				   }
			   }
			   
		   }
		   
		   Cookie[] cookies1 = request.getCookies();
			  
		   // 쿠키값이 있는지 제어
		   if(cookies1 != null){
			   // 쿠키값이 존재한다.
			   for(int i = 0;i<cookies1.length; i++){
				   if(cookies1[i].getName().equals("am")){   // name은 임의로 지정한 key값이라 바꿔도 됨.
					   
					   out.println("쿠키이름 : "+cookies1[i].getName()+ "<br>");
					   out.println("쿠키값 : "+cookies1[i].getValue()+ "<br>");
				   }
			   }
			   
		   }
		   
		   
		  
		%>
		
		<hr>
		
		<h2> 클라이언트 </h2>
		<input type = "button" value="쿠키 생성" onclick = "location.href = 'cookieSet.jsp';">    <!-- 쿠키는 서버가 만들어줌 그래야 갔다가 왔다는걸 확인하니까  -->
		<input type = "button" value="쿠키 삭제" onclick = "location.href ='cookieDel.jsp';">
		
			<form action = "cookieSet.jsp" method = "post">
	
	 		아이디:<input type = "text" name = "id"> <br><br>
			 비밀번호:<input type = "password" name = "pw"><br><br>
	 		<input type = "submit" value = "로그인">
		
		
																			
		

 																		
</body>				
</html>