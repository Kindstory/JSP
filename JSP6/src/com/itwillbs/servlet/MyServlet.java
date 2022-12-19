package com.itwillbs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8088/JSP6/myservlet

public class MyServlet extends HttpServlet {
	
	// 카운트 정보 
	private int cnt;
	
	// alt shift s + v

	@Override
	public void init() throws ServletException {
		// 최초의 서블릿이 생성될때만 실행
		System.out.println(" 서블릿 초기화 메서드 - 초기화 완료! ");
		
		cnt = 0;
		System.out.println(" 카운트 0 초기화");
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(" GET 방식 호출 발생! - doGET() 실행 ");
		
		
		
		//response.getWriter().append("<h2> cnt : "+cnt+"</h2>");
		
//		response.setContentType("text/html; charset=UTF-8");
		// => 응답하는 정보의 타입이 html 형태로 해석해라
		//response.getWriter().append("<h2> cnt : "+cnt+"</h2>");
		
//		PrintWriter myOut = response.getWriter();
//		
//		myOut.println("<html>");
//		myOut.println("<head>");
//		myOut.println("</head>");
//		myOut.println("<body>");
//		myOut.println("<h1> 안녕하세요 </h1>");
//		myOut.println("<h1> cnt : "+cnt+" </h1>");
//		myOut.println("</body>");
//		myOut.println("</html>");
//		
//		myOut.close();
		
		cnt++;
		System.out.println(" cnt : "+cnt);
		
		//testServlet.jsp 페이지로 이동
		// jsp 방식 - sendRedirect()
		//response.sendRedirect("servlet/testServlet.jsp");
		request.setAttribute("cnt", cnt);
		
		// forward방식 페이지 (액션태그 사용 forward X)
		RequestDispatcher dis 
			= request.getRequestDispatcher("servlet/testServlet.jsp");
//		             = request.getRequestDispatcher("servlet/testServlet.jsp?cnt="+cnt);
		dis.forward(request, response);
		

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(" POST 방식 호출 발생! - doPOST() 실행 ");

	}

	@Override
	public void destroy() {
		// 서블릿 소멸시 호출
		System.out.println(" 서블릿 소멸! ");
	}

}
