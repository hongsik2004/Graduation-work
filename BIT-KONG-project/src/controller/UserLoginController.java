package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;

public class UserLoginController implements Controller{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String path = "";
		String m_id = request.getParameter("m_id");
		String m_password = request.getParameter("m_password");
		String m_name = request.getParameter("m_name");
		
		MemberDAO dao = new MemberDAO();
		if(dao.checkUser(m_id, m_password) == 1){
			session.setAttribute("m_id", m_id);
			session.setAttribute("alert", "로그인 성공!");
			path = "/index";
		}else if(dao.checkUser(m_id, m_password) == 0){	
			session.setAttribute("alert", "비밀번호가 틀렸습니다!!");
			path = "/view/login.jsp";
		}else{
			session.setAttribute("alert", "아이디가 틀렸습니다!!");
			path = "/view/login.jsp";
		}
		return new MyView(path);
	}

}
