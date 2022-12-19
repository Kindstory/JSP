package com.itwillbs.test;

public class MainClass_T {
	
	public void show(String name,int kor,int eng, int math){
		System.out.println("이름 : "+ name);
		System.out.println("총점 : "+(kor+eng+math)+"점");
		System.out.println("평균 : "+(kor+eng+math)/3.0+"점");
	}
	
	public static void show2(String name,int kor,int eng, int math){
		System.out.println("이름 : "+ name);
		System.out.println("총점 : "+(kor+eng+math)+"점");
		System.out.println("평균 : "+(kor+eng+math)/3.0+"점");
	}
	
	public static void show2(Student s){
		System.out.println("이름 : "+ s.getName());
		System.out.println("총점 : "+(s.getKor()+s.getEng()+s.getMath())+"점");
		System.out.println("평균 : "+(s.getKor()+s.getEng()+s.getMath())/3.0+"점");
	}
	
	

	public static void main(String[] args) {
		
		//학생이름,국,영,수
		String name = "학생1";
		int kor = 95;
		int eng = 88;
		int math = 77;
		
		//=> 학생 점수의 총합, 평균 출력
		System.out.println("이름 : "+ name);
		System.out.println("총점 : "+(kor+eng+math)+"점");
		System.out.println("평균 : "+(kor+eng+math)/3.0+"점");
		
		//=> 위의 동작 동일하게 수행하는 메서드 show();
		MainClass_T mc = new MainClass_T();
		mc.show(name,kor,eng,math);
		
		MainClass_T.show2(name, kor, eng, math);
		
		Student s= new Student();
		s.setName("학생2");
		s.setKor(88);
		s.setEng(77);
		s.setMath(98);
		
		MainClass_T.show2(s);
		
		// Cal 객체 사용 - 총점,평균 계산하기
		
		Cal_T c  = new Cal_T();
		
		System.out.println( c.sum(s) );
		System.out.println( c.sum(100,25,68) );
		
		c.avg(s);
		
		

	} //main
	
	

}//class
