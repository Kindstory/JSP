package com.itwillbs.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/test3") : web.xml 에서의 매핑

@WebServlet("/test3")
public class TestServlet3 extends HttpServlet {

	// http://localhost:8088/JSP6/test3
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGET() 호출!!");
		
		// request 영역에 number ->100값을 Arrays.jsp에 출력
		request.setAttribute("number", 100);
		
		// request 영역에 배열정보를 전달
		String[] menu = {"밀면","햄버거","피자","한식","초밥","도시락"};
		request.setAttribute("menu", menu);
		
		
		ArrayList<String> movies = new ArrayList<String>();
		
		movies.add("어벤져스");
		movies.add("토르");
		movies.add("아이언맨");
		movies.add("헐크");
		
		request.setAttribute("movies", movies);
		
		
		RequestDispatcher dis =
				request.getRequestDispatcher("servlet/Arrays.jsp");
		dis.forward(request, response);
	
	}

}
