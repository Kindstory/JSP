package com.itwillbs.member;

import java.sql.Timestamp;

public class MemberBean {  
	// MemberDTO (Data Transfer Object)  
	// 정보 저장 객체 (DB에 있는걸 이동시키니까 저장 하는거지)
	
	
	// 자바빈의 궁극적인 목표는DB에 객체를 전달하는거임
	// 자바빈은 DB에 데이터를 전달하기 위해 만들어졌다고 해도 과언이 아님.
	// member 정보 (DB - 테이블)를 저장 객체
	// 테이블을 잘 만들어야 코드도 잘 나옴. 테이블 잘 짜는거 연습해야함
	
	// ~bean이라는 객체가 보이면 그건 ~의 객체를 저장하기 위한 코드다.
	// MemberDTO라는 코드 많이 보일꺼임 -> Memberbean이랑 같은 개념임. 
	// bean의 역할을 데이터를 보내기 위한 객체에 불과함.
	// (Data Transfer Object)
	
	// Lombok이라는 library는 이 모든과정을 엄청 쉽게 해줌.
	
	// project Explorer에서 클래스이름 누르고 F4 누르면 클래스 변수 목록 다 뜸
	
	
	private String id;
	private String pw;
	private String name;
	private int age;
	private String gender;
	private String email;
	private Timestamp regdate;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pw=" + pw + ", name=" + name + ", age=" + age + ", gender=" + gender
				+ ", email=" + email + ", regdate=" + regdate + "]";
	}
	
	
	
	
    
	
	
	
	

}
