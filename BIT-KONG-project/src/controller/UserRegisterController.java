package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import vo.RegisterVO;

public class UserRegisterController implements Controller{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		
		String path = "";
		MemberDAO dao = new MemberDAO();
		String m_id = request.getParameter("m_id");
		String m_name = request.getParameter("m_name");
		String m_phone = request.getParameter("m_phone_number");
		String m_password = request.getParameter("m_password");
		RegisterVO vo = new RegisterVO(m_id,m_name,m_phone,m_password,0);
		int n = dao.insertregist(vo);
		
		if(n > 0) {
			session.setAttribute("alert", "회원가입이 완료 되었습니다.");
			path = "/view/login.jsp";
		}else {
			session.setAttribute("alert", "오류 발생! 다시 시도 해주세요.");
			path = "/view/register.jsp";
		}
		return new MyView(path);
	}

}
