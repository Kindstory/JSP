package com.itwillbs.test;

//p245~
/**
 *  자바빈 설계 규약
 * 1. 특정 패키지에 포함되어야한다
 * 2. 멤버변수의 접근지정자는 private 
 * 3. get/set 메서드가 필요함 (public)
 * 4. 전달인자가 없는 생성자가 필요하다 => 기본생성자가 필요하다 
 * 
 */



public class JavaBean1_T {
	
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
		return "JavaBean1 [id=" + id + ", name=" + name + ", addr=" + addr + "]";
	}
	
	
}
