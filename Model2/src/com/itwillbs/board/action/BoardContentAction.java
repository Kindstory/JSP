package com.itwillbs.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.board.db.BoardDAO;
import com.itwillbs.board.db.BoardDTO;

public class BoardContentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		System.out.println(" M : BoardContentAction_execute() 호출 ");
		
		// 전달된 정보 저장(bno,pageNum)
		// => 전달되는 파라메터값의 경우 
		//   테이블에 저장되는 값이면 형변환 O
		//   테이블에 저장안되는 값이면 형변환 X
		int bno = Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");
		
		// BoardDAO 객체 생성
		BoardDAO dao = new BoardDAO();
		
		// 조회수 1증가하기 - updateReadcount()
		dao.updateReadcount(bno);
		
		System.out.println(" M : 조회수 1증가 완료 !!! ");
		
		// 게시판 글 1개의 정보를 가져와서 출력
		BoardDTO dto = dao.getBoard(bno);
		
		// Model 객체 정보 출력 X
		//   view 에서 정보 출력O
		// => model 객체 있는 정보를 view 이동
		
		// request 영역에 저장
		request.setAttribute("dto", dto);
		//request.setAttribute("dto2", dao.getBoard(bno));
		request.setAttribute("pageNum", pageNum); //출력할때 사용
		
		// 출력 view 페이지로 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./board/boardContent.jsp");
		forward.setRedirect(false);		
		
		return forward;
	}
	
}
