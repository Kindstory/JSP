<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insert.jsp</h1>
	<%!
	static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	static final String DBID = "root";
	static final String DBPW = "1234";
	
	%>
	
	<% 
	   // 0.  드라이버 설치
	   // 1.  드라이버 로드
// 	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Class.forName(DRIVER);
	   System.out.println(" 드라이버 로드 성공!");
		
 	   // 2.  디비연결
	   Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
 	   /* Connection도 인터페이스인데, DriverManager클래스에 연결에 필요한 기능이 없으니까
 	        연결에 필요한 메서드가 있는 Connection인터페이스에 넣어서  사용하는거임 */
 	   System.out.println(" 디비 연결 성공! ");
 	   System.out.println("con : " + con);
 	   
 	   String id = request.getParameter("id");
 	   String pw = request.getParameter("pw");
	   // localhost자리에 다른 사람 IP주소 쓰면 그 사람 디비에 데이터를 넣을 수 있음.
	   
	   //String sql = "insert into itwill_member values('1', '1234', 'Chris', 32, 'male', 'gkdlsnsrkf@naver.com', '2022-08-04')";
// 	   String sql = "insert into itwill_member values('"+id+"', '"+pw+"', 'Ethan', 30, 'man', 'sjwgkdl@naver.com', '2022-05-26')";
	   String sql1 = "insert into itwill_member(id, pw, name, age, gender, email, regdate) values(?,?,?,?,?,?,?)";
	   
	   //  SQL 실행하는 객체
	   PreparedStatement pstmt = con.prepareStatement(sql1);
	   // prepareStatement는 Connection인터페이스의 메소드
	   
	   // ???
	   // pstmt.setXXXX(?위치, 값); 컬럼명의 타입에 따라서 메서드가 변경
	   pstmt.setString(1, id);
	   pstmt.setString(2, pw);
	   pstmt.setString(3, "Michael");
	   pstmt.setInt(4, 34);
	   pstmt.setString(5, "Man");
	   pstmt.setString(6, "gkdlsnsrkf@gmail.com");
	   pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
	   
	   // SQL 실행
	   pstmt.executeUpdate();
	   
	   System.out.println("회원가입 완료!");
	   %>
	   
	   <a href = "insertTest.jsp">insertTest페이지로 이동</a> 
</body>
</html>