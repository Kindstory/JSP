package com.itwillbs.test;

public class MainClass2_T {

	public static void main(String[] args) {
		
		Student kim = new Student();
		kim.setName("김학생");
		kim.setKor(88);
		kim.setEng(78);
		kim.setMath(93);
		
		
		Cal_T c = new Cal_T();
		System.out.println( c.sum(kim) );
		c.avg(kim);
		
		

	}

}
