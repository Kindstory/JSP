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
	<h1>delete.jsp</h1>
	
	<%!
		static final String DRIVER = "com.mysql.cj.jdbc.Driver";
		static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		static final String DBID = "root";
		static final String DBPW = "1234";
	
	%>
	
	<% 
		Class.forName(DRIVER);
	
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		
		String sql = "delete from itwill_member where id=? and pw=?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, "sdf");
		pstmt.setString(2, "12313");          // id,pw 둘 다 맞아야 삭제 됨.
		
		pstmt.executeUpdate();

	
			// id, pw 동시에 비교하는구문 안 쓰는게 좋음 상당히 보안에 취약함
	%>
			

</body>
</html>