package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.MyView;
import dao.MemberDAO;
import vo.RegisterVO;

public class UserLoginRsController implements Controller {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String path = "";
		String m_id = request.getParameter("m_id");
		String m_password = request.getParameter("m_password");
		
		MemberDAO dao = new MemberDAO();
		RegisterVO vo = dao.getUserData(m_id, m_password);
		
		if(vo != null){
			session.setAttribute("userVO", vo);
			session.setAttribute("alert", "�α��� ����!");
			path = "/index";
		}else{	
			session.setAttribute("alert", "���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�!!");
			path = "/user/login";
		}
		return new MyView(path);
	}

}
