<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_pay.css">
<jsp:include page="/view/template/header.jsp"></jsp:include>
    <div class="con">
        <div class="box1">
        	<div class="service">
        		<div class="money">
	        		<h2 class="title">가상화폐 충전</h2>
	        		<img src="<%=request.getContextPath() %>/resoures/image/충전2.png">
        		</div>
        		<ul>
        			<li class="emails">
        			<span>결제 하는 메일</span>
        			<div>
        				<span>이메일주소</span>
        			</div>
        			</li>
        			<li class="pays">
        			<span>충전 예정	</span>
        			<div class="paycontext">
        				<span>+1500만</span>
        			</div>
        			</li>
        		</ul>
        	</div>
        </div>
        <div class="box2">
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_noticce.js"></script>
</body>
</html>
