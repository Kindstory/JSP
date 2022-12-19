<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionLoginPro.jsp</h1>
		
	<%
		// 0. 한글처리 (한글 깨지니까 setcharacterencoding = utf-8로)	
		request.setCharacterEncoding("UTF-8");
		
		// 1. 전달된 파라미터 저장
		String id = request.getParameter("id");   // name으로 전달 받음.
		String pw = request.getParameter("pw");
		
		System.out.println("전달된 정보 : " + id + ", " + pw);  // 찍어보면 됨. 꼭 해야하는건 아닌데 모르면 이렇게 확인하면 됨.
																// console창에 찍힘.
		
		 if(id.equals("chris")){							
			 // 아이디가 있다.
			 if(pw.equals("1234")){
				 // 회원 => 로그인 성공
				out.println("로그인 성공");
				 // 회원 정보를 저장 session영역
				 session.setAttribute("id", id);
				 session.setAttribute("LoginResult", true);    // 로그인이  성공햇을떄, session에다 정보를 저장해놨음
				 												// 정보가 저장되있으면 로그인이 성공한거임.
				 												// 이 정보가 session에 없을경우, 로그인이 실패한거임.
				 												
				 // 메인페이지로 이동
				//response.sendRedirect("sessionMain.jsp");
				 %>
				  <a href = "sessionMain.jsp"> sessionMain페이지로 이동 </a>  
		 <%	 
			 }
			 else{
				 //  아이디는 있지만, 비밀번호가 다른경우
				 out.println("비밀번호 오류!");
				
 				 // 로그인 페이지 -->
 				 
 				 // response.sendRedirect("sessionLogin.jsp");
 				 %>				 
 				 <a href = "sessionLogin.jsp">sessionLogin페이지로 이동</a> 
		 	<% 		 
			 }
			 
		 }
		
		 else{
			 // 아이디가 없음.
			 out.println("아이디가 존재하지 않습니다.");
	
//  			 	<script type = "text/javascript">       
//   			 	   alert("계정정보가 없습니다.");         자바스크립트 코드 넣고 싶으면 스크립트릿 닫고 넣어주면 됨.
//  			 	</script> -->
			 
		 }
			%>													
												
												
												
		<!-- 2. 비교 admin/1234     // 내가 놓친 부분을 계속 비교 하고 머가 잘못됫는지 사고해야 실력이 올라감.  -->
		
		
	
	
<%-- 		아이디 : <%= id %> 		<!-- 화면에 출력  --> --%>
<%-- 		비밀번호 : <%= pw %> --%>   <!--  비밀번호는 공개하면 안되니 출력 ㄴㄴ -->
		
		
</body>
</html>