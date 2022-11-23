<%@page import="vo.RegisterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_pay.css">
<%
	RegisterVO userVO = (RegisterVO)session.getAttribute("userVO");
%>
<jsp:include page="/view/template/header.jsp"></jsp:include>
        <div class="con">
        <div class="box1">
        	<div class="service">
        		<div class="money">
	        		<h2 class="title">가상화폐 충전하기</h2>
	        		<img src="<%=request.getContextPath() %>/resoures/image/충전2.png">
        		</div>
        		<ul>
        			<li class="emails">
        			<span>결제 하는 메일</span>
        			<div>
        				<span class="email"><%=userVO.getM_id() %></span>
        			</div>
        			</li>
        			<li class="pays">
        			<span>충전 예정	</span>
        			<div>
        				<span class="moneys"></span><span class="name"></span>
        			</div>
        			</li>
        		</ul>
        	</div>
        </div>
        <div class="box2">
        	<div class="pay-header">
        		<a href="#"><span class="header">비트콩식 가상화폐 구매 창입니다.</span></a>
        	</div>
        	<div class="price-list">
        		<dl>
        			<dt>
        				<span>결제 금액</span>
        			</dt>
        		</dl>
        		<dd>
        			<ul>

        			</ul>
        		</dd>
        	</div>
	        <div class="payment">
               	원하시는 금액을 클릭해주세요.
        	</div>
        	<div class="donge">
        		<dl class="dls">
        			<dt>
        				<span>가상 돈 정책 동의 및 결제 전주의 사항</span>
        			</dt>
        		</dl>
        		<dd class="dds">
        			<div class="payok">
        				<span>결제 시 환불 불가능 하며 문의사항은 홈페이지 또는 고객센터를 확인 해주세요.</span>
        				<div class="dongehae">
        					<span>상품 가격 및 충전 금액을 확인하고, 개인 관련 고지 사항 과 비트콩식 정책 및 결제 진행에 동의 합니다.</span>
        					<button class="dongeham">동의</button>
        				</div>
        			</div>	
        		</dd>
        	</div>
        	<div class="pay-progress">
        	<button class="paying">결제하기</button>
        	</div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_pay.js"></script>
    <script>
    	$(".price-point").click(function(){
    		$(".price-point").removeClass("action");
    		$(".payment").addClass("action");
    		$(this).addClass("action");
    	});
    </script>
</body>
</html>
