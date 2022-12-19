package com.itwillbs.test;

public class MainClass {
	
	double show(int kor, double eng, double math){
		double sum = kor + eng + math;
		double avg = sum/3;
		return sum + avg;
		
	}
	
	static double show1(String name, int kor, double eng, double math){
		double sum = kor + eng + math;
		double avg = sum/3;
		return sum + avg;  
		
							// return문은 return type만 작성할수 있어서 글까지 같이 출력하려하니까 안되네 ㅋㅋ
							// 이럴떈 걍 void로 받아서 글까지 같이 깔끔하게 보이게 작성하는게 좋을 듯
	}
	
	
	
	
//	public static void main(String[] args){
//		
		// 학생이름, 국, 영, 수       // main안에 만들었으니까 지역변수임. 
									 // main벗어나면 못쓰니까 메서드 호출할떄, 매개변수에 직접 넣어서 보냄

		// => 학생이름 총합, 평균 출력
		
		// => 위의 동작을 수행하는 매서드 show();
		// 메서드는 클래스 안에서만 만들수 있음. 메인메서드에서 만들수 없음.
		
		
//	
//	}

	
}
