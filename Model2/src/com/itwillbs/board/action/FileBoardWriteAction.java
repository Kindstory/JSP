package com.itwillbs.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileBoardWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : FileBoardWriteAction_execute() 호출 ");
		
		// 첨부파일 처리(업로드)
		//  upload 폴더 생성
		//  파일의 실제 위치(서버에 어디에 저장되는가?) 
		String realPath = request.getRealPath("/upload");
		System.out.println(" realPath : "+realPath);
		
		
		// 한글처리
		// 전달된 파라메터 저장
		
		
		
		
		
		return null;
	}
	
}
