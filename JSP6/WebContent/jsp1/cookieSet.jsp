<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieSet.jsp</h1>  
	<h2> 서버 </h2>
	
	<%
		// 서버
		System.out.println("서버 : 클라이언트의 요청 받음");
		System.out.println("서버 : 클라이언트와의 상태를 유지하기 위해 쿠키 객체 생성");
		
		// 서블릿 API 사용
		// 쿠키객체 생성(메모리 로드, HDD저장x)
		Cookie cookie = new Cookie("name", "LiveHard");  // 기본생성자가 없어서 오버로딩된 생성자를 불러야함.
		Cookie cookie1 = new Cookie("am", "Chris");
		// 쿠키설정(쿠키 사용기간 설정)
		cookie.setMaxAge(600); 				// 10분   -> 10분동안 사용은 할 수 있는거고, 쿠키 데이터는 남아있음. 유효기간이 10분 인거임.
		cookie1.setMaxAge(600);								// 오늘 하루 안보기 7일 안보기 이것도 다 이거 시간설정임.
		// 쿠키 보내기(클라이언트)
		response.addCookie(cookie);   				// 하드디스크 쿠키폴더에 저장
		response.addCookie(cookie1);
		System.out.println("서버 : 쿠키 정보 생성 전달 완료");  			// 여기까지가 서버의 역할
																// 실행후 f12 application창에 쿠키 정보 생성되있음.
 		String id = request.getParameter("id");	   				// 검색하고 자주 찾아보는 정보가 쿠키에 저장되니까
 	 	String pw = request.getParameter("pw"); 				// 인터넷에 막 검색하는 정보 뜨지 ㅋㅋㅋ
																// 시계찾아보면 시계 엄청 뜨고 ㅋㅋㅋㅋ
																// 쿠키초기화하고나면 안뜸. 
																// 검색 정보 없으면 성별 나이 그런 기본정보로 정보 띄워줌.
																// slack.com (개발자들이 쓰는 메신저 Github랑 연동 가능)																			
	%>
		
		아이디 : <%= id %>     <!-- 위에 변수 id로 받으니까 밑에서 출력이 되는거지 ㅋㅋ  
								   저 위에껄 안 받으면 변수가 없는데 어떻게 출력이 되노 ㅋㅋ -->
		비밀번호 : <%= pw %>
	
	
 		<script type = "text/javascript"> 
   			alert(" 쿠키값 생성 "); 
   			location.href = "cookieTest.jsp"; 
		</script>  
		
		
</body>
</html>