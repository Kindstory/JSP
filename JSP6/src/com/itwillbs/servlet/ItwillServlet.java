package com.itwillbs.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

public class ItwillServlet extends HttpServlet { // 상속 받았으니까 이제 클래스에서 servlet이 된거임 부모의 기능을 다 쓸수 있으니까 상속받아서

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자가 GET방식으로 호출할 때 실행되는 메서드
		// super.doGet(request, response); 필요없음
		response.getWriter().append("Chris");
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자가 POST방식으로 호출할 때 실행되는 메서드
		
		// super.doGet(request, response); 필요없음
	} 
	
	

}

// mapping을 통해서 web.xml파일과 .java파일의 연결고리가 생긴거임 
// mapping을 해야 java파일이 실행됨.

// 자바파일로 웹페이지를 구현한거임
// post방식은 안떳을꺼임 대부분의 웹페이지방식은 get방식임
// form 태그로 post로 안하면 대부분 get방식 임.

