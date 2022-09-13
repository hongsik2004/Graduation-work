<%@page import="dao.MemberDAO"%>
<%@page import="util.MailUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/register.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-icons-1.8.3/fonts/bootstrap-icons.woff">
</head>
<body>
<%
	String m_id = request.getParameter("m_id");
	MemberDAO dao = new MemberDAO();
	// 위에서 작성한 java파일 객체 생성
	MailUtil emailconfirm = new MailUtil();
	String authNum=emailconfirm.connectEmail(m_id);
%>
    <div class="main">
        <div class="main-menu">
            <div class="main-left">
                <div class="text-bar">
                    <h1>가상 신뢰받는 양디고 비공식 <br>
                        디지털 자산 거래소</h1>
                    <span>안전하고 신속하고 편리한 거래환경을 제공합니다.</span>
                </div>
            </div>
            <div class="main-right">
                <div class="login-menu">
                        <form class="login" action="<%=request.getContextPath() %>/user/register_rs" name="frm" onsubmit="return check();" method="post">
                            <div class="logo">
                                <a href="#"><img src="<%=request.getContextPath() %>/resoures/image/logos.png" alt=""></a>
                            </div>
                            <div class="email-input">
                                <i class="bi bi-envelope-fill"></i>
                                <input type="text" placeholder="이메일 주소" class="input-email" name="m_id" id="m_id">
    	                        <button type="button" class="overlap" name="confirm_id" onclick="buttons(this.form)">중복확인</button>
        	                    <input type="hidden" name="chk" value="0">
                            </div>
                            <div class="email-button">
                            	<input type="text" name="emailconfirm" placeholder="인증번호를 입력하세요.">
		 						<button type="button" class="overlap" id="emailok" name="emailconfirm_btn" onclick="emailcheck(this.form)" disabled="disabled">인증번호 보내기</button>
		  	   				</div>
                            <div class="pwd-input">
                                <input type="password" placeholder="비밀번호" name="m_password" class="pw" id="password_1">
                                <i class="bi bi-key"></i>
                                <div class="checkpwd"><font id="checkPws" size="2"></font></div>
								<div class="valid-feedback"></div>
                            </div>
                            <div class="pwds-input">
                                <input type="password" placeholder="비밀번호 확인" name="m_password2" class="pw" id="password_2">
                                <i class="bi bi-key"></i>
                                <div class="checkps"><font id="checkPw" size="2"></font></div>
                            </div>
                            <div class="name-input">
                                <input type="text" placeholder="이름" name="m_name">
                                <i class="bi bi-person-fill"></i>
                            </div>
                            <div class="call-input">
                            	
                                <input type="text" maxlength="11" name="m_phone_number" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="전화번호">
                                <i class="bi bi-telephone-fill"></i>
                            </div>
                            <div class="form-btn">
                                <button type="submit" id="registerbtn">회원가입</button>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/emailcode.js"></script>
    	<script type="text/javascript">
    	let id_check = false;
   	/* function confirmemail(authNum){
   		let emailconfirm = document.getElementById("emailconfirm").value;
    	    // 입력한 값이 없거나, 인증코드가 일지하지 않을 경우
    	if(!emailconfirm || emailconfirm != authNum){
    		alert("값이 비었거나 인증코드가 일치 하지 않습니다.");
    		emailconfirm="";
    		self.close();
    	    // 인증코드가 일치하는 경우
    	}else if(emailconfirm==authNum){
    		alert("인증성공!");
    		emailconfirm=1;
    		self.close();
//    		opener.document.frm.emailconfirm=1;
    	}
    } */
	function check() {
		if(!document.frm.m_id.value.trim()){
			alert("이메일이 입력되지 않았습니다!");
			document.frm.m_id.focus();	
			return false;
		}
		if(!document.frm.m_password.value.trim()){
			alert("비밀번호가 입력되지 않았습니다!");
			document.frm.m_password.focus();
			return false;
		}
		if(!document.frm.m_password2.value.trim()){
			alert("비밀번호 확인이 입력되지 않았습니다!");
			document.frm.m_password2.focus();
			return false;
		}
		if(!document.frm.m_name.value.trim()){
			alert("이름이 입력되지 않았습니다!");
			document.frm.m_name.focus();
			return false;
		}
		if(!document.frm.m_phone_number.value.trim()){
			alert("전화번호가 입력되지 않았습니다!");
			document.frm.m_phone_number.focus();
			return false;
		}
		if(document.frm.m_password.value != document.frm.m_password2.value){
			alert("비밀번호가 일치하지 않습니다.");
			document.frm.m_password2.focus();
			return false;
		}
		if(document.frm.chk.value == false){
			alert("중복체크를 해주세요.");
			return false;
		}
		return true;
	}
	$(".pw").keyup(function(){
		let pass1 = document.getElementById("password_1").value;
		let pass2 = document.getElementById("password_2").value;
		
		if(pass1 != "" || pass2 != ""){
				if(pass1 == pass2){
				$("#checkPw").html('비밀번호가 일치합니다.');
				$("#checkPw").attr('color','#2fb380');
			} else {
				$("#checkPw").html('비밀번호가 일치하지 않습니다');
				$("#checkPw").attr('color','#dc3545');
			}
		}
	})
	function buttons() {
		if(document.frm.m_id.value == ""){
			alert("ID를 입력하세요");
			document.frm.m_id.focus();
			return;
		}
		$.ajax(
	    		{
	    			type:"POST",
	    			url:"/ajax/checkId",
	    			data:{id:document.frm.m_id.value},
	    			dataType:"json",
	    			success :  res => {
						if(res.same == "true") alert("아이디가 이미 사용중입니다.")
						else{
							alert("아이디가 사용가능합니다.");
							id_check = true;
							document.frm.emailok.disabled=false;
						}
	    			},error: log =>{console.log("실패"+log)}
	    		}		
	    	)
		/*url = "/view/user/confirm_Id.jsp?m_id=" + document.frm.m_id.value;
		open(url, "confirm",
				"toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");
		*/
	}
	/* function emailcheck(m_id){//indexOf는 찾는 문자열이 없으면 -1을 반환함.
		if(!frm.m_id.value){ 
			alert("아이디를 입력해주세요.");
			frm.m_id.focus();
			return;
		}else{
			if(frm.m_id.value.indexOf("@")==-1){
				alert("@가 비어져있습니다.");
				frm.m_id.focus();
				return false;
			}
		}
	} */
	function emailcheck() {
		$.ajax({
			type : "POST",
			url : "/ajax/emailCheck",
			data : {}
		})
	}
	</script>