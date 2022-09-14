package controller.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.MyView;
import dao.MemberDAO;
import util.MailUtil;

public class SendMailController implements Controller {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String email = request.getParameter("email");
		String num = request.getParameter("num");
		MailUtil Mu = new MailUtil();
		
		String subject="비트콩식 인증 번호"; // 보내는 제목 설정
		String content="인증번호 ["+num+"]"; // 이메일 내용 설정
		
		
		Mu.connectEmail(email,subject,content);
		boolean result = true;
		
		request.setAttribute("same", result);
		
		return new MyView("/view/ajax/ajax.jsp");
	}

}
