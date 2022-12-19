package com.itwillbs.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO { 
	// DAO(Data Access Object : 데이터 정보처리 객체
	// => DB에 관한 모든 정보를 처리하는 객체
	// DB연결할때는 얘를 무조건 써야만 하는 거임. 이 안에서 DB연결의 모든 동작을 수행함.
	
	// 공통으로 사용되는 객체를 선언.  이걸 한 번만 하면 됨. 어차피 공통이니까 ㅇㅇ
	Connection con = null; // 디비 연결정보를 저장, 처리
	PreparedStatement pstmt = null; // SQL 쿼리 실행, 처리
	ResultSet rs = null; // select 구문 결과 저장
	String sql = ""; // sql 쿼리 저장
	
	// 디비 연결 메서드 
	private Connection getCon() throws Exception{ // Exception이 Exception들 중 최상위 객체니까 하나면 2가지 예외 동시에 다 처리함.
		String DRIVER = "com.mysql.cj.jdbc.Driver";
		String DBURL = "jdbc:mysql://localhost:3306/jspdb";     
		String DBID = "root";                 	
		String DBPW = "1234";
		Class.forName(DRIVER);
		System.out.println("드라이버 로드 성공");
		
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW); 
		System.out.println("디비연결 성공");
		System.out.println(" con : " + con);
		
		return con;
	}
	
	// 디비 자원해제 => connection, preparedstatment, resultset 이 3개를 자원해제 해줘야함. DB연결에 필요한 항목들
	public void closeDB(){
		
		try {
			if(rs != null)rs.close();  				/* 데이터 안정성을 위해서 역순으로 처리해줌. 순서가 상관이 없으나, 매우 드문 상황으로 거의 없는상황으로
													con을 먼저 끄면 rs를 못쓰는 상황 발생가능성, 거의 없으나 이런것도 신경씀 개발자는 */
			if(pstmt != null)pstmt.close();
			
			if(con != null) con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// Object밑에 throwable 밑에 exception이 있고 그 밑에 exception종류 다 있음.
	
	
	// 회원가입(메서드 여야함) - insertMember(MB)
	public void insertMember(MemberBean mb) throws Exception{  // 리턴이 있을수도 있고 없을수도 있음 개발자의 판단.
//		final String DRIVER = "com.mysql.cj.jdbc.Driver";
//		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";     
//		/*static final*/final String DBID = "root";                 	// static안됨 메서드 안이라서 그런가 지역변수라 
//		final String DBPW = "1234";
		
		//1. 드라이버로드
		 // 예외가 발생할 수도 있는 상황
//			Class.forName(DRIVER);
//			System.out.println("드라이버 로드 성공");
//			//2. 디비연결
//			Connection con = DriverManager.getConnection(DBURL, DBID, DBPW); // sql exception은 연결이 문제가 있을때 발생
//			System.out.println("디비연결 성공");
//			System.out.println(" con : " + con);
			//3. sql 작성 & pstmt 객체 
			
			// 1, 2 디비연결
			try { 
				con = getCon();  // 이떄 con객체가 null이 아니게 되는거임. 객체 생성순간 이상태로 finally까지 오게됨.
								// finally까지 왔다는 건 동작이 끝났다는 거임. 
								// 정보가 남아있다면 close();해라 이말임 그래서 != null 되는거임.
				String sql = "insert into "    
						+ "itwill_member(id, pw, name, age, gender, email, regdate) "
						+ "values(?, ?, ?, ?, ?, ?, ?)";
		
			PreparedStatement pstmt = con.prepareStatement(sql);

			
			pstmt.setString(1, mb.getId());
			pstmt.setString(2, mb.getPw());
			pstmt.setString(3, mb.getName());
			pstmt.setInt(4, mb.getAge());
			pstmt.setString(5, mb.getGender());
			pstmt.setString(6, mb.getEmail());
			pstmt.setTimestamp(7, mb.getRegdate());
			//4. sql실행
			pstmt.executeUpdate();
			
				
				
				// 모듈화 과정 -> 연결되는 동작들을 하나의 메서드안에 넣어서 다 처리 해버림.
			} catch (Exception e) {
				
				e.printStackTrace();
			}  
			
			finally{
				// 디비처리동작 끝
					try{
						// 자원해제
						if(pstmt!=null){ 	// 맨위에 변수를 null로 줬기 때문에, null이 아니라면 DB를 다 썼는데 연결정보가 남아있다는 얘기임
							pstmt.close();  // 이걸 써줘야 프로세스가 끝남. 자원이 안남아서 효율적인 관리 가능
						}    
						if(con!= null){
							con.close();
						}
						
					}catch(SQLException e){
						e.printStackTrace();
					}
				
			}
			
			// 자바파일에서 set하고 jsp에서 get해서 화면에 출력
			
//			
//			String sql = "insert into "    
//						+ "itwill_member(id, pw, name, age, gender, email, regdate) "
//						+ "values(?, ?, ?, ?, ?, ?, ?)";
//		
//			PreparedStatement pstmt = con.prepareStatement(sql);
//
//			
//			pstmt.setString(1, mb.getId());
//			pstmt.setString(2, mb.getPw());
//			pstmt.setString(3, mb.getName());
//			pstmt.setInt(4, mb.getAge());
//			pstmt.setString(5, mb.getGender());
//			pstmt.setString(6, mb.getEmail());
//			pstmt.setTimestamp(7, mb.getRegdate());
//			//4. sql실행
//			pstmt.executeUpdate();
			
			
			
		}
	
	
//	 1) 예외를 직접처리 X 
//	 throws Exception 
//	 
//	  2) 예외를 직접처리 O
//	 
//	 try{
//		 예외가 발생할지 모르는 코드         예외발생하면 -> try구문으로 가고 -> finally는 예외 발생하든 안하든 무조건 실행해줌.
//	 }
//	 catch{
//		예외가 발생했을떄 처리
//	 }
//	 finally{
//		 
//	 }
	
	//  가끔 한 번 발생하는 상황에 예를들면, 드라이버로드를 실패했다 하면, 메시지를 통해서 드라이버를 다운 받으세요. 
	// 	추가적으로 다운로드를 하세요 라는 메시지를 남겨줄수 있음. 일반적으로 Exception하나만 해놔도 되는데 
	// 굳이 왜 Exception에 따로 분리를 했느냐? 이런상황에 대한 대처를 확실하게 화면에 표현해주기 위해 Exception하나로 
	// 다 포괄하지 않고, 주로 예외를 꼼꼼히 보는 계열사가 Line임.  머 요즘 왠만한 서비스회사는 다 꼼꼼히 본다 예외를
	// 일부러 면접관에게 슥 내가 자신있는 주제를 떠보고 이런 얘기가 나오게 슥 떠보는거지
	// 면접을 당한다 생각하지 말고 내가 원하는 장치들을 넣어서 일부러 슥 던지는거지 박진영이 뮤비에 2:00pm 그런 시계그런거 넣듯이 ㅇㅇ
	
	// 객체를 던진다 라는 표현을 씀. 부모가 Throwable 이니까 catch가 받는 거임. 던지면 받는거임 부모가 예외를 던진다 ㅇㅇ 그럼
	
	/* 문장이 받는거임. try{예외가 발생할지 말지 모르는 코드 }  발생할껄 알면 그건 Error임. 내가 알고 있으면 그건 더이상 예외가 아님. 에러지.
	 	먼 예외가 발생할지 정확히 모르잖아 종류가 여러 개라 그러니까 걍 Excepttion하나로 다 포괄시켜버리는거지 예외란 기본적인거 외적인거가
	 	발생하는걸 말하는데 보통 지금과 같은 상황 외부와의 관계에서 발생활 확률이 높음 DB연결 같은	*/
	
	/* 자바에서 가장 메모리를 많이 잡아먹는일이 I/O(입출력)다.  Mysql에서 가져오고 넣어주는 입출력
	   자바는 메모리 관리를 신경안써도 됨.  Garbage Collector가 관리해주는 managed 언어니까. 근데
	   그것도 100퍼센트 믿으면 안된다.  */
	 
	
	
	// jsp에서는 중간단계 서버에서 동작하기 때문에 에러없이 작동함 근데 자바코드는 예외처리 해줘야 함.
	
	
	// 회원가입(메서드 여야함) - insertMember(MB) 메서드 생성
	
	
	
	// 로그인프로의 동작을 DAO에서 처리함 객체지향적으로
	
	// 로그인 여부 체크 시작 - loginMember(MB)  => 커리를 실행했을떄 결과가 로그인을 할꺼냐 뒤로가기를 할꺼냐를 결정하는거임.
	// loginPro의 rs 커리를 이 클래스 MemberDAO 에서는 모름. 그래서 리턴 해줘야함.
	public int loginMember(MemberBean mb) throws Exception{
		// 1 - 로그인, 0 -비밀번호 오류, -1 : 아이디 오류
		int result = -1;
		
//		final String DRIVER = "com.mysql.cj.jdbc.Driver";
//		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";     
//		final String DBID = "root";                 				// static안됨 메서드 안이라서 그런가 지역변수라 
//		final String DBPW = "1234";
//		
//		Class.forName(DRIVER);
//		
//		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		
		con = getCon(); 
		
		String sql = "select pw from itwill_member where id=?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, mb.getId());
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(mb.getPw().equals(rs.getString("pw"))){
				result = 1;
				
				// return 1;
			}else{
				System.out.println("아이디 혹은 비밀번호가 잘못되었습니다."); // 비밀번호 오류
				result = 0;
			
				// return 0; 
			}
			
		}else{
			System.out.println("아이디 혹은 비밀번호가 잘못되었습니다.");
			result = -1;
			
			// return -1;
		}
		
		return result;
		
		
		 // int 왜 쓰는지, 왜 jsp파일에서 처리하는지  jsp 파일은 화면에 보여줘야 되니까.
	}
	
	// 정보가 너무 많이 필요해서 string으로 하면 equals써야하니까.
	// return은 무조건 하나만 의도치 않게 종료될수 있음.
	
	// 로그인 여부 체크 끝 - loginMember(MB)
	
	// 회원정보 조회 - getMember(id)
	public MemberBean getMember(String id){ // 일일이 그 값(아이디)들을 다 리턴할 수 없음. 필통에 담아서 필통을 리턴함.
		
		MemberBean mb = new MemberBean();
		
		// 1. 드라이버 로드 // 2. 디비연결
		try {
			con = getCon();
		// 3. sql & pstmt
		// 특정 유저의 모든 정보를 조회
		sql = "select* from itwill_member where id = ?";
		pstmt = con.prepareStatement(sql);
		
		// ????
		 pstmt.setString(1, id);
		// 4. sql 실행
		 rs = pstmt.executeQuery();
		
		// 5. 데이터 처리
		
		if(rs.next()){ // 데이터 있을때  -> 데이터 있을때 조회된 회원정보를 저장 -> 필통만들어서 저장해줘야 됨.
						// if문 try밖에 선언 try{} 안에도 지역변수니까
			mb.setId(rs.getString("id"));
			mb.setPw(rs.getString("pw"));     // 쌍따옴표 안에 들어가면 컬럼명이됨. 컬럼명과 MemberBean의 변수이름과 같아야 빠르게 작성됨.
			mb.setName(rs.getString("name"));
			mb.setAge(rs.getInt("age"));
			mb.setGender(rs.getString("gender"));       // DB ResultSet에서 getString해서 자바코드에 setId하고, 그걸 화면에 다시 getId
			mb.setEmail(rs.getString("email"));
			mb.setRegdate(rs.getTimestamp("regdate"));
			
			System.out.println(" DAO : 회원정보 저장 완료 !");

		}
			System.out.println(" DAO : 조회된 회원정보 ");
			System.out.println(" DAo : " + mb.toString());
	
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB();  // 자원해제가 되어있지 않으면 코드가 엄청 느려짐 데이터가 한참 있다 출력됨.
		}
		
		
		return mb;
			
	}
	 
		// 정보 수정 메서드   // 리턴을 할건지 말건지 -> 수정을 어떻게 하느냐를 고민 -> 회원이면서 본인일때만 수정하게 함.
	public int updateMember(MemberBean mb){  // 1  0 -1 로그인 메서드에서 썻던 그걸 말하는 거임.
		// 수정 결과  =>  1 : 수정성공, 0 : 수정실패(비밀번호), -1 : 수정실패(회원이 아닌경우 -> 아이디가 없는경우) => -1이 뜰리는 없음 우리 시스템을 확인하기 위해 넣는거임.
		int result = -1;
		
		// 1.2. 디비연결
		try {
			con = getCon();
			
		// 3. sql & pstmt
		// 1) 수정하려는 정보가 회원, 본인여부 체크
		// 2) 본인일때만, 정보수정
			sql = "select pw from itwill_member where id=?";
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setString(1, mb.getId()); // 여기서 id는 memberBean에 담겨있으니 꺼내줘야함.
			
			// 4. sql 실행
			rs = pstmt.executeQuery(); // select에 실컷 실행하고 rs에 안담으면 의미가 없음. 조회가 안됨 resultset으로 결과를 뽑아줘야 하니까 ㅇㅇ
			
			// 5. 데이터 처리
				// 2) 본인일때만, 정보수정
			if(rs.next()){
				//회원
				if(mb.getPw().equals(rs.getString("pw"))){  // mb에서 받아온 비밀번호(입력한 회원 비밀번호)랑 DB에 resultset에 있는 번호랑 같은지 비교 
					// 회원, 비밀번호 동일 => 본인
					
					// 3. sql(update) & pstmt
					// 특정 사용자의 정보(이름, 나이, 성별, 이메일)을 수정
					sql = "update itwill_memeber set name = ?, age = ?, gender = ?, email = ? where id = ?";
					
					// pstmt = con.prepareStatement(sql);        // 3, 4번은 무조건 한 세트임.     sql구문 작성했으면 무조건 pstmt작성 해줘야 함.
					
					
					// ???
					mb.setName(rs.getString("name"));
					mb.setAge(rs.getInt("age"));
					mb.setGender(rs.getString("gender"));
					mb.setEmail(rs.getString("email"));
					mb.setId(rs.getString("id"));
					
					
					// 4. sql실행
					//pstmt.executeUpdate(); 
					
					result = 1;
					System.out.println("DAO : 정보 수정 완료!");
					
				}else{
					// 회원, 비밀번호 오류
					result = 0;
				}
				
			}else{
				// 비회원
				result = -1;
			}
			System.out.println(" DAO : 디비동작 처리 끝(수정처리)("+result+")");

		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return result; // 0은 임시로 걍 만들어 놓은 거임.
	}
	
	
	public int deleteMember(String id, String pw){
		int result = -1; 
		
		
		try{
			con = getCon();
			
			sql = "select pw from itwill_member where id = ?";
			
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(pw.equals(rs.getString("pw"))){
					
					sql = "delete from itwill_member where id = ? and pw = ?";
					pstmt =con.prepareStatement(sql);
					
					pstmt.setString(1, id);
					pstmt.setString(2, pw);
					
					result = pstmt.executeUpdate();
					System.out.println("DAO : 회원삭제완료! ");
					// result = 1
				}else{ // 비밀번호 오류
					result = 0;
				}
				
			} else{
				// 비회원
				result = -1;
			}
			
			System.out.println(" DAO : 삭제 정보("+result+")");
			
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			closeDB();
		}
		return result;
		
	}
	
	public ArrayList<MemberBean> getMemberList(){
		
		ArrayList<MemberBean> memberList = new ArrayList<MemberBean>();
		
		try{
			con = getCon();
			
			sql = "select* from itwill_member";
			
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				MemberBean mb = new MemberBean();
				
				mb.setAge(rs.getInt("age"));
				mb.setEmail(rs.getString("email"));
				mb.setGender(rs.getString("gender"));
				mb.setId(rs.getString("id"));
				mb.setName(rs.getString("name"));
				mb.setPw(rs.getString("pw"));
				mb.setRegdate(rs.getTimestamp("regdate"));
				
				memberList.add(mb);
							
			}
			System.out.println(" DAO : 회원 목록 조회 성공 ");
			System.out.println(" DAO : " +memberList.size()+ "");
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return memberList;
	}
	
	
	
	
	
	} // class MemberDAO

