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
	<h1>select.jsp</h1>  <!-- 드라이버 로드 디비 연결 2단계 다 필요 -->
	<%!
		static final String DRIVER = "com.mysql.cj.jdbc.Driver"; 
		static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		static final String DBID = "root";
		static final String DBPW = "1234";
	%>
	
	<%
		Class.forName(DRIVER);
		System.out.println("드라이버 로드 성공!");
		
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("DB연결 성공!");
		System.out.println("con : " + con);
		
		// 3. SQL & pstmt
		// sql - 전체 회원목록 조회
		String sql = "select * from itwill_member";  /* 테이블명 왜 _(언더바)까지 쓸까? 
														order라는 테이블을 쓰면 대체할 단어가 없으니까.
														tbl_order 이런식으로 테이블 컬럼명을 씀. */
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		
		// 4. SQL 실행
		ResultSet rs = pstmt.executeQuery();
		// pstmt.executeUpdate();
		// => insert, update, delete  -> 테이블이 '변화'가 있음(영향을 받음)
		// pstmt.executeQuery();
		// => select     ->  그냥 테이블 '조회'
		
		/* 테이블 조회하면 record set(데이터덩어리)이 생기는데, 위(header부분)에 BOF(Begin Of File)     
		   밑(footer부분)에 EOF(End Of File) 가 생략되어있음 */
		   
		/* record set을 저장하는게 result set임. */
		   
		/* 테이블의 조회했을때, 화살표가 커서임 실제 workbench에는 없지만 개념적으로 존재함.
		   workbench에서는 컬럼부터 커서를 두는 거임 커서를 옮기면 가로로 한 줄씩만 조회됨 
		   행기준이니까 EOF만날때까지 그걸 계속 반복하다가 EOF를 만나면 가리키는 행이 없으니까
		   종료되는거임 이런식으로 데이터를 조회하는 거임. */
		
		// 5. 데이터 처리 (select) 
		
// 	    while문은 초기식 증감식이 필요없음 조건만 참이 되면 무조건 실행함. 데이터가 끝날때까지 무한 반복
// 		if문은 한 번만 반복

      /*if*///while(rs.next()){ // 데이터가 있다. (커서가 보고있는 값이 존재한다)
			// 커서는 행기준으로 데이터를 조회 가능
			%>
			
			<table border = "1">
			<tr>
			  <td>아이디</td>
			  <td>비밀번호</td>
			  <td>이름</td>
			  <td>나이</td>
			  <td>성별</td>
			  <td>이메일</td>
			  <td>회원가입일</td>
			</tr>	

			
		<% 
 			while(rs.next()){
//  				System.out.println(rs.getString(1)); // admin가져옴  1행의 id컬럼열부터 가져오니까 순서대로 ㅇㅇ
// 				out.println(rs.getString(2));
// 				out.println(rs.getString(3));
// 				out.println(rs.getInt(4));
// 				out.println(rs.getString(5));
// 				out.println(rs.getString(6));
// 				out.println(rs.getDate(7));

			// select 결과데이터 가져오기
			// * rs.getXXXX("컬럼명");
			// * rs.getXXXX("id");
		
			
			String id = rs.getString(1);  // 컬럼은 배열이랑 다르게 1부터 
			String pw = rs.getString("pw");  // 인덱스가 검색속도가 빠름 
			String name = rs.getString("name");
			int age = rs.getInt("age");
			String gender = rs.getString("gender");
			String email = rs.getString("email");
			String regdate = rs.getString("regdate");
			
			if(id.equals("admin")){
				continue;
			}
			
			%>
			
			<tr>
			  <td><%= id %></td>
			  <td><%= pw %></td>
			  <td><%= name %></td>
			  <td><%= age %></td>
			  <td><%= gender %></td>
			  <td><%= email %></td>
			  <td><%= regdate %></td>
			</tr>	
			
			<% 
			
		} // while
			
		System.out.println("회원목록 조회 성공!");
		
			%>
			
<!--  out.println(HTML화면에만), system.out.println(콘솔창에만) --> 
		   
		   
<!--  조회는 했으나 데이터는 안뜸, 조회는 했으나 데이터는 가져오지 못함. -->
		 

			

		 
		
	
			
			





		
	
	
	<!--  패키지 - 관련있는 묶음
	
		 com.mysql.cj.jdbc.Driver     
		 
		 com.mysql.cj.jdbc까지가 패키지.
		 거꾸로 읽어보면, 웹페이지 주소랑 비슷함. (asdasd.qwrtq.com)
		 
		 A 개발자 - test.jsp 생성
		 B 개발자 - test.jsp 삭제    
		 
		 충돌이 남 같은 이름의 파일이라, 
		 다른데 넣어서 실행하게 하면 충돌이 안 남.
		 
		 B 개발자를 기다릴 수 없음 휴가니까 ㅇㅇ 
		 
		 회사 도메인주소(고유정보) -> 이걸 패키지 명으로 쓰면, 회사마다 고유한 패키지명이 생김.
		 
		  	www.itwillbs.com.Java.Test 
		  	
		  	모든 회사들이 www라는 주소를 쓰고 있어서, www를 생략하자.
		  	
		   => itwillbs.com.java.Test 이렇게 하니까 도메인 느낌이 안 나는거 같다 그래서 도메인 주소를 뒤집자.
		   
		   => com.itwillbs.java.Test      ->   com.mysql.cj.jdbc.Driver랑 모양이 비슷함.  
		   
		   디폴트 패키지에 먼가를 하면 안됨 회사가서 -> 패키지를 이런식으로 만들어서 먼가를 해야 됨.
		 
		 
		  -->
	
	
</body>
</html>