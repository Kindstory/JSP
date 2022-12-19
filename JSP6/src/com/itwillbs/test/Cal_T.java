package com.itwillbs.test;

public class Cal_T{
	// 계산기 객체
	
	public int sum(int kor,int eng,int math){
		return kor+eng+math;				
	}
	
	public int sum(Student s){
		return s.getKor()+s.getEng()+s.getMath();				
	}
	
	public void avg(int kor,int eng,int math){
		System.out.println(  sum(kor, eng, math)/3.0 );
	}
	public void avg(Student s){
		System.out.println( sum(s)/3.0 );
	}
	
	

}
