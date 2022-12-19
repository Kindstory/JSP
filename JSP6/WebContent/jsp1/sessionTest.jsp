<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>sessionTest.jsp</h1> <!--  session은 jsp 내장객체이면서 동시에 영역객체이면서, 단독객체이기도함. -->
	
	<!-- naver서버도 결국 컴퓨터임. 통신을 할 때, 항상 연결을 유지하고 있으면 느려질 수 밖에 없음. 
		우리나라 국민 전부가 동시접속을 하면 그 많은 정보를 네이버가 유지하기 힘들다. 컴퓨터는 데이터가 많아지면
		많아질수록 데이터 유지가 힘들 수 밖에 없다. 내가 정보를 요청하면 네이버는 정보를 끊어 놓는다. 
		근데 이전 사람이 가져온정보가 내가 필요할 수가 있다. 그래서 나온 개념이 Session과 Cookie임. 
		Session과 Cookie는 서버측의 개념이다.-->
		
	<h2>세션Session</h2>  	
	* HTTP 통신의 특성상 상태유지가 불가능 하기 때문에 
	  상태를 유지하기 위해서 사용하는 개념.
	* 서버측에서 관리하는 데이터 (보안적 우수)
	* 브라우저 1개당 1개의 세션 생성
	* 세션 생성 : session.setAttribute("키", 값);
	* 세션 사용 : session.getAttribute("키");
	* 세션 삭제 : session.removeAttribute("키"); <!-- 값 하나만 지움 -->
	* 세션 초기화 : session.invalidate();   <!-- 전체 다 지우는거 -->
										<!-- 세션 초기화를 많이 씀 -->
    <!-- 세션을 사용하고 나면 데이터를 남겨두는게 좋지 않음 악용의 가능성 때문에,
		 그래서 초기화를 함. -->
	
	<!-- 세션도 쿠키에 속하지만 일반적으로 다른 공간에 들어가는거임. -->
	
	<!-- 세션에 itwill 이란 값이 있으면 아 이 사람이 서버에 한번 왔다간 사람이네 이렇게 생각함 --> 
					
	<hr>
		
		<%
			// 세션정보 가져오기
			String name = (String)session.getAttribute("name");
			String id = (String)session.getAttribute("id");
			
			if(name == null){
				name = "세션값 없음!";
			}
			if(id == null){
				id = "세션값 없음!";
			}
			
		%>


	<h2> 클라이언트 </h2>
	
	<h3> 세션값 : <%=name %></h3>
	<h3> 세션값 : <%=id %></h3>
	
	<input type = "button" value = "세션값 생성" onclick="location.href = 'sessionSet.jsp';"> <br>
	<input type = "button" value = "세션값 삭제(ITWILL)" onclick="location.href = 'sessionDel.jsp';"> <br>
	<input type = "button" value = "세션값 초기화" onclick="location.href = 'sessionInv.jsp';"> <br>
	
	<!-- button을 하나로 만드는거 고민  -->
	
	
	
	
								
										

	
	
	
	
	
</body>
</html>