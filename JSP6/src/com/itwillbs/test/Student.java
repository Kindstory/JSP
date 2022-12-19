package com.itwillbs.test;

public class Student /* extends Object */{
	
    // 외부에서 직접 접근하지 못하게, 누가 내 통장에 돈을 직접 못빼가게 하는거, 최소한의 접근지정자(캡슐화)
	private String name;    
	private int kor;
	private int eng;
	private int math;
	public int sum;
	
	
	
	static String s_name;
	static int s_kor;
	static int s_eng;
	static int s_math;
	
	
	
	
//	public Student() { // 컴파일러가 오버로딩된 생성자가 없는 경우 디폴트 생성자를 만들어준다. 그래서 굳이 안쓰심 선생님은
						// 자바를 잘하려면 이런 디테일을 잘 기억해야함. 없어도 있는거 머 이런 것들
						// Student의 클래스는 이름,국,영,수를 한 번에 들고 다닐 수 있는 필통 그 이상도 그 이하도 아님
//		
//	}
	
	// alt shift s + r
	public String getName() {  // 통장에 돈을 빼는거 그래서 얘들은 public임 언제든지 얘들을 호출해서 써야하니까
		return name;
	}
	public void setName(String name) {  // 통장에 돈을 넣는거   getter setter얘들은 은행원인거임 쉽게 말하면.
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
	 // 부모의 메서드를 재정의 할떄 (상속의 상황에서만 오버라이딩 발생할 수 있음.) 
			  // String문자열을 리턴하고 있음. 이 객체의 모든 요소를 한 번에 출력하는 메서드임.
			  // 이 메서드가 없으면 싹 다 적어줘야함 student의 모든 객체를 근데 실전에서는 변수가 존나 많을꺼란 말이야
			  // 개 좋은 메서드지 ㅇㅇ
			 // 일반적으로 메서드를 만들떄 toString을 만들어주는걸 선생님은 추천함. 변수가 존재하는 걸 중간중간 확인할 수 있음.
	
	
@Override
	public String toString() {
		return "Student [name=" + name + ", kor=" + kor + ", eng=" + eng + ", math=" + math + ", sum=" + sum + "]";
	}

	//	
	public static void show2(int kor, int eng, int math){
		int sum = kor + eng + math;
		double avg = Math.ceil((kor + eng + math) / 3.0);  
		double avg1 = (kor + eng + math) / 3.0;
		System.out.println(sum + ", " + avg + ", " + avg1);
		
	}
	
	
	public static void show2(Student s){ // 클래스타입을 매개변수로 받아서 메서드 오버로딩하는거 좀 헷갈리네 ㅇㅇ
		s.math = 95;
		s.kor = 80;
		s.eng = 400;
		s.name = "Chris";
		int avg = (s.math + s.kor + s.eng) / 3 ;
		int sum = s.math + s.kor + s.eng;
		System.out.println("name은 : " + s.name + ", " + "합계는 : " + sum + ", " + "평균은 : " + avg);
		 
	}

//	public void avg1(){
//		this.kor = kor;
//		this.math = math;
//		this.eng = eng;
//		
//		System.out.println("평균은 : " + avg);		
//		System.out.println("합계는 : " + sum);  
//	}
////	
//	public void sum1(int kor, int math, int eng){
//		this.kor = kor;
//		this.math = math;
//		this.eng = eng;
//		
//		System.out.println("합계는 : " + sum);
//	}
//	
//	
	
	// 오버로딩의 등장한 배경 : 똑같은 이름의 메서드를 쓰고 싶으나 못데리고 옴 컴파일러가 같은걸로 의식해서
	// 부산에 사는 홍길동 서울사는 홍길동 그 조건이 머다 매개변수 서울 부산 이런식의 매개변수 타입을 바꿔주는 거임.
   
	
	
	
		//오버로딩해서 객체 받아서 처리

//		Student st = new Student();
//		
//		st.setEng(92);
//		st.setKor(88);
//		st.setMath(88);
//		st.setName("Chris");
//		st.toString();
//		
//		System.out.println(MainClass.show1("Ethan", 65, 95, 100));
//		
//		
//		Student s = new Student();
//		s.setName("Chris");
//		s.setKor(65);
		
	public static void main(String[] args){
		
		Student calculator = new Student();
		
		
		//calculator.avg1();
		//calculator.sum1();
		
		
		
		// 샘 코드도 받아서 비교 분석해봐야지 많은 코드를 봐야지
		// 메인에서 계산하는 로직을 안 쓴다.
		// 메서드에 계산 다 해서 논리 다 만들어 놔야됨
		// 메인에서는 단순히 호출만 함
		// 동작을 외부로 분리해서 사용해야 함.
		// 생성자로는 계산하거나 평균구하고 이런거 받는거 바람직하지 않다고 하긴하던데
		
	
	
	

	}
	
	
	
}
