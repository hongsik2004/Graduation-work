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
		System.out.println(email+" "+num +"(SendMailController)");
		MailUtil Mu = new MailUtil();
		Mu.connectEmail(email,num);
		System.out.println("메일 발송 (SendMailController)");
		return null;
	}

}
