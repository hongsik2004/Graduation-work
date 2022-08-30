package controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.MyView;
import dao.BoardDAO;
import vo.RegisterVO;

public class BoardDeleteController implements Controller {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		BoardDAO dao = new BoardDAO();
		
		int b_id = Integer.parseInt(request.getParameter("b_id"));
//		본인 확인 필수 
		RegisterVO userVO = (RegisterVO)session.getAttribute("userVO");
		String m_id = userVO.getM_id();
		int n = dao.deleteboard(b_id,m_id);
		String path = "";
		if(n == 1){ // 삭제완료
			session.setAttribute("alert", "성공적으로 삭제 되었습니다.");
		}else{
			session.setAttribute("alert", "게시글이 존재하지 않거나, 게시글의 권한이 부족합니다.");
		}
		return new MyView("/board");
	}

}
