<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testPro2.jsp</h1>
	
	<% 
		// Post방식으로 한글 데이터를 전달하면 인코딩변경(한글깨짐)
		// => 데이터 저장전에 가장먼저 처리
		request.setCharacterEncoding("UTF-8");
		
        // Get방식은 한글 안 깨짐.
        
	
		//이름
		String name = request.getParameter("name");
		//나이
		int age = Integer.parseInt(request.getParameter("age"));
		
	
		
	%>
	
	
		 이름 : <%= name %>, 나이 <%= age %> <br>
		<!--  20살 이상 "성인입니다" ,20살 미만 "미성년자입니다." -->
		
	<%
	
		if(age >=20) {
			out.println("성인입니다." + "<br>");
		}
		else if(age < 20) {
			out.println("미성년자입니다." + "<br>"); 
		}
			
	%>	
	
	<% 
	
		String gender = request.getParameter("gender");
// 		String hobby = request.getParameter("hobby");
		String [] hobbys = request.getParameterValues("hobby"); //javax.servlet -> 패키지 
																// ServletRequest -> 클래스
																// getParameterValues -> 메소드
		String room = request.getParameter("room");
		String [] tendencies = request.getParameterValues("tendency");
		String mbti = request.getParameter("mbti");
		
		
	// 혼자 만들어보고 고민하는 시간을 가져야함. 바로 구글하면 혼자 코드 짜는 능력이 안 생김 
	// 시간이 해결해준다 단, 제대로 쌓아왔을때. 내가 말했잖아 ㅇㅇ 난 이미 알고 있었지
	//  reference 보는 습관은 기본이지 ㅇㅇ 면접때도 물어본다잖아 ㅇㅇ 

	%>
		
	  성별 : <%= gender %> <br>
	  강의장 : <%= room %> <br>
	 MBTI : <%= mbti %> <br>

	<% 
	if(hobbys != null){
		for(int i = 0; i<hobbys.length; i++){  // null 값이면 배열의 길이가 측정이 안됨 그래서 에러가 남.
											  /* 배열은 null값이 나오는지 안나오는지 먼저 파악하고 반복문 
												  돌려야 함. */
		%>										
		
			취미 : <%= hobbys[i] %> <br>
			
		<% 
		} 
	}   
		%>
	<%
	if(tendencies != null){
		for(int i = 0; i < tendencies.length; i++ ){
	
	%>
		
		성향 : <%= tendencies[i] %> <br>
		
		<%
		}
	}
		%>
		
<%-- 	  취미 : <%= hobbys[1] %> <br> --%>
<%-- 	  취미 : <%= hobbys[2] %> <br> --%>	
		
</body>
</html>