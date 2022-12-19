<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>updatePro.jsp</h1>
	<%
		// 로그인 체크
		String id = (String)session.getAttribute("loginID");
		if(id == null){
			response.sendRedirect("loginForm.jsp"); 		 /* 자바 스크립트로 구현이 안됨 
															 	JSP -> html -> js 이렇게 실행 순서가 됨.  
															 	이래서 JSP로 코드로 구현함. */										 	
		}					
		
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		
		// 전달된 정보 저장 <액션태그 - 자바빈>
	
	%>
	
		<jsp:useBean id = "mb"  class = "com.itwillbs.member.MemberBean"></jsp:useBean>
		<jsp:setProperty property ="*" name = "mb"/>
		
		
	<%
		// 수정할 데이터
		System.out.println(mb);
	
		// MemberDAO
		MemberDAO dao = new MemberDAO();
		
		// 정보 수정 메서드(이름, 나이, 성별, 이메일)
		int result = dao.updateMember(mb);
		
		// 페이지 이동
	if(result == 1){
			// 정보수정 성공
			%>
				<script type="text/javascript">
					alert("정보수정 완료~!");
					location.href = "main.jsp";
				</script>
			<%
		}else if(result == 0){
			//  정보 수정 실패 - 비밀번호 오류
			%>
				<script type="text/javascript">
					alert("수정실패 : 비밀번호 오류");
					history.back();
				</script>
			<% 
		}else{ //result == -1
			  // 수정실패 - 아이디 정보 없음
			%>
			<script type="text/javascript">
				alert("수정실패 : 아이디 정보 없음");
				history.back();
			</script>
		   <% 
			  
		}
		
		
	%>	
</body>
</html>