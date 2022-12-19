package com.itwillbs.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;

public class TestDAO {

	static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	static final String DBID = "root";
	static final String DBPW = "1234";
	
	public void testInsert() throws Exception{
		Class.forName(DRIVER);
		// 2. 디비 연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		// 3. sql작성 & pstmt 생성
		String sql = "insert into test_member values(?, ?, ?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		// 4. sql 실행
		
		pstmt.setString(1, "kindstory" );
		pstmt.setString(2, "1234" );
		pstmt.setString(3, "Michael" );
		
		pstmt.executeUpdate();
		
	}
		
	public int joinMember(TestDTO dto){
		
		int result = -1;
	try{	
		Class.forName(DRIVER);
		// 2. 디비 연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		
		String sql = "select * from test_member";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();

		while(rs.next()){
			
			if(!dto.getId().equals(rs.getString("id"))){
				
			
			String sql1 = "insert into test_member values(?, ?, ?)";
			
			pstmt = con.prepareStatement(sql1);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());         				
			
			pstmt.executeUpdate();
			return result = 1;
			
			}
			else {
				return result = 0;
			}		
		}
	} catch(Exception e){
		e.printStackTrace();
	}
	
		return result;
		
		
	}

	
	
}
