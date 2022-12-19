package com.itwillbs.test;

public class Student_T /*extends Object*/ {
	//학생의 정보를 저장(이름,국,영,수)
	
	private String name;
	private int kor;
	private int eng;
	private int math;
	
//	public Student() {
//		// TODO Auto-generated constructor stub
//	}
	
	// alt shift s + r
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	
	
	// alt shift s + s
	
	@Override
	public String toString() {
		return "Student [name=" + name + ", kor=" + kor + ", eng=" + eng + ", math=" + math + "]";
	}
	
	
	

}
