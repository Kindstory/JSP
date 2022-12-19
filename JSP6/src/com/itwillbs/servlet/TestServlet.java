package com.itwillbs.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/Itwill.com") //@(어노테이션 자체는 의미가 없지만 @WebServlet( ) 한줄이 6) web.xml(배포서술자)를 서블릿과 url을 매핑 이거임.)
							// 가상주소를 쓰겟다는 거임 , 그럼 실제주소는 .jsp  .java 이런 실제 파일의 위치임. 자바파일 실행하면 URL에 찍히는거 
							// Itwill.com이라는 실제 파일확장자는 없음. 가상주소니까
 							// 어노테이션 방법은 servlet 2.3 version이상에서만 쓸 수 있음.
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();  // 부모의 생성자 호출 (상속받았으니까) 생성자를 호출한다는거의 의미는 객체를 생성한다는 거임 / 생성자의 목적: 객체 초기화
        		  // 부모의 생성자 호출 -> 부모의 객체가 생김 / 상속이라는 관계의 전제조건 : 상속할 부모가 존재해야 함. 
        		  // TestServlet은 자식객체, 자식객체의 생성자가 호출되면 자식객체를 만듬. 근데 자식객체를 만들기 전에 부모껄 받아와야 함 그래야 상속할 수 있으니까
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ");//.append(request.getContextPath());
		response.getWriter().append("Chris").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
