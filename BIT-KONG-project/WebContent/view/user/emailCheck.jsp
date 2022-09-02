<%@page import="dao.MemberDAO"%>
<%@page import="util.MailUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
	String m_id = request.getParameter("m_id");
	MemberDAO dao = new MemberDAO();
// 위에서 작성한 java파일 객체 생성
MailUtil emailconfirm = new MailUtil();
String authNum=emailconfirm.connectEmail(m_id);
%>
<form method="post" action="#" name="emailcheck">
	<center>
	<table>
		<tr>
			<th colspan="2">인증번호를 입력하세요.</th>
		</tr>
		<tr>
			<td>
				<input type="text" name="emailconfirm">
			</td>
			<td>
				<input type="submit" value="확인" onclick="confirmemail(emailcheck.emailconfirm.value,<%=authNum%>)">
			</td>
		</tr>
	</table>
	</center>
</form>
<script src="<%=request.getContextPath() %>/resoures/javascript/emailcode.js"></script>