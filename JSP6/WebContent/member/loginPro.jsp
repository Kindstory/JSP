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

	<h1>loginPro.jsp</h1>
	<%! 
		static final String DRIVER = "com.mysql.cj.jdbc.Driver";
		static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		static final String DBID = "root";
		static final String DBPW = "1234";
	%>
	
	
	
	<%
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		
		// 전달된 정보 저장(id, pw)
		//String id =	request.getParameter("id");
		//String pw = request.getParameter("pw");
		
	
		
		// 연필 지우개를 필통에 담아서 가져가야한다. 자바에서는 메모리 낭비라고 생각할 수도 있지만,
		// 10자루 용량 필통에 2자루만 넣어다니면 헐렁하지 나머지 빈공간이 남아서 낭비라고 비효율적이라고 생각할 수 있지만
		// 나중에 Spring framework가면 작은거 하나도 객체에 담아서 다닌다.
	%>
	
	<jsp:useBean id = "mb" class = "com.itwillbs.member.MemberBean"/> 
<!-- 	여기 적어주면 import할 필요가 없음, 객체로 만들면 import하고 -->
	
<%-- 	<jsp:setProperty property = "id" name = "mb2" /> --%>
<%-- 	<jsp:setProperty property = "pw" name = "mb2" /> --%>
	<jsp:setProperty property = "*" name = "mb" />  <!-- 알아서 개수만큼 넘어감 -->
	<%
		System.out.println(mb);
	
		// 로그인 체크하는 로직  
		
		////////////////////////////////////////////////////////////////////////////
		
		
		// 1. 드라이버 로드
			Class.forName(DRIVER);
		// 2. 디비 연결
			Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		// 3. SQL작성(select) & pstmt객체
			String sql  = "select pw from itwill_member where id=?";   // id도 pk고 password도 not null임.
			PreparedStatement pstmt = con.prepareStatement(sql);		/*  id가 존재하는데 pw가 없을수 없지.
																		   무조건 같이 있어야 하는데, 정보가
																		   없다면 회원이 아니다 라는 것임 */
																		   
		// ???
		  pstmt.setString(1, mb.getId());
			
		// 4. SQL 실행
			ResultSet rs = pstmt.executeQuery();
		
		// 5. 데이터처리
			if(rs.next()){
				// 아이디 있음, 회원
				if(mb.getPw().equals(rs.getString("pw"))){
					// 아이디 있음, 비밀번호 동일, 본인
					// => 로그인 성공 -> 정보 이동
					
					// 로그인 정보(ID) 저장, 공유 
					// session 영역에 저장, 공유
					session.setAttribute("loginID", mb.getId());  // DB에도 있고 여기에도 있어서 둘중에 하나 쓰면 됨.
					//session.setAttribute("loginResult", "OK");
					response.sendRedirect("main.jsp");
					
					
				}else{
					// 아이디 있음, 비밀번호 다름, 비밀번호 오류
					%>
					<script type="text/javascript">
						alert("아이디 혹은 비밀번호가 잘못되었습니다."); 
						history.back();
					</script>
					<% 
				}
				
			}else{
				// 아이디 없음, 비회원
				%>
				<script type="text/javascript">
					alert("아이디 혹은 비밀번호가 잘못되었습니다."); /* 머가 잘못되었는지 안알려줌. 보안을 신경쓴거임. */
					history.back();									 /*시간을 그만큼 더 써라고 더 안정성이 높아지니까 */
				</script>
				<% 
			}
		
		/////////////////////////////////////////////////////////////////////////////
	%>
	
</body>
</html>