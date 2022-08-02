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
                        <form class="login" action="./login.jsp">
                            <div class="logo">
                                <a href="#"><img src="<%=request.getContextPath() %>/resoures/image/logos.png" alt=""></a>
                            </div>
                            <div class="email-input">
                                <input type="email" placeholder="이메일 주소" class="input-email">
                                <button type="button" class="overlap">중복확인</button>
                                <i class="bi bi-envelope-fill"></i>
                            </div>
                            <div class="pwd-input">
                                <input type="password" placeholder="비밀번호">
                                <i class="bi bi-key"></i>
                            </div>
                            <div class="pwds-input">
                                <input type="password" placeholder="비밀번호 확인">
                                <i class="bi bi-key"></i>
                            </div>
                            <div class="name-input">
                                <input type="text" placeholder="이름">
                                <i class="bi bi-person-fill"></i>
                            </div>
                            <div class="call-input">
                                <input type="tel" placeholder="전화번호">
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
    <script src="<%=request.getContextPath() %>/resoures/javascript/register.js"></script>