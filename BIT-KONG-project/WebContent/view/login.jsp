<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫페이지 로그인페이지</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-icons-1.8.3/fonts/bootstrap-icons.woff">
</head>
<body>
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
                        <div class="login">
                            <div class="logo">
                                <a href="#"><img src="<%=request.getContextPath() %>/resoures/image/logos.png" alt=""></a>
                            </div>
                            <div class="input-group">
                                <input type="email" placeholder="이메일 주소" class="input-email">
                                <i class="bi bi-envelope-fill"></i>
                                <input type="password" placeholder="비밀번호">
                                <i class="bi bi-key"></i>
                            </div>
                            <div class="form-btn">
                                <a href="./buying.jsp"id="login-btn">로그인</a>
                                <div class="line"></div>
                            </div>
                            <div class="find-btn">
                                <ul>
                                    <li><a href="#">아이디 찾기</a></li>
                                    <li><a href="#">비밀번호 찾기</a></li>
                                    <li><a href="./register.jsp">회원가입</a></li>
                                </ul>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>