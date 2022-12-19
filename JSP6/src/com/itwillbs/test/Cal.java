package com.itwillbs.test;

public class Cal { // Student클래스의 변수를  static으로 설정해서 바로 받아야지 ㅇㅇ 
	
	
	public static void main(String[] args){
		Student.s_name = "Chris";
		Student.s_eng = 50;
		Student.s_kor = 90;
		Student.s_math = 100;
		
		Student.show2(95, 95, 60);
		
	
		Student.show2(new Student());
		
		
	}


}
