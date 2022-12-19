<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieDel.jsp</h1>
	<h2> 서버 </h2>
	
	<%
		// 쿠키값 삭제(직접HDD 파일 삭제 x) 쿠키삭제라는건 쿠키를 못 쓰게 만드는 거임.
		// => 쿠키의 유효기간을 재설정
		
		// 쿠키값 가져오기(현 쿠키정보)
		Cookie[] cookies = request.getCookies();	
		
		// 생성한 해당 쿠키를 찾기
		if(cookies != null){
			for(int i = 0; i<cookies.length; i++){
				// 생성한 쿠키이름을 사용 비교
				if(cookies[i].getName().equals("name")){
					// 쿠키 삭제
					cookies[i].setMaxAge(0);  // 서버는 유효기간이 0으로 됬지만 client(cookieSet)는 아직 10분 유효기간 들고 있음.
					
					// 변경된 쿠키정보를 전달
					response.addCookie(cookies[i]);
					
				}
			}
			
		}
		
		Cookie[] cookies1 = request.getCookies();	
		
		// 생성한 해당 쿠키를 찾기
		if(cookies1 != null){
			for(int i = 0; i<cookies1.length; i++){
				// 생성한 쿠키이름을 사용 비교
				if(cookies1[i].getName().equals("am")){
					// 쿠키 삭제
					cookies1[i].setMaxAge(0);  // 서버는 유효기간이 0으로 됬지만 client(cookieSet)는 아직 10분 유효기간 들고 있음.
					
					// 변경된 쿠키정보를 전달
					response.addCookie(cookies1[i]);
					
				}
			}
			
		}
	%>
	
	<script type = "text/javascript">						/* 방문했을떄 id정보를 cookie에 담아서 server에 보내면 									
															   저장되있는걸 꺼내서 쓰면 됨 */
			alert(" 쿠키값 삭제 ");
			location.href = "cookieTest.jsp";
	</script>
	
</body>
</html>