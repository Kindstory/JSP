<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionLogin.jsp</h1>
	
	<!--  [로그인 로직]  이 로직은 기본적으로 걍 다 외우는데 흐름을 이해해야됨 당연한거지 ㅇㅇ
		pro => process의 약자 ㅇㅇ 중간에서 다 처리하니까 ㅇㅇ 맞으면 다음페이지로 이동 아니면 다시 기본페이지로 돌아감
	
		1. sessionLogin.jsp  아이디, 비밀번호 입력(유효성 체크 생략)
		2. sessionLoginPro.jsp에서 로그인 여부 체크
		(아이디 존재 여부, 비밀번호 동일한가)
		3. 문제가 있는 경우 로그인 페이지로 이동
		4. 문제가 없는경우(로그인) sessionMain.jsp 이동
		   ( 로그인 없이는 접근 불가능, 로그인된 아이디를 출력)
		5. 로그아웃 버튼
		
		처음 form을 첫페이지에 만들고 중간에서 아이디랑 비번 받고 페이지 이동 코드 만들고 마지막에 main 에서 출력해주면됨
		결국 중간페이지 Pro에서 코드 다 작성함 로직이랑 ㅇㅇ 
		
	 -->
	
	 <!-- 문제가 그렇게 친절하지 않음 걍 머머해라 이렇게 던져줌. 
	 	  문제가 주어지면 문제를 어떻게 구성하고 표현하는 능력 알고리즘 문제같은경우 일단 구성해서 어떻게 짤지가 더 중요하지
	 	  결국 큰그림 먼저 그리는거지 ㅇㅇ 당연한거 ㅇㅇ
	 	  
	      -->

	
	<form action = "sessionLoginPro.jsp" method = "post">
	
	 아이디:<input type = "text" name = "id"> <br><br>
	 비밀번호:<input type = "password" name = "pw"><br><br>
	 <input type = "submit" value = "로그인">
	 
	  

</body>
</html>