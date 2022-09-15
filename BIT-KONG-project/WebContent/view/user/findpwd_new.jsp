<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 찾기</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/findpwd_new.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-icons-1.8.3/fonts/bootstrap-icons.woff">
</head>
<body>
	<script>   
    <%
      if(session.getAttribute("alert") != null) {
           String data = (String)session.getAttribute("alert");
        %>
           alert('<%= data %>');
      <%
         session.removeAttribute("alert");
      }
   	%>
    </script>
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
                        <form class="login" action="<%=request.getContextPath() %>/view/user/findpwdok.jsp" method="post" name="fom" onsubmit="return findpwdbts();">
                        <input type="hidden" name="m_id"value="<%=request.getParameter("m_id")%>">
                            <div class="logo">
                                <a href="#"><img src="<%=request.getContextPath() %>/resoures/image/logos.png" alt=""></a>
                            </div>
                            <div class="pwd-input">
                                <input type="password" placeholder="새비밀번호" name="m_password" class="pw" id="password_1">
                                <i class="bi bi-key"></i>
                                <div class="checkpwd"><font id="checkPws" size="2"></font></div>
								<div class="valid-feedback"></div>
                            </div>
                            <div class="pwds-input">
                                <input type="password" placeholder="새비밀번호 확인" name="m_password2" class="pw" id="password_2">
                                <i class="bi bi-key"></i>
                                <div class="checkps"><font id="checkPw" size="2"></font></div>
                            </div>
                            <div class="form-btn">
                                <button type="submit" id="login-btn">확인</button>
                                <div class="line"></div>
                            </div>
                            <div class="find-btn">
                                <ul>
                                    <li><a href="<%=request.getContextPath()%>/user/findpwd">돌아가기</a></li>
                                </ul>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    function findpwdbts() {
		if(!document.fom.m_password.value.trim()){
			alert("비밀번호가 입력되지 않았습니다!");
			document.fom.m_password.focus();
			return false;
		}
		if(!document.fom.m_password2.value.trim()){
			alert("비밀번호 확인이 입력되지 않았습니다!");
			document.fom.m_password2.focus();
			return false;
		}
		if(document.frm.m_password.value != document.frm.m_password2.value){
			alert("비밀번호가 일치하지 않습니다.");
			document.frm.m_password2.focus();
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
    </script>
</body>
</html>