package com.itwillbs.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.board.db.BoardDAO;
import com.itwillbs.board.db.BoardDTO;

public class BoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : BoardDeleteAction_execute() ");	
		
		// 전달된 데이터 저장 (bno,pass,pageNum)
		int bno = Integer.parseInt(request.getParameter("bno"));
		String pass = request.getParameter("pass");
		String pageNum = request.getParameter("pageNum");

		BoardDTO dto = new BoardDTO();
		dto.setBno(bno);
		dto.setPass(pass);
		
		// BoardDAO 객체 
		BoardDAO dao = new BoardDAO();
		
		// 게시글 삭제
		int result = dao.deleteBoard(dto);
		
		// 삭제 결과 (-1, 0,1)
		// 페이지 이동	(컨트롤러 이동x, js 사용)
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result == -1){
			out.println("<script>");
			out.println(" alert('게시판 글 없음!'); ");
			out.println(" history.back(); ");
			out.println("</script>");
			out.close();
			
			return null;
		}else if(result == 0){
			out.println("<script>");
			out.println(" alert('비밀번호 오류!'); ");
			out.println(" history.back(); ");
			out.println("</script>");
			out.close();
			
			return null;
		}else{ // result == 1
			out.println("<script>");
			out.println(" alert('삭제 완료!!'); ");
			out.println(" location.href='./BoardList.bo?pageNum="+pageNum+"'; ");
			out.println("</script>");
			out.close();
			
			return null;
		}
		
	}//execute
	
}
