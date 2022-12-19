<%@page import="com.itwillbs.member.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	이 로그인프로의 동작을 DAO에서 처리함 객체지향적으로 -->

	<h1>loginPro2.jsp</h1>

	<%
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		
	%>	
		<jsp:useBean id ="mb" class = "com.itwillbs.member.MemberBean"></jsp:useBean>
		<jsp:setProperty property = "*" name = "mb"/>

	<% 
		
		// 연필 지우개를 필통에 담아서 가져가야한다. 자바에서는 메모리 낭비라고 생각할 수도 있지만,
		// 10자루 용량 필통에 2자루만 넣어다니면 헐렁하지 나머지 빈공간이 남아서 낭비라고 비효율적이라고 생각할 수 있지만
		// 나중에 Spring framework가면 작은거 하나도 객체에 담아서 다닌다.
	
	
	
		System.out.println(mb);
	
		// 로그인 체크하는 로직  
		
		// MemverDAO 객체 생성
		MemberDAO dao = new MemberDAO();
	
		// 로그인 체크 기능 - loginMember(mb)
		
		int result = dao.loginMember(mb);
		
		if(result == 0){
			// 비밀번호 오류		
			%>
			<script type="text/javascript">
				alert('비밀번호 오류!');
				history.back();
			</script>	
		<% 
		}else if(result == -1){
			// 아이디 없음, 비회원
	
		%>
			<script type="text/javascript">
				alert('아이디 없음!');
				history.back();
			</script>	
		<% 
		}else{
			
			
			session.setAttribute("loginID", mb.getId());
			%>
			<script type="text/javascript"> 
				alert('로그인 성공!');
				location.href = "main.jsp";
 			</script>	  
			
		<%	//response.sendRedirect("main.jsp");
		}
		%>
		
<!-- 		<script type="text/javascript"> -->
<!--  				alert('로그인 성공!'); -->
<!--  				location.href = "main.jsp"; -->
<!-- 		</script>	 -->
			
<!-- 	DB에 관한 동작은 다 밖으로 빼서 하는거임 성능이 떨어지기 때문에, 그렇게 하는 거임   -->
 <!-- 이건 보여주기 용이라서 로직이 관련된거긴한데,  -->
		
	
</body>
</html>