package com.itwillbs.test;

public class JavaBean1 {  // Bean은 일반화시킨 Java객체. 
						  // Java Resource랑 WebContents랑 하나의 프로젝트라 연결되있어서 가져다 쓸 수 있음
	
	
	// p 245~
	/**
	 *  자바빈 설계 규약     그냥 클래스를 만드는 것과 별반 차이가 없다.
	 * 1. 특정 패키지에 포함되어야 한다.
	 * 2. 멤버변수의 접근지정자는 private
	 * 3. get/set메 메서드가 필요함(public)
	 * 4. 전달인자가 없는 생성자가 필요하다	=> 기본생성자가 필요하다.
	 * 5. 
	 */
	
	
	
	
	private String id;
	private String name;
	private String addr;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return id + ", " + name + ", " + addr;
	}
	
	

	

	
}
